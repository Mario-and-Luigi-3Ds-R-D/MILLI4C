PUSH            {R0-R11,LR}
SUB             SP, SP, #4
MOV             R7, R0
ADD             R0, SP, #0x38+arg_8
LDM             R0, {R4,R10}
LDR             R5, [SP,#0x38+arg_10]
LDR             R6, [SP,#0x38+arg_1C]
LDR             R8, [SP,#0x38+arg_4]
LDR             R0, [R10]
LDR             R11, [SP,#0x38+arg_0]
LDR             R9, =dword_6E2378
LDR             R1, [R0,#8]
MOV             R0, R10
BLX             R1
CMP             R0, #2
LDREQ           R10, [R10,#0x828]
LDR             R0, =0x8B8
LDRH            R0, [R0,R10]
BL              sub_2AF718
CMN             R5, #1
STR             R0, [SP,#0x38+var_38]
BNE             loc_1F0B54
LDR             R0, [R7,#0xC4]
MOV             R1, #1
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x14]
BIC             R5, R1, R0,LSR#16
MOV             R0, R9
BL              sub_1CE930
LDR             R0, [SP,#0x38+var_38]
CMP             R6, #0
LDR             R0, [R0,#0x18]
STR             R0, [R9,#(dword_6E237C - 0x6E2378)]
LDR             R0, [SP,#0x38+var_28]
STR             R0, [R9]
STRNE           R6, [R9,#(dword_6E2380 - 0x6E2378)]
LDR             R0, [R10]
LDR             R1, [R0,#8]
MOV             R0, R10
BLX             R1
CMP             R0, #0
MOVNE           R0, #1
STRB            R0, [R9,#(byte_6E2384 - 0x6E2378)]
STRB            R5, [R9,#(byte_6E2385 - 0x6E2378)]
STRB            R11, [R9,#(byte_6E2386 - 0x6E2378)]
LDR             R0, [SP,#0x38+arg_14]
MOV             R2, #0x10
ADD             R1, R4, #0x760
STRB            R0, [R9,#(byte_6E2387 - 0x6E2378)]
LDR             R0, [SP,#0x38+arg_18]
STRB            R0, [R9,#(byte_6E2388 - 0x6E2378)]
ADD             R0, R9, #0x1C
BL              sub_1103A4
LDR             R1, [R7,#0xBC]
LDRB            R0, [R4,#0xDC]
LDR             R2, [SP,#0x38+var_2C]
ADD             R1, R1, #0x15000
MOV             R11, #0
STRB            R0, [R1,#2]
LDR             R0, [R7,#0xBC]
CMP             R2, #1
ADD             R0, R0, #0x15000
STRB            R8, [R0,#1]
LDR             R0, [R7,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
BIC             R1, R1, #0xF00
STR             R1, [R0,#0x14]
ORR             R0, R1, #1
LDR             R1, [R7,#0xC4]
LDR             R2, [R1,#4]
ORR             R1, R0, #2
STR             R0, [R2,#0x14]
LDR             R0, [R7,#0xC4]
ORR             R2, R1, #0x80
LDR             R0, [R0,#4]
STR             R1, [R0,#0x14]
LDR             R0, [R7,#0xC4]
LDR             R0, [R0,#4]
STR             R2, [R0,#0x14]
LDR             R0, [R7,#0xC4]
LDR             R0, [R0,#4]
STRH            R11, [R0,#0x1C]
LDR             R0, [R7,#0xC4]
LDR             R0, [R0,#4]
STRH            R11, [R0,#0x1E]
STR             R11, [R7,#0x154]
STR             R11, [R7,#0x160]
BEQ             loc_1F0CA0
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
STREQ           R11, [R9,#(dword_6E2390 - 0x6E2378)]
BEQ             loc_1F0C84
LDR             R0, [R4]
LDR             R1, [R0,#0x38]
MOV             R0, R4
BLX             R1
LDR             R0, [R0,#0xA8]
LDR             R0, [R0,#0x34]
STR             R0, [R9,#(dword_6E2390 - 0x6E2378)]
LDRB            R0, [R4,#0xDE]
MOV             R8, #0
BIC             R0, R0, #1
STRB            R0, [R4,#0xDE]
MOV             R4, #0
ADD             R6, R7, R8,LSL#2
B               loc_1F0D14
STR             R11, [R9,#(dword_6E2390 - 0x6E2378)]
LDR             R0, [R7,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
LDR             R0, [R0]
STR             R0, [R7,#0x158]
LDR             R0, [R7,#0xC0]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
LDR             R0, [R0]
STR             R0, [R7,#0x15C]
B               loc_1F0D8C
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #3
BEQ             loc_1F0D04
ADD             R0, R5, #0x400
LDRH            R1, [R0,#0x68]
CMP             R1, #1
STRHEQ          R11, [R0,#0x68]
LDRB            R0, [R5,#0xDE]
ADD             R4, R4, #1
ORR             R0, R0, #8
STRB            R0, [R5,#0xDE]
LDR             R0, [R6,#0xBC]
LDR             R1, =0x1428D
LDRB            R1, [R1,R0]
CMP             R1, R4
BHI             loc_1F0CD0
ADD             R8, R8, #1
CMP             R8, #2
BLT             loc_1F0C94
LDR             R0, [R7,#0xBC]
LDR             R1, =0x13D5C
LDR             R1, [R1,R0]
CMP             R1, #0
BEQ             loc_1F0D5C
BL              sub_2B3E4C
LDR             R0, [R7,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x15C
STR             R11, [R0]
LDR             R0, [R7,#0xBC]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
LDR             R1, [R0]
STR             R1, [R7,#0x158]
STR             R11, [R0]
LDR             R0, [R7,#0xC0]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
LDR             R1, [R0]
STR             R1, [R7,#0x15C]
STR             R11, [R0]
LDR             R0, [SP,#0x38+var_30]
STR             R9, [R0]
LDR             R0, [SP,#0x38+var_30]
STR             R10, [R0,#4]
LDR             R1, [SP,#0x38+var_30]
LDR             R0, [SP,#0x38+var_38]
STR             R0, [R1,#8]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
