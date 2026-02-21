PUSH            {R4-R7,LR}
SUB             SP, SP, #0x14
MOV             R6, #0
LDR             R4, =byte_6D2498
LDRSB           R5, [R4]
CMP             R5, #0
MOVNE           R7, #0
STRBNE          R6, [R4]
BEQ             loc_10F41C
MOV             R0, #3
BL              sub_11A198
MOV             R0, R7
BL              sub_11B290
NOP
BL              sub_11A1A8
CMP             R0, #0
NOP
BNE             loc_10F440
BL              sub_11A178
CMP             R0, #0
NOP
BEQ             loc_10F4A8
MOV             R0, #0
BL              sub_11A668
NOP
NOP
BL              sub_11A0F8
CMP             R0, #0
NOP
BEQ             loc_10F470
BL              sub_11A0F8
CMP             R0, #2
NOP
BNE             loc_10F48C
MOV             R1, #0
MOV             R0, R1
BL              sub_11B374
LDR             R1, [R4,#(off_6D24D0 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D2510 - 0x6D2498)]
BLXNE           R1
NOP
BL              sub_11B204
LDR             R0, =dword_6D2450
MOV             R1, #0
LDR             R2, [R0]
MOV             R0, R1
BL              sub_11ABC4
LDRD            R0, R1, [R4,#(dword_6D2528 - 0x6D2498)]
MOV             R3, #0
MOV             R2, R3
STRD            R0, R1, [SP,#0x28+var_20]
MOV             R1, R3
MOV             R0, R3
STR             R6, [SP,#0x28+var_28]
BL              sub_11AD40
CMP             R5, #0
NOP
BEQ             loc_10F4E8
MOV             R0, #1
STRB            R0, [R4]
ADD             SP, SP, #0x14
POP             {R4-R7,LR}
B               sub_11B1B8
ADD             SP, SP, #0x14
POP             {R4-R7,PC}
