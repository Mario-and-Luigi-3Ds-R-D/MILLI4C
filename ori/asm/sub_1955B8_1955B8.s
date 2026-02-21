PUSH            {R3-R5,LR}
MOV             R4, R1
MOV             R1, #0
MOV             R3, R1
MOV             R2, #0xFF
STR             R1, [SP,#0x10+var_10]
BL              sub_1757C4
LDR             R2, =off_6B0558
ADD             R1, R2, #0x36C
STR             R1, [R0,#0xE0]
ADD             R3, R2, #0x384
STR             R2, [R0]
ADD             R1, R0, #0x800
STR             R3, [R0,#0x758]
STR             R4, [R0,#0x828]
LDRH            R2, [R1,#0x50]
BIC             R2, R2, #0xF
STRH            R2, [R1,#0x50]
POP             {R3-R5,PC}
