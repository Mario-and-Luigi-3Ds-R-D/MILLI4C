PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R7, R1
LDRB            R0, [R0,#0xE]
CMP             R0, #1
BNE             loc_132EBC
LDR             R0, =0xFFF6003C
ADD             R0, R0, R2
CMP             R0, #0
SUBGT           R7, R1, R0
ADD             R6, R5, #0x10
MOV             R0, R6
BL              sub_13273C
LDR             R4, [R5,#4]
CMP             R4, #0
BEQ             loc_132FF8
LDR             R10, =0x7FFF
MOV             R9, #0
MOV             R8, #1
LDR             R0, [R4,#0x68]
LDRB            R1, [R0,#0xD]
CMP             R1, #0
BNE             loc_132FEC
LDR             R1, [R0,#0x30]
CMP             R1, #0
BEQ             loc_132FEC
LDR             R0, [R0,#0x2C]
CMP             R0, R7
MOV             R11, R0
BLE             loc_132F18
LDR             R0, [R4,#0x20]
CMP             R0, R10
BNE             loc_132F3C
LDR             R0, [R4,#0x68]
BL              sub_13EAF0
LDR             R0, [R4,#0x68]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BLEQ            sub_13F150
SUB             R7, R7, R11
NOP
B               loc_132FEC
LDR             R0, [R4]
LDR             R1, [R5]
TST             R1, R8,LSL R0
BEQ             loc_132FD4
LDRB            R0, [R4,#4]
CMP             R0, #1
BEQ             loc_132F64
MOV             R1, #1
MOV             R0, R4
BL              sub_14121C
ADD             R0, R5, #0x10
MOV             R11, R0
BL              sub_13273C
LDRD            R0, R1, [R4,#0x24]
ORRS            R2, R0, R1
STREQ           R9, [R5,#4]
STREQ           R9, [R5,#8]
BEQ             loc_132FB0
CMP             R1, #0
BEQ             loc_132F98
CMP             R0, #0
STR             R0, [R1,#0x24]
STREQ           R1, [R5,#4]
CMP             R0, #0
BEQ             loc_132FB0
LDR             R1, [R4,#0x28]
CMP             R1, #0
STR             R1, [R0,#0x28]
STREQ           R0, [R5,#8]
LDR             R1, [R4]
LDR             R0, [R5]
BIC             R1, R0, R8,LSL R1
STR             R1, [R5]
LDRH            R0, [R5,#0xC]
SUB             R0, R0, #1
STRH            R0, [R5,#0xC]
MOV             R0, R11
BL              sub_1327BC
LDR             R2, [R4,#0x2C]
CMP             R2, #0
BEQ             loc_132FEC
LDR             R1, [R4,#0x30]
MOV             R0, R4
BLX             R2
LDR             R4, [R4,#0x28]
CMP             R4, #0
BNE             loc_132EE0
MOV             R0, R6
POP             {R4-R12,LR}
B               sub_1327BC
