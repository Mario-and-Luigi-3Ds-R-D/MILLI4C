PUSH            {R3-R11,LR}
MOV             R4, R0
ADD             R0, R0, #0x70 ; 'p'
MOV             R8, R0
BL              sub_13273C
LDRB            R0, [R4,#0x6F]
MOV             R9, #1
MOV             R7, #0
CMP             R0, #0
BEQ             loc_141100
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_1418F4
LDR             R2, [R4,#0x30]
CMP             R2, #0
BEQ             loc_141070
LDRB            R0, [R2,#0x11]
CMP             R0, #4
STRHEQ          R7, [R4,#0x34]
BEQ             loc_141090
LDRSH           R0, [R4,#0x34]
CMP             R0, #0
BLE             loc_141090
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_141AAC
STRH            R9, [R4,#0x34]
STRH            R7, [R4,#0x36]
LDR             R0, [R4,#0x30]
MOV             R2, #3
CMP             R0, #0
BEQ             loc_1410D0
LDRB            R1, [R0,#0x11]
CMP             R1, #4
BEQ             loc_1410B8
STR             R0, [R4,#0x30]
B               loc_1410D8
LDR             R3, [R0,#0x14]
MOV             R1, R0
MOV             R0, R3
MCR             p15, 0, R7,c7,c10, 5
STRB            R2, [R1,#0x11]
B               loc_14109C
STR             R0, [R4,#0x30]
B               loc_1410FC
LDR             R1, [R0,#0x14]
CMP             R1, #0
BEQ             loc_1410F0
LDRB            R3, [R1,#0x11]
CMP             R3, #4
BEQ             loc_141198
MOV             R0, R1
CMP             R0, #0
BNE             loc_1410D8
STRB            R7, [R4,#0x6F]
LDRSH           R0, [R4,#0x34]
LDR             R5, [R4,#0x30]
MOV             R6, R0
CMP             R0, #0
CMPNE           R5, #0
LDRNE           R5, [R5,#0x14]
SUBNE           R0, R0, #1
BNE             loc_14110C
CMP             R6, #5
MOVLT           R10, #2
BGE             loc_14118C
CMP             R5, #0
BEQ             loc_141180
LDRH            R0, [R4,#0x34]
CMP             R0, #0
BEQ             loc_1411AC
LDR             R0, [R4]
LDRSH           R3, [R4,#0x36]
MOV             R2, R5
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_141944
LDRH            R0, [R4,#0x36]
ADD             R0, R0, #1
SXTH            R0, R0
CMP             R0, #4
STRH            R0, [R4,#0x36]
STRHGE          R7, [R4,#0x36]
LDRH            R0, [R4,#0x34]
LDR             R5, [R5,#0x14]
ADD             R0, R0, #1
STRH            R0, [R4,#0x34]
ADD             R6, R6, #1
CMP             R6, #5
BLT             loc_14112C
MOV             R0, R8
POP             {R3-R11,LR}
B               sub_1327BC
LDR             R3, [R1,#0x14]
STR             R3, [R0,#0x14]
MCR             p15, 0, R7,c7,c10, 5
STRB            R2, [R1,#0x11]
B               loc_1410F4
STRH            R7, [R4,#0x36]
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_1418F4
STRB            R10, [R5,#0x11]
LDRH            R1, [R4,#0x1E]
ADD             R0, R4, #0x1E
MOV             R1, R1,LSL#28
CMP             R10, R1,LSR#30
BNE             loc_1411EC
LDRB            R1, [R4,#0x6E]
CMP             R1, #0
LDREQ           R1, [R5,#8]
CMPEQ           R1, #0
STRBNE          R9, [R4,#0x6E]
LDRH            R0, [R0]
MOV             R2, R5
STRH            R0, [SP,#0x28+var_28]
LDR             R0, [R4]
LDR             R3, [SP,#0x28+var_28]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_141BA0
NOP
NOP
B               loc_141170
