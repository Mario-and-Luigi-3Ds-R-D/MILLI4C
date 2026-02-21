PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
MOV             R5, R1
BL              sub_14F198
MOV             R7, #0
STRB            R7, [R0,#0x3F4]
MOV             R1, #2
ADD             R0, R0, #0x3F8
BL              sub_28BFEC
ADD             R2, R0, #0x6C ; 'l'
VLDR            S0, =0.0
STM             R2, {R5,R7}
ADD             R2, SP, #0x20+var_1C
VLDR            S1, =100.0
VSTR            S0, [SP,#0x20+var_20]
SUB             R4, R0, #0x3F8
MOV             R1, SP
VSTM            R2, {S0-S1}
BL              sub_28BF30
STRB            R7, [R4,#0x455]
STRB            R7, [R4,#0x454]
STR             R7, [R4,#0x444]
STRB            R7, [R4,#0x3F5]
LDR             R0, [R4,#0x464]
ADD             R6, R4, #0x400
MOV             R1, #1
LDR             R0, [R0,#0xF4]
STR             R0, [R4,#0x450]
MOV             R0, R4
BL              sub_14C450
LDR             R0, [R4,#0x464]
MOV             R2, #0
LDR             R1, [R0,#4]
MOV             R0, R4
BL              sub_14E6E0
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0x15
MOV             R0, R4
BL              sub_14C548
ADD             R5, R5, #0xC
MOV             R1, R5
MOV             R0, R4
BL              sub_14E984
MOV             R1, R5
ADD             R0, R4, #0x3F8
BL              sub_28BF30
LDR             R0, [R5,#0xC]
MOV             R3, #0
MOV             R2, R3
STR             R0, [R6,#0x28]
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
BEQ             loc_28418C
LDR             R2, =off_6C0770
STR             R2, [R0,#8]
STM             R0, {R4,R7}
STR             R7, [R0,#0xC]
STR             R0, [R4,#0x468]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x400
LDR             R0, [R0,#8]
ADD             R3, R3, #0x58 ; 'X'
STR             R0, [R4,#0x460]
STM             R3, {R1,R2}
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4-R7,PC}
