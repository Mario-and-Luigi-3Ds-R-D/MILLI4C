PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R6, R1
MOV             R8, R2
MOV             R0, R3
LDR             R4, [SP,#0x38+arg_0]
MOV             R7, #0
SUB             R10, R4, #1
CMP             R10, #3
BHI             loc_13F780
CMP             R0, R4,LSL#3
BLS             loc_13F780
CMP             R4, #1
MOVEQ           R7, #1
STREQ           R2, [R1]
BLE             loc_13F780
MOV             R1, R4
BL              sub_2FEFCC
MOV             R9, R0
MOV             R0, #0
MOV             R5, #1
MOV             R11, SP
STR             R0, [SP,#0x38+var_38]
STR             R0, [SP,#0x38+var_34]
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_2C]
MOV             R2, #3
MOV             R1, #7
MOV             R0, R9
BL              sub_12477C
CMP             R0, #0
STR             R0, [R11,R5,LSL#2]
BEQ             loc_13F604
ADD             R5, R5, #1
CMP             R4, R5
BGT             loc_13F5CC
MOV             R5, #1
MOV             R7, R9,LSR#3
STR             R8, [SP,#0x38+var_38]
B               loc_13F630
MOV             R6, #1
MOV             R5, R6
LDR             R0, [R11,R5,LSL#2]
CMP             R0, #0
BLNE            sub_1361A4
CMP             R6, #0
ADD             R5, R5, #1
BNE             loc_13F780
CMP             R5, R4
BLT             loc_13F60C
B               loc_13F780
LDR             R0, [SP,#0x38+var_38]
LDR             R3, [R11,R5,LSL#2]
SUB             R2, R7, #1
ADD             R0, R0, R5,LSL#3
CMP             R2, #0
LDM             R0, {R8,R12}
ADD             R0, R0, R4,LSL#3
ADD             R1, R3, #8
STM             R3, {R8,R12}
BLE             loc_13F6A8
TST             R2, #1
BEQ             loc_13F674
LDM             R0, {R8,R12}
MOV             R3, R1
ADD             R1, R1, #8
ADD             R0, R0, R4,LSL#3
STM             R3, {R8,R12}
MOVS            R2, R2,ASR#1
BEQ             loc_13F6A8
VLDM            R0, {S0-S1}
MOV             R12, R1
ADD             R0, R0, R4,LSL#3
ADD             R3, R1, #8
VSTM            R12, {S0-S1}
SUBS            R2, R2, #1
LDM             R0, {R8,R12}
ADD             R1, R1, #0x10
ADD             R0, R0, R4,LSL#3
STM             R3, {R8,R12}
BNE             loc_13F67C
ADD             R5, R5, #1
CMP             R4, R5
BGT             loc_13F630
LDR             R0, [SP,#0x38+var_38]
MOV             R1, #0xFFFFFFFF
ADD             R1, R1, R9,LSR#3
MOV             R2, R0
ADD             R0, R0, R4,LSL#3
ADD             R3, R2, #8
LDM             R0, {R5,R12}
SUB             R2, R1, #1
CMP             R2, #0
ADD             R0, R0, R4,LSL#3
STM             R3, {R5,R12}
ADD             R1, R3, #8
BLE             loc_13F738
TST             R2, #1
BEQ             loc_13F704
LDM             R0, {R3,R5}
MOV             R12, R1
ADD             R1, R1, #8
ADD             R0, R0, R4,LSL#3
STM             R12, {R3,R5}
MOVS            R2, R2,ASR#1
BEQ             loc_13F738
LDM             R0, {R5,R7}
MOV             R12, R1
ADD             R0, R0, R4,LSL#3
ADD             R3, R1, #8
STM             R12, {R5,R7}
SUBS            R2, R2, #1
LDM             R0, {R5,R12}
ADD             R1, R1, #0x10
ADD             R0, R0, R4,LSL#3
STM             R3, {R5,R12}
BNE             loc_13F70C
LDR             R0, [SP,#0x38+var_38]
MOV             R1, R9
BL              sub_141454
LDR             R0, [SP,#0x38+var_38]
CMP             R10, #0
MOV             R7, #1
STR             R0, [R6]
MOVGT           R0, #0
SUBGT           R1, R4, #1
BLE             loc_13F780
ADD             R2, R11, R0,LSL#2
ADD             R3, R6, R0,LSL#2
LDR             R2, [R2,#4]
SUBS            R1, R1, #1
ADD             R0, R0, #1
STR             R2, [R3,#4]
BNE             loc_13F760
MOV             R7, R4
ADD             SP, SP, #0x14
MOV             R0, R7
POP             {R4-R11,PC}
