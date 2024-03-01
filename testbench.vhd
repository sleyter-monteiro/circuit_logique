library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- D�claration de l'entit�
entity logic_tb is
end entity logic_tb;

-- Architecture
architecture tb_arch of logic_tb is
    -- D�claration des signaux pour les entr�es et les sorties du composant sous test
    signal CLK : std_logic := '0';
    signal CLK2 : std_logic := '0';
    signal L : std_logic;

    -- D�claration du processus de stimulation
    process
    begin

        CLK <= '0';
        CLK2 <= '0';
        wait for 10 ns;
        
        CLK <= '1';
        CLK2 <= '0';
        wait for 10 ns;
        
        CLK <= '0';
        CLK2 <= '1';
        wait for 10 ns;

        CLK <= '1';
        CLK2 <= '1';
        wait for 10 ns;
        
        -- Arr�t de la simulation
        wait;
    end process;
    
    -- D�claration du processus de v�rification des sorties
    process
    begin
        -- Attente pour laisser le temps aux signaux de se stabiliser
        wait for 5 ns;
        
        -- Affichage des r�sultats
        report "L = " & to_string(L);
        
        wait;
    end process;

    -- Instanciation du composant sous test
    component logic
        Port ( 
            CLK : in STD_LOGIC;
            CLK2 : in STD_LOGIC;
            L : out STD_LOGIC
        );
    end component;
    
begin

    uut: logic port map (CLK => CLK, CLK2 => CLK2, L => L);
    
end architecture tb_arch;
