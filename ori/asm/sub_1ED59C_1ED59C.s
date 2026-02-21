PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, R3
LDR             R0, [R0,#0xC8]
MOV             R3, #1
CMP             R2, #0
BIC             R0, R0, #0x80
ORR             R0, R0, R6,LSL#7
STR             R0, [R5,#0xC8]
ADD             R0, R5, #0x158
STR             R3, [R5,#0x154]
STM             R0, {R1,R2}
MOVNE           R4, #0
MOVNE           R7, #8
BEQ             loc_1ED624
CMP             R6, #0
BEQ             loc_1ED600
ADD             R0, R5, R4,LSL#2
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
ADD             R1, R1, #0x2D4
ADD             R0, R0, #0x14000
VLDM            R1, {S0-S3}
ADD             R0, R0, #0x30C
VSTM            R0, {S0-S3}
ADD             R0, R5, R4,LSL#2
MOV             R2, R7
LDR             R0, [R0,#0xBC]
MOV             R1, #0xFF
ADD             R0, R0, #0x2C4
BL              sub_5996A0
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1ED5D8
LDR             R0, [R5]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E1DC
LDM             R0, {R1,R2}
MOV             R0, R5
POP             {R4-R8,LR}
BX              R12
