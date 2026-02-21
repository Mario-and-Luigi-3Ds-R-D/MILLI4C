PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R0, =dword_6D1F68
LDR             R0, [R0]
TST             R0, #1
BNE             loc_105904
LDR             R0, =dword_6D1F68
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_105904
BL              sub_107E6C
MOV             R1, R0
LDR             R0, =unk_6ED9D0
BL              sub_107FA8
LDR             R2, =sub_100000
LDR             R1, =nullsub_366
NOP
LDR             R0, =dword_6D1F68
NOP
LDR             R0, =unk_6ED9D0
ADD             R1, R4, #0x38 ; '8'
BL              sub_107E78
LDR             R5, =unk_696B68
LDR             R3, [R4,#0x38]
LDR             R12, [R4]
MOV             R1, #0
MOV             R0, R1
MOV             R6, #0xD
MOV             R7, R1
LDR             R2, [R5],#4
ANDS            R2, R2, R3
ADDEQ           R2, R4, R0,LSL#1
STRHEQ          R7, [R2,#0x14]
BEQ             loc_105988
TST             R12, R2
BEQ             loc_105968
ADD             R8, R4, R0,LSL#1
LDRH            R9, [R8,#0x14]
SUB             R9, R9, #1
MOV             R9, R9,LSL#16
MOVS            R9, R9,LSR#16
STRH            R9, [R8,#0x14]
BEQ             loc_10597C
B               loc_105988
LDRH            R8, [R4,#0x34]
ADD             R9, R4, R0,LSL#1
ORR             R1, R1, R2
STRH            R8, [R9,#0x14]
B               loc_105988
LDRH            R9, [R4,#0x36]
ORR             R1, R1, R2
STRH            R9, [R8,#0x14]
SUBS            R6, R6, #1
ADD             R0, R0, #1
BNE             loc_10592C
BIC             R2, R3, R12
BIC             R0, R12, R3
STR             R2, [R4,#8]
STRD            R0, R1, [R4,#0xC]
STM             R4, {R3,R12}
POP             {R4-R10,PC}
