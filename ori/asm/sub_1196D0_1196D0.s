PUSH            {R4,R5,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
BL              sub_10E9B4
LDR             R12, =0xF4240
MOV             R3, #0
UMULL           R2, R5, R0, R12
MLA             R1, R1, R12, R5
STR             R2, [SP,#0x20+var_20]
MLA             R1, R0, R3, R1
LDR             R2, =dword_6D2558
ADD             R3, SP, #0x20+var_18
STR             R1, [SP,#0x20+var_1C]
MOV             R1, SP
LDM             R2, {R0,R2}
STM             R3, {R0,R2}
ADD             R0, SP, #0x20+var_18
BL              sub_10E250
LDRD            R0, R1, [R0]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x14
POP             {R4,R5,PC}
