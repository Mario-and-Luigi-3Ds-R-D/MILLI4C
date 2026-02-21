PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0,#0xC8]
MOV             R12, #1
CMP             R2, #0
BIC             R0, R0, #0x80
ORR             R0, R0, R3,LSL#7
STR             R0, [R5,#0xC8]
ADD             R0, R5, #0x158
STR             R12, [R5,#0x154]
STM             R0, {R1,R2}
MOVNE           R4, #0
MOVNE           R6, #8
BEQ             loc_1ED578
ADD             R0, R5, R4,LSL#2
LDR             R1, [R0,#0xBC]
ADD             R2, R1, #0x13800
ADD             R2, R2, #0x2D4
ADD             R1, R1, #0x14000
VLDM            R2, {S0-S3}
ADD             R1, R1, #0x30C
MOV             R2, R6
VSTM            R1, {S0-S3}
MOV             R1, #0xFF
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x2C4
BL              sub_5996A0
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1ED538
LDR             R0, [R5]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E1D4
LDM             R0, {R1,R2}
MOV             R0, R5
POP             {R4-R6,LR}
BX              R12
