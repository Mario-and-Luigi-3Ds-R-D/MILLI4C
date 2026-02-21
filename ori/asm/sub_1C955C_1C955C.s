PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R2, #0x58 ; 'X'
LDR             R0, [R0,#0xC4]
LDR             R5, [R1,#8]
LDR             R4, [R0,#4]
ADD             R1, R5, #4
ADD             R0, R4, #0x800
ADD             R0, R0, #0x7C ; '|'
BL              sub_127EB8
LDRH            R0, [R5]
CMP             R0, #4
BEQ             loc_1C95A4
CMP             R0, #5
BEQ             loc_1C95C4
CMP             R0, #7
BNE             loc_1C962C
B               loc_1C95EC
LDR             R0, [R5,#0x18]
CMP             R0, #0
LDRD            R0, R1, [R4,#4]
STRNE           R1, [R4,#0x890]!
STRNE           R0, [R4,#4]
ADDEQ           R4, R4, #0x890
BNE             loc_1C962C
B               loc_1C95E4
LDR             R0, [R5,#4]
CMP             R0, #0
LDRD            R0, R1, [R4,#4]
STRNE           R1, [R4,#0x87C]!
STRNE           R0, [R4,#4]
ADDEQ           R4, R4, #0x800
ADDEQ           R4, R4, #0x7C ; '|'
BNE             loc_1C962C
STM             R4, {R0,R1}
B               loc_1C962C
LDR             R0, [R4]
LDRH            R7, [R4,#0x3C]
MOV             R1, #7
LDR             R2, [R0,#0x18C]
MOV             R0, R4
BLX             R2
STRH            R7, [R4,#0x3C]
STRH            R7, [R4,#0x3E]
LDR             R0, [R4,#0x44]
MOV             R1, #2
ADD             R1, R1, R7,LSL#2
ADD             R2, R0, R7,LSL#2
LDRH            R2, [R2]
STRH            R2, [R4,#0x40]
LDRH            R0, [R0,R1]
STRH            R0, [R4,#0x42]
LDR             R0, [R6,#0xBC]
LDR             R1, [R5,#0x60]
STR             R1, [R0,#0x94]
LDR             R0, [R6,#0xC0]
LDR             R1, =0x14490
LDRB            R12, [R5,#0x64]
ADD             R2, R0, #0x14400
ADD             R2, R2, #0x1C
STRB            R12, [R1,R0]
LDRB            R1, [R5,#0x65]
ADD             R3, R0, #0x14400
ADD             R3, R3, #0x1D
STRB            R1, [R2]
LDRB            R1, [R5,#0x66]
ADD             R0, R0, #0x14400
STRB            R1, [R3]
LDR             R1, [R5,#0x68]
STR             R1, [R0,#0x20]
POP             {R4-R8,PC}
