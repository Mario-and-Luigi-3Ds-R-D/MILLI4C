PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =unk_6EA364
BL              sub_140B18
LDR             R2, =dword_6D2418
LDRB            R1, [R4,#0x4E]
LDR             R0, [R2]
CMP             R1, #0
BEQ             loc_128098
LDR             R3, =0xF02C0
MOV             R12, #0x80000007
STR             R12, [R0],#4
LDR             R12, =0x7F02C1
STR             R3, [R0],#4
LDR             R3, [R4,#0x14]
ADD             R1, R4, #8
ADD             LR, R1, #0x18
STM             R0!, {R3,R12}
ADD             R12, R1, #0x14
LDR             R3, [R4,#0x10]
STR             R3, [R0],#4
LDR             R3, [R4,#0xC]
STR             R3, [R0],#4
LDR             R3, [R4,#8]
STR             R3, [R0],#4
ADD             R3, R1, #0x10
LDR             R1, [R4,#0x24]
STR             R1, [R0]
LDR             R1, [LR]
STR             R1, [R0,#4]
LDR             R1, [R12]
STR             R1, [R0,#8]
LDR             R1, [R3]
STR             R1, [R0,#0xC]
MOV             R1, #0
STR             R1, [R0,#0x10]!
ADD             R0, R0, #4
STR             R0, [R2]
POP             {R4,PC}
