PUSH            {R4-R8,LR}
MOV             R2, #0
MOV             R8, #0
STR             R2, [R0]
ADD             R2, R0, #4
STR             R2, [R0,#8]
STR             R2, [R0,#4]
STRB            R1, [R0,#0xC]
STRB            R8, [R0,#0xD]
STRB            R8, [R0,#0xE]
ADD             R0, R0, #0x10
BL              sub_14F198
STR             R8, [R0,#0x3F8]
SUB             R4, R0, #0x10
STR             R8, [R0,#0x400]
LDR             R0, =off_6CDC90
STRB            R8, [R4,#0x414]
LDRB            R2, [R4,#0xC]
LDR             R1, =0x12700
LDR             R0, [R0]
CMP             R2, #0
MOVEQ           R6, #1
MOVNE           R6, #0
LDR             R2, [R1,R0]
LDREQ           R1, [R0,#0x24]
LDRNE           R1, [R0,#0x20]
ADDEQ           R5, R2, #0x4C ; 'L'
ADDNE           R5, R2, #0x58 ; 'X'
MOV             R2, #0
ADD             R0, R4, #0x10
BL              sub_14E6E0
MOV             R1, #1
ADD             R0, R4, #0x10
BL              sub_14C450
MOV             R0, #1
STRB            R0, [R4,#0x101]
MOV             R1, R5
ADD             R0, R4, #0x10
BL              sub_14E984
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
ADD             R0, R4, #0x10
BL              sub_14C548
MOV             R1, #0
ADD             R0, R4, #0x10
BL              sub_14C3E8
LDR             R0, =off_6CE970
STRB            R8, [R4,#0x415]
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x18
BL              sub_10A358
LDR             R6, =off_6C0770
CMP             R0, #0
BEQ             loc_1FF420
STM             R0, {R6,R8}
ADD             R1, R0, #0x10
STR             R6, [R0,#8]
STR             R8, [R0,#0xC]
STM             R1, {R4,R8}
MOV             R7, R0
LDR             R0, [R4,#8]
ADD             R2, R4, #4
CMP             R0, R2
BNE             loc_1FF4C8
LDR             R5, [R4]
CMP             R5, #0
BEQ             loc_1FF4BC
LDR             R0, [R5,#0x14]
CMP             R0, #0
BEQ             loc_1FF454
BL              sub_533330
STR             R8, [R5,#0x14]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1FF478
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R8, [R0,#0x64]
STRNE           R8, [R5,#4]
LDR             R0, [R5,#0xC]
CMP             R0, #0
BEQ             loc_1FF49C
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R5,#0xC]
CMP             R0, #0
STRNE           R8, [R0,#0x64]
STRNE           R8, [R5,#0xC]
STR             R6, [R5,#8]
STR             R6, [R5]
LDR             R0, [R5,#4]
CMP             R0, #0
STRNE           R8, [R0,#0x64]
MOV             R0, R5
STRNE           R8, [R5,#4]
BL              sub_300FD4
MOV             R0, R4
STR             R7, [R4]
POP             {R4-R8,PC}
LDR             R2, [R4,#4]
ADD             R1, R4, #4
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R1, [R4,#4]
STR             R1, [R4,#8]
B               loc_1FF4BC
