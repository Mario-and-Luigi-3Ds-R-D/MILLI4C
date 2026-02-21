STR             R1, [R0,#0x198]
STR             R2, [R0,#0x19C]
MOV             R12, R1
VLDM            R3, {S0-S2}
ADD             R1, R0, #0x1A0
VSTM            R1, {S0-S2}
MOV             R1, R0
MOV             R0, R12
NOP
ADD             R0, R0, #0xA8
ADD             R1, R1, #0x188
B               sub_1CF9FC
