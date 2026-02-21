PUSH            {R4-R8,LR}
ADD             R6, R0, #0x20800
MOV             R7, R0
ADD             R0, R0, #0x20C00
ADD             R0, R0, #0x2E4
ADD             R6, R6, #0x2E4
LDRB            R0, [R0,#0x21]
CMP             R0, #0
BNE             loc_1DBE44
MOV             R4, R6
ADD             R5, R6, #0x420
MOV             R8, #0
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_1DBE30
BL              sub_533330
LDR             R0, [R4,#8]
CMP             R0, #0
STRNE           R8, [R0,#0x184]
STRNE           R8, [R4,#8]
STR             R8, [R4],#0x10
CMP             R4, R5
BNE             loc_1DBE10
MOV             R0, #1
STRB            R0, [R6,#0x421]
LDR             R2, =unk_656BCC
ADD             R0, R7, #0x20800
ADD             R0, R0, #0x2BC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
POP             {R4-R8,PC}
