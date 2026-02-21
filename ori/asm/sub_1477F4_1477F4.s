PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R3, #0x810000
MOV             R2, #0
LDR             R7, =off_6CE970
LDR             R0, [R7]
ADD             R1, R0, #8
LDR             R0, =0x418
BL              sub_10A358
MOVS            R4, R0
BEQ             locret_14790C
MOV             R0, #1
STRB            R0, [R4,#4]
LDR             R0, =off_6B54DC
MOV             R8, #0
STRB            R8, [R4,#5]
STRH            R8, [R4,#6]
ADD             R1, R4, #8
STR             R0, [R4]
MOV             R5, #2
ADD             R0, R4, #0x10
STM             R1, {R6,R8}
BL              sub_14F198
LDR             R1, =off_6BC67C
ADD             R3, R0, #0x3F8
STR             R1, [R0]
LDR             R1, =off_64E720
STR             R4, [R0,#0x3F4]
STRB            R8, [R0,#0xF2]
ADD             R9, R1, #0x38 ; '8'
STRB            R8, [R0,#0xF6]
ADD             R4, R0, #0x400
VLDM            R9, {S0-S1}
ADD             R4, R4, #5
MOV             R9, #0xFF
VSTM            R3, {S0-S1}
STRB            R8, [R0,#0x404]
STRB            R9, [R4]
STRB            R8, [R0,#0x406]
STRB            R5, [R0,#0x407]
LDR             R2, [R7]
SUB             R4, R0, #0x10
LDR             R0, =off_6CE7F8
ADD             R2, R2, #0x190000
ADD             R2, R2, #0xCF00
LDRB            R3, [R2,#(byte_19CF28 - 0x19CF00)]
CMP             R3, #0
BEQ             loc_1478C4
LDRB            R2, [R2,#(byte_19CF2B - 0x19CF00)]
CMP             R2, #0
LDREQ           R0, [R0,#(off_6CE7FC - 0x6CE7F8)]; unk_6E2418
BEQ             loc_1478C8
LDR             R0, [R0]; unk_6E2408
STR             R0, [R4,#0x410]
LDR             R2, [R4,#8]
LDRB            R0, [R4,#0x417]
STRB            R0, [R2,#0x489]
LDRD            R0, R1, [R1]
ADD             R2, R4, #0x400
ADD             R2, R2, #8
STM             R2, {R0,R1}
LDR             R0, [R4,#8]
BL              sub_5EC8D8
CMP             R0, #0
NOP
BNE             loc_147908
MOV             R1, #1
MOV             R0, R4
BL              sub_2CD540
MOV             R0, R4
POP             {R4-R10,PC}
