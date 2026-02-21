PUSH            {R3-R9,LR}
MOV             R5, R0
MOV             R9, #0
LDR             R6, [R0,#0xC]
CMP             R6, #0
BEQ             loc_10EF38
LDR             R1, [R0]
LDR             R1, [R1,#0x68]
BLX             R1
SUBS            R7, R0, #0
MOV             R4, #0
BLE             loc_10EF34
ADD             R8, R4, R4,LSL#2
LDR             R0, [R6,R8,LSL#2]
CMP             R0, #0
STR             R0, [SP,#0x20+var_20]
BEQ             loc_10EF28
MOV             R1, SP
MOV             R0, #1
BL              sub_1265EC
STR             R9, [R6,R8,LSL#2]
ADD             R4, R4, #1
CMP             R4, R7
BLT             loc_10EF04
STR             R9, [R5,#0xC]
LDR             R0, [R5,#4]
STR             R9, [R5,#4]
STR             R9, [R5,#8]
POP             {R3-R9,PC}
