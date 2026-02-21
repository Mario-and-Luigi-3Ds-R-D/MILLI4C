PUSH            {R4-R8,LR}
ADD             R0, R2, #0xC
MOV             R5, R1
LDM             R0, {R0,R3}
LDR             R1, [R2,#8]
LDR             R7, [R2,#0x14]
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
CMP             R3, #0
UXTH            R1, R1
MOVNE           R6, #1
LDR             R0, [R0]
MOVEQ           R6, #0
BL              sub_528FF0
CMP             R0, #0
BEQ             loc_204B8C
CMP             R4, #0xFF
BEQ             loc_204B70
LDR             R0, [R0,#0x204]
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#3
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVLE           R0, #0
MOVGT           R0, #1
B               loc_204B78
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, R6
BNE             loc_204B8C
LDR             R0, [R5,#4]
ADD             R0, R0, R7
STR             R0, [R5,#4]
MOV             R0, #0
POP             {R4-R8,PC}
