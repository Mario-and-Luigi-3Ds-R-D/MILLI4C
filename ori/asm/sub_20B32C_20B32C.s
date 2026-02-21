PUSH            {R4-R8,LR}
MOV             R4, R1
MOV             R5, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
SXTB            R6, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528EB0
LDR             R1, [R0]
LDR             R1, [R1,#0x4C]
BLX             R1
CMP             R0, #0
BEQ             loc_20B39C
ADD             R1, R6, R6,LSL#1
ADD             R0, R0, R1,LSL#3
LDRH            R0, [R0,#0xE2]
TST             R0, #1
BEQ             loc_20B39C
MOVS            R1, R4
ADDNE           R1, R4, #4
MOV             R2, R5
MOV             R0, R7
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
MOV             R0, #0
POP             {R4-R8,PC}
