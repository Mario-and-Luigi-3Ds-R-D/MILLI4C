PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R2,#8]
MOV             R5, R1
MOV             R4, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
LDRH            R1, [R4]
CMP             R1, #0xDE
ADDEQ           R0, R0, #0x32C
ADDNE           R0, R0, #0x364
ADD             R0, R0, #0x28 ; '('
MOV             R1, R6
VLDM            R0, {S0-S1}
LDRH            R0, [R4,#2]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDRCC          S0, =1.0
VLDRCS          S0, =0.0
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
