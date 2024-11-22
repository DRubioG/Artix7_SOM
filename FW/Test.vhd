library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Test is
    generic(
        WIDTH : integer := 48
    );
    Port ( 
        clk : in std_logic;
        rst_n : in std_logic;
        out_bank_13 : out std_logic_vector(WIDTH-1 downto 0);
        out_bank_14 : out std_logic_vector(WIDTH-7 downto 0);
        out_bank_15 : out std_logic_vector(WIDTH-1 downto 0);
        out_bank_16 : out std_logic_vector(WIDTH-1 downto 0);
        out_bank_34 : out std_logic_vector(WIDTH-1 downto 0);
        out_bank_35 : out std_logic_vector(WIDTH-2 downto 0)
    );
end Test;

architecture Behavioral of Test is

signal cont : integer range 0 to 100000000;
signal incr_mux : std_logic;
signal mux_pointer : integer;
begin
TIMING : process(clk, rst_n)
    begin
        if rst_n = '0' then 
            cont <= 0;
            incr_mux <= '0';
        elsif rising_edge(clk) then
            if cont = 99999999 then
                cont <= 0;
                incr_mux <= '1';
            else 
                cont <= cont+1;
                incr_mux <= '0';
            end if;
        end if;
    end process;


MUX : process(clk, rst_n, incr_mux)
    begin
        if rst_n = '0' then
            mux_pointer <= 0;
        elsif rising_edge(clk) then
            if incr_mux = '1' then
                if mux_pointer = WIDTH-1 then
                    mux_pointer <= 0;
                else 
                    mux_pointer <= mux_pointer +1;
                end if;
            end if;
        end if;
    end process;


BANK_13 : process(clk, rst_n, mux_pointer)
    begin
        if rst_n = '0' then 
            out_bank_13 <= (others=>'0');
        elsif rising_edge(clk) then
            case mux_pointer is
                when 0 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 1 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 2 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 3 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 4 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 5 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 6 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 7 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 8 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 9 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 10 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 11 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 12 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 13 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 14 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 15 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 16 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 17 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 18 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 19 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 20 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 21 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 22 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 23 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 24 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 25 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 26 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 27 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 28 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 29 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 30 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 31 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 32 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 33 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 34 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 35 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 36 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 37 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 38 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 39 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 40 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 41 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 42 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 43 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 44 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 45 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 46 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when 47 => out_bank_13 <= (mux_pointer=>'1', others=>'0');
                when others => out_bank_13 <= (others=>'1');
            end case;
        end if;
    end process;


BANK_14 : process(clk, rst_n, mux_pointer)
    begin
        if rst_n = '0' then 
            out_bank_14 <= (others=>'0');
        elsif rising_edge(clk) then
            case mux_pointer is
                when 0 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 1 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 2 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 3 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 4 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 5 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 6 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 7 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 8 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 9 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 10 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 11 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 12 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 13 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 14 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 15 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 16 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 17 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 18 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 19 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 20 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 21 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 22 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 23 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 24 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 25 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 26 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 27 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 28 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 29 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 30 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 31 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 32 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 33 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 34 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 35 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 36 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 37 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 38 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 39 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when 40 => out_bank_14 <= (mux_pointer=>'1', others=>'0');
                when others => out_bank_14 <= (others=>'1');
            end case;
        end if;
    end process;
    
BANK_15 : process(clk, rst_n, mux_pointer)
    begin
        if rst_n = '0' then 
            out_bank_15 <= (others=>'0');
        elsif rising_edge(clk) then
            case mux_pointer is
                when 0 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 1 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 2 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 3 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 4 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 5 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 6 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 7 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 8 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 9 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 10 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 11 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 12 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 13 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 14 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 15 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 16 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 17 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 18 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 19 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 20 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 21 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 22 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 23 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 24 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 25 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 26 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 27 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 28 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 29 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 30 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 31 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 32 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 33 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 34 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 35 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 36 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 37 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 38 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 39 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 40 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 41 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 42 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 43 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 44 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 45 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 46 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when 47 => out_bank_15 <= (mux_pointer=>'1', others=>'0');
                when others => out_bank_15 <= (others=>'1');
            end case;
        end if;
    end process;
    
BANK_16 : process(clk, rst_n, mux_pointer)
    begin
        if rst_n = '0' then 
            out_bank_16 <= (others=>'0');
        elsif rising_edge(clk) then
            case mux_pointer is
                when 0 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 1 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 2 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 3 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 4 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 5 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 6 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 7 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 8 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 9 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 10 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 11 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 12 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 13 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 14 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 15 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 16 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 17 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 18 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 19 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 20 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 21 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 22 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 23 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 24 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 25 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 26 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 27 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 28 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 29 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 30 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 31 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 32 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 33 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 34 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 35 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 36 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 37 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 38 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 39 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 40 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 41 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 42 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 43 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 44 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 45 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 46 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when 47 => out_bank_16 <= (mux_pointer=>'1', others=>'0');
                when others => out_bank_16 <= (others=>'1');
            end case;
        end if;
    end process;
    
BANK_34 : process(clk, rst_n, mux_pointer)
    begin
        if rst_n = '0' then 
            out_bank_34 <= (others=>'0');
        elsif rising_edge(clk) then
            case mux_pointer is
                when 0 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 1 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 2 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 3 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 4 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 5 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 6 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 7 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 8 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 9 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 10 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 11 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 12 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 13 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 14 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 15 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 16 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 17 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 18 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 19 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 20 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 21 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 22 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 23 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 24 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 25 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 26 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 27 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 28 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 29 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 30 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 31 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 32 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 33 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 34 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 35 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 36 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 37 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 38 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 39 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 40 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 41 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 42 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 43 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 44 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 45 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 46 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when 47 => out_bank_34 <= (mux_pointer=>'1', others=>'0');
                when others => out_bank_34 <= (others=>'1');
            end case;
        end if;
    end process;

BANK_35 : process(clk, rst_n, mux_pointer)
    begin
        if rst_n = '0' then 
            out_bank_35 <= (others=>'0');
        elsif rising_edge(clk) then
            case mux_pointer is
                when 0 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 1 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 2 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 3 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 4 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 5 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 6 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 7 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 8 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 9 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 10 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 11 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 12 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 13 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 14 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 15 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 16 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 17 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 18 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 19 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 20 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 21 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 22 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 23 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 24 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 25 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 26 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 27 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 28 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 29 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 30 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 31 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 32 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 33 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 34 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 35 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 36 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 37 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 38 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 39 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 40 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 41 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 42 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 43 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 44 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 45 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when 46 => out_bank_35 <= (mux_pointer=>'1', others=>'0');
                when others => out_bank_35 <= (others=>'1');
            end case;
        end if;
    end process;

end Behavioral;
