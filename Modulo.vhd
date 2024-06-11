LIBRARY IEEE;
USE IEE.STD_LOGIC_1164.ALL;
ENTITY Modulo is
    Port (
            clk   : IN  STD_LOGIC;
            reset   : IN STD_LOGIC;
            contagem   : OUT STD_LOGIC_VECTOR (2 DOWNTO 0) );
END Modulo;
ARCHITECTURE Behavioral OF Modulo IS
    SIGNAL Q0, Q1, Q2 : STD_LOGIC := '0';
    SIGNAL J0, K0, J1, K1, J2, K2 : STD_LOGIC;
BEGIN
        J2 <= NOT Q0;
        K2 <= (NOT Q1 AND NOT Q0) OR Q1;
        J1 <= Q2 AND NOT Q0;
        K1 <= Q0;
        J0 <= (NOT Q2 AND NOT Q1) OR (Q2 AND Q1);
        K0 <= NOT Q1 OR (Q2 AND Q1);

    process (clk, reset)

    BEGIN

        IF reset = '1' THEN
            Q0 <= '0';
        ELSIF falling_edge(clk) THEN
        IF J0 = '1' AND K0 = '0' THEN
            Q0 <= '1';

    process (clk, reset)

    BEGIN
        IF reset = '1' THEN
            Q2 <= '0';
        ELSIF falling_edge(clk) THEN
        IF J2 = '1' AND K2 = '0' THEN
            Q2 <= '1';
        ELSIF J2 = '0' AND K2 = '1' THEN
            Q2 <= '0';
        ELSIF J2 = '1' AND K2 = '1' THEN
            Q2 <= NOT Q2;
            END IF;
        END IF;

    END process;

    contagem <= Q2 & Q1 & Q0;
END Behavioral;
