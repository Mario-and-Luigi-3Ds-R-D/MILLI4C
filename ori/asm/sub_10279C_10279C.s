PUSH            {R0-R4,LR}
MOVS            R4, R3
BL              sub_300F68
LDR             R1, =dword_6E12D8
LDR             R1, [R1,#(dword_6E12DC - 0x6E12D8)]
B               loc_1027B2
DCB 0xC0, 0x46
NOP
NOP
NOP
MOVS            R0, R4
ADD             SP, SP, #0x10
POP             {R4,PC}
