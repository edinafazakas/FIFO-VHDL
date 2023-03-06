library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_misc.all; 
use IEEE.std_logic_unsigned.all; 

entity fifo is
  Port ( 
  data_in: in std_logic_vector(7 downto 0);
  clk: in std_logic;
  wr: in std_logic;
  rd: in std_logic;
  data_out: out std_logic_vector(7 downto 0)
  );
end fifo;

architecture Behavioral of fifo is
signal dout: std_logic_vector(7 downto 0) := "00000000";
signal rdptr, wrptr : std_logic_vector(2 downto 0):="000";
signal r1,r2,r3,r4,r5,r6,r7,r8,en : std_logic_vector(7 downto 0) := "00000000";

begin
process(clk)
  begin
   if (clk'event and clk = '1') then
         if(rd = '1') then
           rdptr <= rdptr + 1;
         end if;
                              
        if rdptr = "111" then
           rdptr <= "000";
        end if;
        
        if wrptr = "111" then
            wrptr <= "000";
        end if;
                      
        if(wr = '1') then
            wrptr <= wrptr + 1;
        end if;   
                 
            
       if (wr = '1') then      
        case wrptr is
          when "000" => dout <= "00000001";
          when "001" => dout <= "00000010";
          when "010" => dout <= "00000100";
          when "011" => dout <= "00001000";
          when "100" => dout <= "00010000";
          when "101" => dout <= "00100000";
          when "110" => dout <= "01000000";
          when "111" => dout <= "10000000";
          when others => dout <= "00000000";
        end case;
       end if;
        
        
         if (wr = '1') then   
          en(0) <= wr and dout(0);
          en(1) <= wr and dout(1);
          en(2) <= wr and dout(2);
          en(3) <= wr and dout(3);
          en(4) <= wr and dout(4);
          en(5) <= wr and dout(5);
          en(6) <= wr and dout(6);
          en(7) <= wr and dout(7);
         end if;
        
        if (wr = '1') then 
         if en(0) = '1' then
                     r1 <= data_in;
         elsif en(1) = '1' then
                     r2 <= data_in;
         elsif en(2) = '1' then
                     r3 <= data_in;
         elsif en(3) = '1' then
                     r4 <= data_in;
         elsif en(4) = '1' then
                     r5 <= data_in;
         elsif en(5) = '1' then
                     r6 <= data_in;
         elsif en(6) = '1' then
                     r7 <= data_in;
         elsif en(7) = '1' then
                    r8 <= data_in;       
         end if;
       end if;
                
        
       if rd = '1' then
         case rdptr is
           when "000"=> data_out <= r1;
           when "001"=> data_out <= r2;
           when "010"=> data_out <= r3;
           when "011"=> data_out <= r4;
           when "100"=> data_out <= r5;
           when "101"=> data_out <= r6;
           when "110"=> data_out <= r7;
           when "111"=> data_out <= r8;
           when others => data_out <= "00000000";
        end case;
       end if;
         
   end if;    
end process;
              
end Behavioral;









