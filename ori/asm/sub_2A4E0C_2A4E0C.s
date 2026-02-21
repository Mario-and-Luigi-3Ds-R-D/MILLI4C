LDR             R1, [R0,#0x1D4]
CMP             R1, #0
BEQ             locret_2A4E5C
ADD             R3, R0, #0x24 ; '$'
LDR             R12, [R0,#0x2C]!
MOV             R1, #0
VLDM            R3, {S0-S1}
MOV             R2, #0x3F800000
LDR             R3, [R0,#0x1A8]
STR             R1, [R3,#0x80]
STR             R2, [R3,#0x7C]
STR             R1, [R3,#0x84]
VSTR            S0, [R3,#0x88]
STR             R1, [R3,#0x8C]
STR             R2, [R3,#0x90]
STR             R1, [R3,#0x94]
VSTR            S1, [R3,#0x98]
STR             R1, [R3,#0x9C]!
ADD             R3, R3, #4
STM             R3, {R1,R2,R12}
BX              LR
