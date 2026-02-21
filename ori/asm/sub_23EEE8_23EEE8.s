PUSH            {R4-R11,LR}
ADD             R4, R0, #4
MOV             R3, #0x3E8
MOV             R9, #5
MOV             R8, #0x28 ; '('
STM             R4, {R1,R2}
MOV             R5, #0x258
STRH            R3, [R0,#0xC]
STRH            R9, [R0,#0xE]
STRH            R8, [R0,#0x10]
STRH            R5, [R0,#0x12]
MOV             R12, #0x1F4
MOV             R2, #0x3C ; '<'
STRH            R12, [R0,#0x14]
STRH            R2, [R0,#0x16]
MOV             R4, #0x12C
STRH            R2, [R0,#0x18]
MOV             R5, #1
STRH            R4, [R0,#0x1A]
STRH            R5, [R0,#0x1C]
MOV             R6, #0x2BC
STRH            R12, [R0,#0x1E]
STRH            R6, [R0,#0x20]
MOV             R6, #0x18
MOV             R7, #0x78 ; 'x'
STRH            R6, [R0,#0x22]
STRH            R7, [R0,#0x24]
STRH            R3, [R0,#0x26]
STRH            R9, [R0,#0x28]
STRH            R8, [R0,#0x2A]
STRH            R12, [R0,#0x2C]
MOV             R12, #0x384
STRH            R12, [R0,#0x2E]
STRH            R2, [R0,#0x30]
STRH            R2, [R0,#0x32]
STRH            R4, [R0,#0x34]
MOV             R12, #0x400
STRH            R5, [R0,#0x36]
STRH            R12, [R0,#0x38]
STRH            R12, [R0,#0x3A]
ADD             R3, R0, #0xA00
STRH            R6, [R0,#0x3C]
MOV             LR, #0
STRH            R7, [R0,#0x3E]
LDR             R11, =byte_68DBBA
STRH            LR, [R3,#0x82]
STRH            LR, [R3,#0x84]
STRH            LR, [R3,#0x86]
STRH            LR, [R3,#0x88]
LDRB            R12, [R11]
MOV             R2, LR
CMP             R12, #0
LDRGT           R4, =unk_68C17A
BLE             loc_23F088
LDRH            R5, [R3,#0x82]
RSB             R12, R2, R2,LSL#4
LDRH            R6, [R3,#0x84]
LDRH            R7, [R3,#0x86]
RSB             R5, R5, R5,LSL#4
LDRH            R8, [R3,#0x88]
ADD             R12, R4, R12,LSL#1
ADD             R5, R4, R5,LSL#1
LDRSH           R9, [R12]
LDRSH           R10, [R5]
RSB             R6, R6, R6,LSL#4
RSB             R7, R7, R7,LSL#4
RSB             R8, R8, R8,LSL#4
CMP             R9, R10
ADD             R6, R4, R6,LSL#1
ADD             R7, R4, R7,LSL#1
ADD             R8, R4, R8,LSL#1
BGT             loc_23F018
LDRSH           R9, [R12,#2]
LDRSH           R5, [R5,#2]
CMP             R9, R5
STRHLE          R2, [R3,#0x82]
LDRSH           R5, [R12]
LDRSH           R9, [R6]
CMP             R5, R9
BGT             loc_23F038
LDRSH           R5, [R6,#2]
LDRSH           R6, [R12,#2]
CMP             R5, R6
STRHLE          R2, [R3,#0x84]
LDRSH           R5, [R7]
LDRSH           R6, [R12]
CMP             R5, R6
BGT             loc_23F058
LDRSH           R6, [R12,#2]
LDRSH           R5, [R7,#2]
CMP             R6, R5
STRHLE          R2, [R3,#0x86]
LDRSH           R5, [R8]
LDRSH           R6, [R12]
CMP             R5, R6
BGT             loc_23F078
LDRSH           R5, [R8,#2]
LDRSH           R12, [R12,#2]
CMP             R5, R12
STRHLE          R2, [R3,#0x88]
LDRB            R12, [R11]
ADD             R2, R2, #1
CMP             R2, R12
BLT             loc_23EFC0
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x770
STRB            LR, [R0,#0xAC1]
LDR             R2, [R1]
MOV             R3, #0xF0
BIC             R2, R2, #0x700
ORR             R2, R2, #0x300
STR             R2, [R1]
LDR             R1, [R0,#4]
BIC             R2, R2, #0x3800
ORR             R12, R2, #0x1800
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x770
BIC             R2, R12, #0x4000
STR             R12, [R1]
LDR             R1, [R0,#4]
BIC             R12, R2, #0xF
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x770
STR             R2, [R1]
LDR             R2, [R0,#4]
LDR             R1, [R2,#0x464]
ADD             R2, R2, #0x2000
ADD             R2, R2, #0x770
AND             R1, R1, #0xF
ORR             R1, R1, R12
STR             R1, [R2]
AND             R2, R3, R1,LSL#4
BIC             R3, R1, #0xF0
LDR             R1, [R0,#4]
ORR             R2, R2, R3
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x770
STR             R2, [R1]
STR             LR, [R0,#0xA74]
POP             {R4-R11,PC}
