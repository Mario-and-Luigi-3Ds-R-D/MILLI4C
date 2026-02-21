PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R5, #0
LDR             R4, =byte_6D2498
LDRSB           R6, [R4]
CMP             R6, #0
MOVNE           R7, #0
STRBNE          R5, [R4]
BEQ             loc_10831C
MOV             R0, #3
BL              sub_11A198
MOV             R0, R7
BL              sub_11B290
MOV             R1, #0
MOV             R0, R1
BL              sub_11B374
LDR             R1, [R4,#(off_6D24D0 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D2510 - 0x6D2498)]
BLXNE           R1
ADD             R3, SP, #0x28+var_24
ADD             R2, SP, #0x28+var_20
MOV             R1, #0
MOV             R0, #2
STR             R5, [SP,#0x28+var_28]
BL              sub_10F598
LDR             R0, [SP,#0x28+var_20]
LDR             R7, =dword_6D2450
CMP             R0, #0
LDRNE           R1, [SP,#0x28+var_24]
CMPNE           R0, R1
BNE             loc_108388
BL              sub_11B204
MOV             R1, #0
LDR             R2, [R7]
MOV             R0, R1
BL              sub_11ABC4
NOP
NOP
B               loc_1083A4
NOP
BL              sub_10F9DC
MOV             R2, #0
LDR             R0, [SP,#0x28+var_20]
LDR             R3, [R7]
MOV             R1, R2
BL              sub_10F61C
LDRD            R0, R1, [R4,#(dword_6D2528 - 0x6D2498)]
MOV             R3, #0
MOV             R2, R3
STRD            R0, R1, [SP,#0x28+var_20]
MOV             R1, R3
MOV             R0, R3
STR             R5, [SP,#0x28+var_28]
BL              sub_11AD40
CMP             R6, #0
NOP
BEQ             loc_1083E4
MOV             R0, #1
STRB            R0, [R4]
ADD             SP, SP, #0x14
POP             {R4-R7,LR}
B               sub_11B1B8
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
