PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, =off_6CE388
SUB             SP, SP, #0xC
LDR             R0, [R0]
LDR             R0, [R0,#0x94]
LDRB            R0, [R0,#0x1D9]
MOV             R3, #0
MOV             R4, SP
AND             R0, R0, #2
MOV             R2, R3
MOVS            R1, R0,LSR#1
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_1A4DF4
MOV             R0, #0x4C ; 'L'
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1A4DA4
LDR             R1, =off_6BB628
STM             R0, {R1,R5}
ADD             R0, R0, #0xC
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
STRB            R1, [R0,#0x14]
SUB             R0, R0, #0xC
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #4
STR             R0, [SP,#0x18+var_10]
STR             R0, [SP,#0x18+var_14]
MOV             R1, R4
MOV             R2, #0
MOV             R0, R5
BL              sub_61E56C
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_1A4DE0
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BNE             loc_1A4E4C
LDRD            R0, R1, [SP,#0x18+var_14]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1A4E10
LDR             R1, =off_6BB644
STM             R0, {R1,R5}
MOV             R1, R4
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #4
STR             R0, [SP,#0x18+var_10]
STR             R0, [SP,#0x18+var_14]
MOV             R2, #0
MOV             R0, R5
BL              sub_61E56C
LDR             R1, [SP,#0x18+var_10]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_1A4DE0
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_1A4DE0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_1A4DE0
