VLDM            R1, {S0-S2}
MOV             R1, #0
VSTR            S0, [R0,#0x7C]
STR             R1, [R0,#0x80]
STR             R1, [R0,#0x84]
STR             R1, [R0,#0x88]
STR             R1, [R0,#0x8C]
VSTR            S1, [R0,#0x90]
STR             R1, [R0,#0x94]
STR             R1, [R0,#0x98]
STR             R1, [R0,#0x9C]
STR             R1, [R0,#0xA0]
VSTR            S2, [R0,#0xA4]
STR             R1, [R0,#0xA8]
BX              LR
