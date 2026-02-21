PUSH            {R4-R6,LR}
MOV             R6, R0
LDR             R0, [R2,#8]
MOV             R4, R1
MOV             R5, R2
UXTH            R1, R0
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
LDRH            R1, [R5]
MOV             R2, R5
CMP             R1, #0xDA
ADDEQ           R0, R0, #0x32C
ADDNE           R0, R0, #0x364
ADD             R0, R0, #0x28 ; '('
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCS           R0, #0
BCS             locret_20B534
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
