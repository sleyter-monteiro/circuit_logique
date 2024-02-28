-- Déclaration des bibliothèques utilisées
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Déclaration de l'entité du demi-additionneur (half-adder)
entity logic is
    Port ( CLK : in STD_LOGIC;
           CLK2 : in STD_LOGIC;
           L : out STD_LOGIC);
end logic;

-- Déclaration de l'architecture (Behavioral ??) 
architecture circuit of logic is
signal SXOR, SINVERSEUR, SNAND, SD: std_logic; 
begin
    SXOR <= CLK XOR SD;
    SINVERSEUR <= NOT SXOR;
    SNAND <= SINVERSEUR NAND SINVERSEUR;
    SD;
    
end circuit;

                                                           