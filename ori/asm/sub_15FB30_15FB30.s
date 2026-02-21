PUSH            {R4-R10,LR}
ADD             R4, R0, #0x15000
MOV             R5, R0
MOV             R6, R2
LDRB            R0, [R4,#0xA3]
CMP             R0, #0
BNE             locret_15FC98
CMP             R1, #0
MOV             R9, #1
MOV             R8, #0
BEQ             loc_15FB78
CMP             R1, #1
STRBEQ          R9, [R4,#0xA2]
BEQ             loc_15FC34
CMP             R1, #2
MOVEQ           R0, #2
STRBEQ          R0, [R4,#0xA2]
B               loc_15FC34
LDR             R7, =off_6D1648
LDR             R2, =0x13D04
LDR             R1, [R7]
LDRH            R2, [R2,R5]
LDR             R1, [R1,#0xC4]
SUB             R0, R2, #0xFF00
SUBS            R0, R0, #0xFF
LDR             R1, [R1,#4]
LDR             R0, [R1,#4]
BEQ             loc_15FC34
LDR             R1, [R0]
LDR             R1, [R1,#0x404]
BLX             R1
CMP             R0, #0
BEQ             loc_15FBC8
LDR             R0, [R7]
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BEQ             loc_15FC34
LDR             R0, [R7]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #2
BEQ             loc_15FC04
LDR             R0, [R7]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #3
STRBNE          R8, [R4,#0xA2]
BNE             loc_15FC34
LDR             R0, [R7]
BL              sub_1E4614
LDR             R1, =0x40C00000
LDR             R0, [R0,#0x4C4]
CMP             R0, R1
BGT             loc_15FC34
LDR             R0, [R7]
BL              sub_1E4614
NOP
NOP
BL              sub_169C44
STRB            R8, [R4,#0xA2]
LDRB            R0, [R4,#0xA1]
LDRB            R1, [R4,#0xA2]
CMP             R1, R0
BEQ             locret_15FC98
CMP             R0, #0
BEQ             loc_15FC68
CMP             R0, #1
ADDEQ           R0, R5, #0x14400
ADDEQ           R0, R0, #0x174
NOP
LDRB            R0, [R4,#0xA1]
CMP             R0, #2
BEQ             loc_15FC74
LDRB            R0, [R4,#0xA2]
CMP             R0, #2
BNE             loc_15FC9C
CMP             R6, #0
BEQ             loc_15FC9C
MOV             R0, R5
BL              sub_1608D0
ADD             R5, R5, #0x14400
ADD             R5, R5, #8
LDR             R0, [R5]
STRB            R8, [R0,#0x99]
STRB            R8, [R4,#0xA3]
POP             {R4-R10,PC}
ADD             R0, R5, #0x15000
STRB            R9, [R4,#0xA3]
POP             {R4-R10,LR}
MOV             R2, #5
MOV             R1, #0xFF
ADD             R0, R0, #0xDC
B               sub_5996A0
