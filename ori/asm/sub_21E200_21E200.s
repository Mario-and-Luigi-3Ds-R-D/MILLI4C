PUSH            {R3-R9,LR}
MOV             R4, #0
MOV             R6, R0
MOV             R8, R1
LDRB            R0, [R0,#0x110]
MOV             R7, R2
CMP             R0, #0
BLE             loc_21E280
ADD             R0, R6, R4,LSL#2
LDR             R5, [R0,#0x10]
CMP             R5, R7
BEQ             loc_21E270
LDRB            R0, [R5,#0xDE]
TST             R0, #1
BEQ             loc_21E270
MOV             R2, SP
MOV             R1, #0
MOV             R0, R5
BL              sub_5F0668
LDR             R1, [R8]
LDR             R0, [SP,#0x20+var_20]
LDR             R2, [R1,#0x2F0]
MOV             R1, R5
VLDM            R0, {S0-S3}
MOV             R0, R8
BLX             R2
CMN             R0, #1
BEQ             loc_21E288
LDRB            R0, [R6,#0x110]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_21E220
MOV             R0, #0
POP             {R3-R9,PC}
MOV             R0, #1
POP             {R3-R9,PC}
