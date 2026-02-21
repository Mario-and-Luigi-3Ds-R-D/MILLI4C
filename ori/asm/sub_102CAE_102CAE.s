PUSH            {R0-R7,LR}
SUB             SP, SP, #0x1FC
SUB             SP, SP, #0x10
MOVS            R5, R2
MOVS            R2, #1
LDR             R1, [R0,#0x14]
LDR             R4, [SP,#0x230+arg_0]
ADD             R0, SP, #0x230+var_30
BL              sub_301784
LDR             R0, [SP,#0x230+var_20]
MOVS            R2, #1
SUBS            R5, R5, R0
LDR             R0, [SP,#0x230+var_18]
LSLS            R2, R2, #9
SUBS            R6, R4, R0
ADDS            R0, R5, R6
MOVS            R7, R0
ADDS            R1, R0, #2
CMP             R1, R2
BCC             loc_102CE2
ADDS            R0, R7, #2
BL              sub_301570
MOVS            R4, R0
B               loc_102CE4
MOV             R4, SP
LDR             R1, [SP,#0x230+var_20]
MOVS            R2, R5
MOVS            R0, R4
BLX             sub_2FF3D8
MOVS            R0, #0
STRB            R0, [R4,R5]
ADDS            R5, R4, R5
LDR             R1, [SP,#0x230+var_18]
ADDS            R0, R5, #1
MOVS            R2, R6
BLX             sub_2FF3D8
MOVS            R0, #0
ADDS            R1, R7, R4
STRB            R0, [R1,#1]
ADDS            R1, R5, #1
MOVS            R0, R4
BL              sub_101442
MOVS            R5, R0
MOV             R0, SP
CMP             R4, R0
BEQ             loc_102D1A
MOVS            R0, R4
BLX             sub_2FF5D4
CMP             R5, #0
BEQ             loc_102D2A
BLE             loc_102D24
MOVS            R4, #1
B               loc_102D2C
MOVS            R4, #0
MVNS            R4, R4
B               loc_102D2C
MOVS            R4, #0
ADD             R0, SP, #0x230+var_30
BL              sub_3017BC
ADD             SP, SP, #0x1FC
MOVS            R0, R4
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R7,PC}
