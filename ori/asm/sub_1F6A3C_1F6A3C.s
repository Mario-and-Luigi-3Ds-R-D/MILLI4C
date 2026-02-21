PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xB0]
CMP             R0, #0
BNE             loc_1F6AE0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R2, R4, #0xC4
VLDR            S0, =0.015
STR             R2, [R4,#0xB0]
VSTR            S0, [R4,#0x114]
MOV             R3, #1
ADD             R1, R0, #0x13800
MOV             R2, #5
STRB            R3, [R4,#0x12C]
STRB            R2, [R4,#0x12E]
ADD             R1, R1, #0x374
ADD             R0, R4, #0xC
STRB            R3, [R4,#0x12D]
STR             R1, [R0,#0xAC]
LDR             R0, [R5]
LDR             R0, [R0,#0x60]
ADD             R1, R0, #0x7E0
ADD             R0, R4, #0xC
BL              sub_19483C
MOV             R3, #0
VLDR            S0, =2.0
MOV             R2, R3
MOV             R1, R3
ADD             R0, R4, #0xC
BL              sub_1949CC
MOV             R1, #0
ADD             R0, R4, #0xC
BL              sub_194BC0
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x368
ADD             R1, R4, #0x1C8
BL              sub_2018EC
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #1
BLX             R2
LDR             R0, [R4,#4]
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x4EC]
BIC             R0, R0, #0xE0
STR             R0, [R1,#0x4EC]
BIC             R1, R0, #0x100
LDR             R0, [R4,#4]
STR             R1, [R0,#0x4EC]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x648]
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R1,#0x648]
LDR             R1, [R4,#4]
BIC             R0, R0, #1
STR             R0, [R1,#0x648]
LDR             R2, [R4,#4]
BIC             R0, R0, #2
ORR             R1, R0, #4
BIC             R3, R1, #8
STR             R0, [R2,#0x648]
LDR             R2, [R4,#4]
BIC             R0, R3, #0x10
STR             R1, [R2,#0x648]
LDR             R1, [R4,#4]
BIC             R2, R0, #0x40 ; '@'
BIC             R12, R2, #0x80
STR             R3, [R1,#0x648]
LDR             R1, [R4,#4]
STR             R0, [R1,#0x648]
LDR             R0, [R4,#4]
STR             R2, [R0,#0x648]
LDR             R0, [R4,#4]
STR             R12, [R0,#0x648]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x5E0]
BIC             R0, R0, #1
STR             R0, [R1,#0x5E0]
BIC             R1, R0, #8
LDR             R0, [R4,#4]
STR             R1, [R0,#0x5E0]
LDR             R1, [R4,#4]
LDR             R0, [R1,#0x4EC]
BIC             R0, R0, #0x10
STR             R0, [R1,#0x4EC]
BIC             R1, R0, #0xF000
LDR             R0, [R4,#4]
STR             R1, [R0,#0x4EC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xB6]
BIC             R1, R1, #1
STRH            R1, [R0,#0xB6]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x658]
BIC             R1, R1, #0xC0000000
ORR             R1, R1, #0x40000000
STR             R1, [R0,#0x658]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x464]
BIC             R1, R1, #0x700
ORR             R1, R1, #0x300
STR             R1, [R0,#0x464]
LDR             R0, [R4,#4]
LDR             R1, [R0,#0x648]
BIC             R1, R1, #0x1000000
STR             R1, [R0,#0x648]
POP             {R4-R6,PC}
