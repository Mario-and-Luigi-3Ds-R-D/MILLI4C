MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R4,R5,LR}
MOV             R5, R1
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x64
MOV             R1, R2
LDRB            R0, [R5,#0xCC]
CMP             R0, #0
BNE             loc_174060
MOV             R0, R4
BL              sub_5CA54C
ADD             R0, R4, #0x108
ADD             R1, R4, #0x108
VLDM            R0, {S16-S18}
LDR             R0, [R4]
LDR             R2, [R0,#0x1C0]
MOV             R0, R4
BLX             R2
LDRB            R0, [R5,#0xCD]
CMP             R0, #0
BEQ             loc_173FF8
LDR             R1, [R5,#0xA4]
MOV             R0, SP
ADD             R1, R1, #0x20 ; ' '
BL              sub_1169CC
LDR             R0, [R4,#0xE0]
LDR             R2, [R5,#0xAC]
ADD             R1, SP, #0x80+var_50
LDR             R3, [R0,#0xC]
ADD             R0, R4, #0xE0
BLX             R3
LDR             R0, [R5,#0xA4]
MOV             R2, SP
ADD             R1, SP, #0x80+var_50
ADD             R0, R0, #0x20 ; ' '
BL              sub_141F30
B               loc_174014
LDR             R0, [R5]
CMP             R4, #0
ADDNE           R1, R4, #0xE0
MOVEQ           R1, #0
LDR             R2, [R0,#0x40]
MOV             R0, R5
BLX             R2
ADD             R0, R4, #0x108
VSTM            R0, {S16-S17}
LDR             R0, [R4]
LDR             R1, [R0,#0x324]
MOV             R0, R4
BLX             R1
VSTR            S18, [R4,#0x110]
LDR             R0, [R5,#4]
ADD             R2, SP, #0x80+var_20
MOV             R1, #0
STR             R0, [SP,#0x80+var_20]
LDR             R0, [R5,#0xA4]
BL              sub_12C9C4
LDR             R0, [R5,#8]
ADD             R2, SP, #0x80+var_20
MOV             R1, #1
STR             R0, [SP,#0x80+var_20]
LDR             R0, [R5,#0xA4]
BL              sub_12C9C4
ADD             SP, SP, #0x64 ; 'd'
VPOP            {D8-D9}
POP             {R4,R5,PC}
