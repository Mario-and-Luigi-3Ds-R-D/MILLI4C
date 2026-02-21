ADD             R0, R0, #0x48 ; 'H'
PUSH            {R4,LR}
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
STRB            R1, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_45ABB4
ADD             R0, R0, #0x2C ; ','
BL              sub_45B104
ADD             R0, R0, #0x58 ; 'X'
BL              sub_45B5D0
ADD             R0, R0, #0x48 ; 'H'
BL              sub_45B67C
LDR             R2, =off_6C0770
SUB             R4, R0, #0x148
MOV             R1, #0
STR             R2, [R0,#0x14]!
LDR             R2, =sub_10D4F0
STR             R1, [R0,#4]
LDR             R0, =off_6CE970
STR             R1, [R4,#0x20]
LDR             R3, [R0]
LDR             R3, [R3,R2]
STR             R3, [R4,#0x1C]
STRB            R1, [R4]
STRB            R1, [R4,#0x40]
LDR             R0, [R0]
MOV             R3, R1
LDR             R0, [R0,R2]
MOV             R2, R1
ADD             R1, R4, #4
BL              sub_5CE3C0
MOV             R0, R4
POP             {R4,PC}
