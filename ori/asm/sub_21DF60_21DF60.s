PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R8, #0
MOV             R4, R1
LDR             R0, [R0,#8]
STRB            R8, [R5,#0x112]
CMP             R0, #0
BEQ             locret_21E104
LDR             R2, [R0,#0x10]
ADD             R6, R4, #0x650
MOV             R0, #1
STR             R2, [R3]
STR             R8, [R2,#0xC]
LDR             R2, [R5,#8]
MOV             R1, #0
STR             R8, [R2,#0x10]
LDR             R2, [R5,#0x13C]
LDM             R6, {R9,R10}
LDRB            R2, [R2,#0xDC]
BL              sub_300CF8
BIC             R0, R9, R0
BIC             R1, R10, R1
STRD            R0, R1, [R6]
LDR             R0, [R4]
MOV             R7, #0
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #0
LDR             R0, =off_6D1648
BEQ             loc_21E048
MOV             R6, #1
LDR             R0, [R0]
BL              sub_1E4604
CMP             R0, R4
BNE             loc_21DFF4
MOV             R7, #1
LDR             R0, [R4,#0x740]
ADD             R10, R4, #0x740
ADD             R9, R4, #0x600
CMP             R0, #0
MOV             R11, #0xFFFFFFFF
BEQ             loc_21E0B8
LDR             R2, [R5,#0x13C]
LDRB            R1, [R0,#0xDC]
LDRB            R2, [R2,#0xDC]
CMP             R1, R2
BNE             loc_21E0B8
LDR             R1, [R0,#0x8F8]
TST             R1, #0x3F8
BEQ             loc_21E064
STR             R8, [R4,#0x740]
LDR             R0, [R5,#0x13C]
LDRSB           R1, [R9,#0x5E]
LDRB            R0, [R0,#0xDC]
CMP             R1, R0
STRBEQ          R11, [R4,#0x65E]
B               loc_21E0B8
LDR             R0, [R0]
MOV             R6, #0
BL              sub_1E4614
CMP             R0, R4
NOP
BNE             loc_21DFF4
B               loc_21DFF0
CMP             R7, #0
BEQ             loc_21E080
LDR             R2, [R0,#0x8F4]
ADD             R1, R6, #1
AND             R1, R1, #3
ORR             R1, R2, R1,LSL#7
STR             R1, [R0,#0x8F4]
ADD             R7, R5, R6,LSL#2
LDR             R1, [R4,#0x740]
LDR             R0, [R7,#0x13C]
BL              sub_598B34
LDR             R0, [R7,#0x13C]
STR             R0, [R10]
LDR             R1, [R5,#0x13C]
LDRSB           R0, [R9,#0x5E]
LDRB            R1, [R1,#0xDC]
CMP             R0, R1
BNE             loc_21E0B8
LDR             R0, [R7,#0x13C]
LDRB            R0, [R0,#0xDC]
STRB            R0, [R4,#0x65E]
LDR             R1, [R4,#0x744]
ADD             R7, R4, #0x400
ADD             R7, R7, #0x344
CMP             R1, #0
BEQ             locret_21E104
LDR             R0, [R5,#0x13C]
LDRB            R2, [R1,#0xDC]
LDRB            R0, [R0,#0xDC]
CMP             R2, R0
BNE             locret_21E104
LDR             R0, [R1,#0x8F8]
TST             R0, #0x3F8
BEQ             loc_21E108
STR             R8, [R4,#0x744]
LDR             R0, [R5,#0x13C]
LDRSB           R1, [R9,#0x5F]
LDRB            R0, [R0,#0xDC]
CMP             R1, R0
STRBEQ          R11, [R4,#0x65F]
POP             {R4-R12,PC}
ADD             R6, R5, R6,LSL#2
LDR             R0, [R6,#0x13C]
BL              sub_598B34
LDR             R0, [R6,#0x13C]
STR             R0, [R7]
LDR             R0, [R5,#0x13C]
LDRSB           R1, [R9,#0x5F]
LDRB            R0, [R0,#0xDC]
CMP             R1, R0
BNE             locret_21E104
LDR             R0, [R6,#0x13C]
LDRB            R0, [R0,#0xDC]
STRB            R0, [R4,#0x65F]
POP             {R4-R12,PC}
