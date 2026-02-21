PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R2
LDR             R1, [R2,#8]!
MOV             R7, R0
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R4, R0, #0xFF
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528FF0
CMP             R4, #0xFF
BEQ             loc_2043F0
LDR             R0, [R0,#0x204]
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#3
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_204404
CMP             R5, #0
ADDNE           R1, R5, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R7
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_2043D0
MOV             R0, #0
POP             {R4-R8,PC}
