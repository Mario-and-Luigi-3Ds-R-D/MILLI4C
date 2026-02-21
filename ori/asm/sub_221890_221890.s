PUSH            {R4-R6,LR}
MOV             R6, #3
LDR             R5, [SP,#0x10+arg_4]
LDR             R4, [SP,#0x10+arg_8]
LDR             R12, [SP,#0x10+arg_0]
STR             R3, [R0,#0x34]
STR             R5, [R0,#0xC]
STM             R0, {R1,R2,R12}
ADD             R5, R0, #0x10
STRB            R6, [R0,#0x38]
ADD             R0, R0, #0x28 ; '('
STRH            R4, [R5,#0x20]
STR             R0, [R5,#4]
MOV             R6, R1
STR             R0, [R0,#4]
ADD             R1, R5, #0x10
STR             R0, [R0]
STR             R1, [R5,#8]
STR             R1, [R5,#0x14]
STR             R1, [R5,#0x10]
LDR             R0, [R6]
ADD             R2, R4, R4,LSL#1
MOV             R1, R2,LSL#2
LDR             R3, [R0,#0xC]
MOV             R2, #0
MOV             R0, R6
BLX             R3
STR             R0, [R5]
MOV             R0, #0x2C ; ','
MOV             R2, #0
MUL             R1, R4, R0
LDR             R0, [R6]
LDR             R3, [R0,#0xC]
MOV             R0, R6
BLX             R3
STR             R0, [R5,#0xC]
LDM             R5, {R1,R2}
CMP             R4, #0
MOV             R3, #0
BLS             loc_221964
STR             R0, [R1,#8]
LDR             R12, [R2]
ADD             R3, R3, #1
ADD             R0, R0, #0x2C ; ','
STR             R12, [R1]
LDR             R12, [R2]
UXTH            R3, R3
CMP             R4, R3
STR             R1, [R12,#4]
STR             R2, [R1,#4]
STR             R1, [R2]
ADD             R1, R1, #0xC
BHI             loc_221930
MOV             R0, #1
POP             {R4-R6,PC}
