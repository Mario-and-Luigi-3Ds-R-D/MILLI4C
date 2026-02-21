PUSH            {R0-R11,LR}
SUB             SP, SP, #0x44
ADD             R4, SP, #0x78+arg_C
MOV             R6, R0
LDM             R4, {R0,R8-R11}
MOV             R4, #0
MOV             R7, R4
LDR             R5, [SP,#0x78+arg_0]
CMN             R0, #1
BEQ             loc_1902BC
LDR             R2, =off_6D1648
LDR             R1, =0x14180
LDR             R3, [R2]
LDR             R1, [R1,R6]
UXTH            R2, R0
LDR             R0, [R3,#0xA0]
AND             R1, R1, #0xFF
BL              sub_2D3DF8
LDR             R1, [SP,#0x78+arg_8]
MOV             R7, R0
BL              sub_231790
MOV             R0, #1
STRH            R0, [R7,#0xA]
CMP             R8, #0xFF
BEQ             loc_1904D4
LDR             R1, [SP,#0x78+arg_8]
MOV             R0, SP
BL              sub_234B94
MOV             R0, #0
STR             R0, [SP,#0x78+var_3C]
STR             R0, [SP,#0x78+var_40]
MOV             R1, #1
MOV             R0, SP
STRB            R1, [R0,#0x78+var_44]
LDR             R0, [R6]
LDR             R1, [R0,#0x2DC]
MOV             R0, R6
BLX             R1
MOV             R4, R0
LDR             R0, [R5]
MOV             R1, R8
MOV             R8, #0
LDR             R2, [R0,#0x20]!
CMP             R2, #0
ADDNE           R0, R0, R2
MOVEQ           R0, R8
CMP             R0, #0
BEQ             loc_190334
ADD             R0, R0, R1,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
STR             R0, [SP,#0x78+var_3C]
LDR             R0, [R4]
LDR             R2, [SP,#0x78+var_28]
LDR             R3, [SP,#0x78+arg_4]
ADD             R1, SP, #0x78+var_3C
LDR             R12, [R0,#0x28]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
MOV             R1, SP
LDR             R2, [R0,#0x13C]
MOV             R0, R4
BLX             R2
CMP             R9, #0xFF
BEQ             loc_1903D8
LDR             R0, [R5]
LDR             R1, [R0,#0x68]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
BEQ             loc_1903A0
ADD             R0, R0, R9,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
STR             R0, [SP,#0x78+var_40]
LDR             R0, [R4]
LDR             R2, [SP,#0x78+var_28]
MOV             R3, #3
ADD             R1, SP, #0x78+var_40
LDR             R12, [R0,#0x30]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
MOV             R2, #3
MOV             R1, #1
LDR             R3, [R0,#0xCC]
MOV             R0, R4
BLX             R3
CMP             R10, #0xFF
BEQ             loc_190448
LDR             R0, [R5]
LDR             R1, [R0,#0x70]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
BEQ             loc_190410
ADD             R0, R0, R10,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
STR             R0, [SP,#0x78+var_40]
LDR             R0, [R4]
LDR             R2, [SP,#0x78+var_28]
MOV             R3, #3
ADD             R1, SP, #0x78+var_40
LDR             R12, [R0,#0x34]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
MOV             R2, #3
MOV             R1, #1
LDR             R3, [R0,#0xD0]
MOV             R0, R4
BLX             R3
CMP             R11, #0xFF
BEQ             loc_1904B8
LDR             R0, [R5]
LDR             R1, [R0,#0x78]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
MOVEQ           R8, #0
BEQ             loc_190480
ADD             R0, R0, R11,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
ADDNE           R8, R1, R0
STR             R8, [SP,#0x78+var_40]
LDR             R0, [R4]
LDR             R2, [SP,#0x78+var_28]
MOV             R3, #3
ADD             R1, SP, #0x78+var_40
LDR             R12, [R0,#0x38]
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
MOV             R2, #3
MOV             R1, #1
LDR             R3, [R0,#0xD4]
MOV             R0, R4
BLX             R3
ADD             R0, R6, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
MOV             R0, SP
NOP
LDR             R0, [SP,#0x78+var_30]
CMP             R0, #0
STRNE           R7, [R0]
LDR             R0, [SP,#0x78+var_2C]
CMP             R0, #0
STRNE           R4, [R0]
ADD             SP, SP, #0x54 ; 'T'
POP             {R4-R11,PC}
