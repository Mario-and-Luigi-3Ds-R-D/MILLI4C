PUSH            {R4-R6,LR}
ADD             R4, R0, #0x1000
BL              sub_1073F8
MOV             R5, R0
BL              sub_107408
SUB             R0, R5, R0
SUB             R0, R0, R4
MOV             R5, R0,LSR#12
MOV             R0, R4
MOV             R5, R5,LSL#12
BL              sub_10755C
MOV             R0, R5
BL              sub_10746C
MOV             R0, #0x8000000
MOV             R4, R0
BL              sub_1073AC
ADD             R0, R0, R4
POP             {R4-R6,LR}
SUB             R0, R0, #0x1000
MOV             R1, #0x1000
NOP
SUB             R2, R0, #1
PUSH            {R4-R6,LR}
MOV             R2, R2,LSR#2
MOV             R5, #0
MOV             R2, R2,LSL#2
ADDS            R4, R2, #4
ADD             R2, R4, #0x64 ; 'd'
MOVEQ           R4, #0
BEQ             loc_108244
STR             R5, [R4,#4]
STR             R5, [R4,#8]
STR             R5, [R4,#0xC]
STR             R5, [R4,#0x10]
STR             R5, [R4,#0x14]
ADD             R0, R0, R1
STR             R5, [R4,#0x18]
MOV             R1, R2
STR             R5, [R4,#0x54]
SUB             R2, R0, R2
MOV             R3, R5
STR             R5, [R4,#0x58]
ADD             R0, R4, #0x5C ; '\'
MOV             R12, #0xFFFFFFFF
STM             R0, {R3,R12}
LDR             R0, =off_6C009C
STR             R0, [R4]
MOV             R0, R4
BL              sub_10E228
ADD             R0, R4, #0x58 ; 'X'
BL              sub_118AE8
LDR             R1, =dword_6D4AF8
LDR             R0, =unk_70E3F0
LDR             R2, =off_6C0084
STR             R4, [R1]
STM             R0, {R2,R4}
STRB            R5, [R0,#(byte_70E3F8 - 0x70E3F0)]
STRB            R5, [R0,#(byte_70E3F9 - 0x70E3F0)]
STRB            R5, [R0,#(byte_70E3FA - 0x70E3F0)]
STR             R0, [R1,#(dword_6D4AFC - 0x6D4AF8)]
POP             {R4-R6,PC}
