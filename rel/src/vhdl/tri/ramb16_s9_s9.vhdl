-- © IBM Corp. 2020
-- This softcore is licensed under and subject to the terms of the CC-BY 4.0
-- license (https://creativecommons.org/licenses/by/4.0/legalcode). 
-- Additional rights, including the right to physically implement a softcore 
-- that is compliant with the required sections of the Power ISA 
-- Specification, will be available at no cost via the OpenPOWER Foundation. 
-- This README will be updated with additional information when OpenPOWER's 
-- license is available.


library ieee;
use ieee.std_logic_1164.all;

library ibm; 
use ibm.std_ulogic_support.all;
use ibm.std_ulogic_function_support.all;

library UNISIM;
use UNISIM.vcomponents.all;

library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity RAMB16_S9_S9 is
	generic (
		INIT_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_08 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_09 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_0F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_10 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_11 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_12 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_13 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_14 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_15 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_16 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_17 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_18 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_19 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_1F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_20 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_21 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_22 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_23 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_24 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_25 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_26 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_27 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_28 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_29 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_2F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_30 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_31 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_32 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_33 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_34 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_35 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_36 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_37 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_38 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_39 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3A : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3B : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3C : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3D : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3E : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_3F : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_00 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_01 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_02 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_03 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_04 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_05 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_06 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INITP_07 : bit_vector := X"0000000000000000000000000000000000000000000000000000000000000000";
		INIT_A : bit_vector := X"000000000";
		INIT_B : bit_vector := X"000000000";
		SIM_COLLISION_CHECK : string := "ALL";   
		SRVAL_A : bit_vector := X"000000000";
		SRVAL_B : bit_vector := X"000000000";
		WRITE_MODE_A : string := "WRITE_FIRST";  
		WRITE_MODE_B : string := "WRITE_FIRST"   
	);
	port (
		DOA : out std_logic_vector(7 downto 0);
		DOB : out std_logic_vector(7 downto 0);
		DOPA : out std_logic_vector(0 downto 0);
		DOPB : out std_logic_vector(0 downto 0);
		ADDRA : in std_logic_vector(10 downto 0);
		ADDRB : in std_logic_vector(10 downto 0);
		CLKA : in std_ulogic;
		CLKB : in std_ulogic;
		DIA : in std_logic_vector(7 downto 0);
		DIB : in std_logic_vector(7 downto 0);
		DIPA : in std_logic_vector(0 downto 0);
		DIPB : in std_logic_vector(0 downto 0);
		ENA : in std_ulogic;
		ENB : in std_ulogic;
		SSRA : in std_ulogic;
		SSRB : in std_ulogic;
		WEA : in std_ulogic;
		WEB : in std_ulogic
	);
end RAMB16_S9_S9;

architecture RAMB16_S9_S9 of RAMB16_S9_S9 is

signal DINA, DINB     : std_logic_vector(8 downto 0);
signal DOUTA, DOUTB   : std_logic_vector(8 downto 0);
signal SSRA_t, SSRB_t : std_logic;
signal WEA_t, WEB_t   : std_logic_vector(0 downto 0);

begin

DINA   <= DIPA & DIA;
DOPA(0) <= DOUTA(8);
DOA    <= DOUTA(7 downto 0);

DINB   <= DIPB & DIB;
DOPB(0) <= DOUTB(8);
DOB    <= DOUTB(7 downto 0);

SSRA_t <= SSRA;
SSRB_t <= SSRB;
WEA_t(0)  <= WEA;
WEB_t(0)  <= WEB;




   
   BRAM_0 : BRAM_TDP_MACRO
   generic map (
      BRAM_SIZE => "18Kb", 
      DEVICE => "7SERIES", 
      DOA_REG => 0, 
      DOB_REG => 0, 
      INIT_A => INIT_A, 
      INIT_B => INIT_B, 
      INIT_FILE => "NONE",
      READ_WIDTH_A => 9,   
      READ_WIDTH_B => 9,   
      SIM_COLLISION_CHECK => "NONE",
      SRVAL_A => SRVAL_A,   
      SRVAL_B => SRVAL_A,   
      WRITE_MODE_A => WRITE_MODE_A, 
      WRITE_MODE_B => WRITE_MODE_B, 
      WRITE_WIDTH_A => 9, 
      WRITE_WIDTH_B => 9, 
      INIT_00 => INIT_00,
      INIT_01 => INIT_01,
      INIT_02 => INIT_02,
      INIT_03 => INIT_03,
      INIT_04 => INIT_04,
      INIT_05 => INIT_05,
      INIT_06 => INIT_06,
      INIT_07 => INIT_07,
      INIT_08 => INIT_08,
      INIT_09 => INIT_09,
      INIT_0A => INIT_0A,
      INIT_0B => INIT_0B,
      INIT_0C => INIT_0C,
      INIT_0D => INIT_0D,
      INIT_0E => INIT_0E,
      INIT_0F => INIT_0F,
      INIT_10 => INIT_10,
      INIT_11 => INIT_11,
      INIT_12 => INIT_12,
      INIT_13 => INIT_13,
      INIT_14 => INIT_14,
      INIT_15 => INIT_15,
      INIT_16 => INIT_16,
      INIT_17 => INIT_17,
      INIT_18 => INIT_18,
      INIT_19 => INIT_19,
      INIT_1A => INIT_1A,
      INIT_1B => INIT_1B,
      INIT_1C => INIT_1C,
      INIT_1D => INIT_1D,
      INIT_1E => INIT_1E,
      INIT_1F => INIT_1F,
      INIT_20 => INIT_20,
      INIT_21 => INIT_21,
      INIT_22 => INIT_22,
      INIT_23 => INIT_23,
      INIT_24 => INIT_24,
      INIT_25 => INIT_25,
      INIT_26 => INIT_26,
      INIT_27 => INIT_27,
      INIT_28 => INIT_28,
      INIT_29 => INIT_29,
      INIT_2A => INIT_2A,
      INIT_2B => INIT_2B,
      INIT_2C => INIT_2C,
      INIT_2D => INIT_2D,
      INIT_2E => INIT_2E,
      INIT_2F => INIT_2F,
      INIT_30 => INIT_30,
      INIT_31 => INIT_31,
      INIT_32 => INIT_32,
      INIT_33 => INIT_33,
      INIT_34 => INIT_34,
      INIT_35 => INIT_35,
      INIT_36 => INIT_36,
      INIT_37 => INIT_37,
      INIT_38 => INIT_38,
      INIT_39 => INIT_39,
      INIT_3A => INIT_3A,
      INIT_3B => INIT_3B,
      INIT_3C => INIT_3C,
      INIT_3D => INIT_3D,
      INIT_3E => INIT_3E,
      INIT_3F => INIT_3F,
      
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      
      INITP_00 => INITP_00,
      INITP_01 => INITP_01,
      INITP_02 => INITP_02,
      INITP_03 => INITP_03,
      INITP_04 => INITP_04,
      INITP_05 => INITP_05,
      INITP_06 => INITP_06,
      INITP_07 => INITP_07,
      
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
   )
   port map (
      DOA => DOUTA,     
      DOB => DOUTB,     
      ADDRA => ADDRA,   
      ADDRB => ADDRB,   
      CLKA => CLKA,     
      CLKB => CLKB,     
      DIA => DINA,      
      DIB => DINB,      
      ENA => ENA,       
      ENB => ENB,       
      REGCEA => '1',    
      REGCEB => '1',    
      RSTA => SSRA_t,   
      RSTB => SSRB_t,   
      WEA => WEA_t,     
      WEB => WEB_t      
   );
   


end RAMB16_S9_S9;