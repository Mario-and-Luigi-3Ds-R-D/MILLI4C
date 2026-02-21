PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, #1
LDR             R0, [R0,#4]
STRB            R7, [R0,#0x445]
ADD             R0, R4, #8
BL              sub_5C6460
SUB             R1, R0, #1
ADD             R0, R4, #8
BL              sub_5C6498
BL              sub_19E054
STRB            R0, [R4,#0x28]
BL              sub_19E054
STRB            R0, [R4,#0x28]
BL              sub_19E000
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
LDR             R6, =off_6CE388
STR             R0, [R4,#0x38]
ADD             R0, R4, #0x30 ; '0'
STM             R0, {R1,R2}
LDR             R0, [R6]
LDR             R0, [R0,#0x98]
MOV             R1, #2
VLDR            S0, [R0,#0x44]
STRB            R1, [R4,#0x20]
LDR             R0, [R4,#4]
ADD             R1, R4, #0x30 ; '0'
ADD             R0, R0, #0x1DC
BL              sub_5A1FC8
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x41C]
BL              sub_19FEE0
LDR             R5, [R4,#4]
LDR             R0, [R6]
LDR             R0, [R0,#0x4C8]
MOV             R1, R0
LDR             R0, [R6]
BL              sub_5C6858
STRB            R0, [R5,#0x404]
STR             R7, [R5,#0x408]
LDR             R0, [R6]
BL              sub_1A0828
LDR             R0, [R6]
BL              sub_1A2810
LDR             R12, =off_6CE970
LDR             R1, [R4,#4]
LDR             R0, =0xFFE683CC
LDR             R2, =0x30749
LDR             R12, [R12]
POP             {R4-R8,LR}
MOV             R3, #0
SUB             R0, R12, R0
B               sub_503720
