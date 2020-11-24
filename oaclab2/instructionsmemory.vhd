library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use STD.textio.all;


entity instructions_memory is
  port (
    ReadAddress: in STD_LOGIC_VECTOR (31 downto 0);
    Instruction, LastInstrAddress: out STD_LOGIC_VECTOR (31 downto 0)
  );
end instructions_memory;


architecture behavioral of instructions_memory is

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
    variable stopper : integer := 0;

  begin
    file_open(file_pointer, "UnicicloInst.mif", READ_MODE);
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
      stopper := stopper + 1;
    end loop;
    if i > 0 then
      LastInstrAddress <= std_logic_vector(to_unsigned((i-1)*4, LastInstrAddress'length));
    else
      LastInstrAddress <= "00000000000000000000000000000000";
    end if;

    file_close(file_pointer);
    wait;
  end process;

  Instruction <= data_mem(to_integer(unsigned(ReadAddress(31 downto 2))));

end behavioral;
