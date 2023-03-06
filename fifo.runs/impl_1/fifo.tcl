proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir {D:/MATERIALE AN 3 SEM 1/SSC/lab5/fifo/fifo.cache/wt} [current_project]
  set_property parent.project_path {D:/MATERIALE AN 3 SEM 1/SSC/lab5/fifo/fifo.xpr} [current_project]
  set_property ip_output_repo {{D:/MATERIALE AN 3 SEM 1/SSC/lab5/fifo/fifo.cache/ip}} [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  add_files -quiet {{D:/MATERIALE AN 3 SEM 1/SSC/lab5/fifo/fifo.runs/synth_1/fifo.dcp}}
  read_xdc {{D:/MATERIALE AN 3 SEM 1/SSC/const.xdc}}
  link_design -top fifo -part xc7k70tfbv676-1
  write_hwdef -file fifo.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force fifo_opt.dcp
  catch { report_drc -file fifo_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force fifo_placed.dcp
  catch { report_io -file fifo_io_placed.rpt }
  catch { report_utilization -file fifo_utilization_placed.rpt -pb fifo_utilization_placed.pb }
  catch { report_control_sets -verbose -file fifo_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force fifo_routed.dcp
  catch { report_drc -file fifo_drc_routed.rpt -pb fifo_drc_routed.pb -rpx fifo_drc_routed.rpx }
  catch { report_methodology -file fifo_methodology_drc_routed.rpt -rpx fifo_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file fifo_timing_summary_routed.rpt -rpx fifo_timing_summary_routed.rpx }
  catch { report_power -file fifo_power_routed.rpt -pb fifo_power_summary_routed.pb -rpx fifo_power_routed.rpx }
  catch { report_route_status -file fifo_route_status.rpt -pb fifo_route_status.pb }
  catch { report_clock_utilization -file fifo_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force fifo_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

