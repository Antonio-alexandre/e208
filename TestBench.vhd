LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY TestBench is
END TestBench;
ARCHITECTURE Behavior OF TestBench IS
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT TestBench
    PORT(
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        contagem : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT;

    --Inputs
    SIGNAL clk : STD_LOGIC := '0'
    SIGNAL reset : STD_LOGIC := '0';
    --Outputs
    SIGNAL contagem : STD_LOGIC_VECTOR(2 downto 0);

BEGIN
-- Instantiate the Unit Under Test (UUT)
    uut: TestBench PORT MAP (
        clk => clk,
        reset => reset,
        contagem => contagem
    );
    --

    -- Stimulus process
    stim_proc: process
    BEGIN
        reset <= '1';
        wait for 50 ns;
        reset <= '0';
        wait for 50 ns;
        
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
        clk <= '0';
        wait for 50 ns;

        wait;
    END PROCESS;
END;