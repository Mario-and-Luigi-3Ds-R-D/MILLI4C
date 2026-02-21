PUSH            {R4-R8,LR}
MOV             R5, R0
ADD             R6, R0, #0x1000
LDR             R7, =off_6CECB0
SUB             SP, SP, #8
MOV             R8, #0
LDR             R0, [R7,#(dword_6CECB4 - 0x6CECB0)]
CMP             R0, #4
BEQ             loc_1089B8
CMP             R0, #5
BNE             loc_108AA0
B               loc_108A08
LDR             R0, [R7]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x14]
ADD             R1, R5, #0xE8
BLX             R2
CMP             R0, #0
BNE             loc_108A28
LDRB            R0, [R6,#0x2DC]
LDR             R3, =0x179B0; int
ADD             R2, R5, #0x138; int
EOR             R0, R0, #8
STRB            R0, [R6,#0x2DC]
ADD             R1, R5, #0x80; int
ADD             R0, R5, #0x40 ; '@'; int
STR             R8, [SP,#0x20+var_20]; float
STR             R8, [SP,#0x20+var_1C]; int
BL              sub_10D458
MOV             R0, #5
STR             R0, [R7,#(dword_6CECB4 - 0x6CECB0)]
LDR             R0, [R7]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R2, [R1,#0x14]
ADD             R1, R5, #0x80
BLX             R2
CMP             R0, #0
BEQ             loc_108A34
ADD             SP, SP, #8
MOV             R0, #1
POP             {R4-R8,PC}
MOV             R0, R5
BL              sub_10D420
MOV             R4, #0
ADD             R0, R5, R4,LSL#5
ADD             R0, R0, #0x20 ; ' '
BL              sub_10D420
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_108A40
LDRB            R0, [R6,#0x2DC]
LDR             R1, =0x11B
LDR             R2, =0x11B0
MOV             R0, R0,LSL#27
MOV             R0, R0,LSR#30
SMULBB          R0, R0, R1
LDR             R1, =unk_6E3800
ADD             R0, R1, R0,LSL#4
ADD             R1, R5, #0x138
BL              sub_1103A4
LDR             R0, =byte_6CF939
STRB            R8, [R0]
MOV             R0, #1
BL              sub_10F264
LDR             R1, =byte_6CF93A
MOV             R0, #1
STRB            R8, [R1]
STR             R0, [R7,#(dword_6CECB4 - 0x6CECB0)]
ADD             SP, SP, #8
MOV             R0, #0
POP             {R4-R8,PC}
