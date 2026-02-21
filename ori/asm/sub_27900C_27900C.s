PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R4, R0
MOV             R2, #1
MOV             R0, SP
BL              sub_14C614
LDR             R0, [R4,#0x100]
MOV             R3, #0
MOV             R2, SP
MOV             R1, #1
BL              sub_27FF14
LDR             R0, [R4,#0x118]
BL              sub_273E68
ADD             SP, SP, #0x10
POP             {R4,PC}
