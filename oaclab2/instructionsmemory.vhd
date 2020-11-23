library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use STD.textio.all;


entity instruction_memory is
  port (
    read_address: in STD_LOGIC_VECTOR (31 downto 0);
    instruction, last_instr_address: out STD_LOGIC_VECTOR (31 downto 0)
  );
end instruction_memory;


architecture behavioral of instruction_memory is

  type mem_array is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
  signal data_mem: mem_array := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000"
  );

  begin
  process
    file file_pointer : text;
    variable line_content : string(1 to 32);
    variable line_num : line;
    variable i: integer := 0;
    variable j : integer := 0;
    variable char : character:='0';

  begin
    file_open(file_pointer, "instructions.txt", READ_MODE);
    while not endfile(file_pointer) loop
      readline(file_pointer, line_num);
      READ(line_num, line_content);
      for j in 1 to 32 loop
        char := line_content(j);
        if (char = '0') then
          data_mem(i)(32-j) <= '0';
        else
          data_mem(i)(32-j) <= '1';
        end if;
      end loop;
      i := i + 1;
    end loop;
    if i > 0 then
      last_instr_address <= std_logic_vector(to_unsigned((i-1)*4, last_instr_address'length));
    else
      last_instr_address <= "00000000000000000000000000000000";
    end if;

    file_close(file_pointer);
    wait;
  end process;

  instruction <= data_mem(to_integer(unsigned(read_address(31 downto 2))));

end behavioral;
