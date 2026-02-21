PUSH            {R4-R6,LR}
MOV             R5, R2
MOV             R4, R0
MOV             R6, R1
MOV             R2, #0
MOV             R1, #0x1E
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4]
MOV             R2, #0
MOV             R1, #0x1F
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#4]
MOV             R2, #0
MOV             R1, #0x20 ; ' '
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#8]
MOV             R2, #0
MOV             R1, #0x27 ; '''
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0xC]
MOV             R2, #0
MOV             R1, #0x21 ; '!'
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0x10]
MOV             R2, #0
MOV             R1, #0x23 ; '#'
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0x14]
MOV             R2, #0
MOV             R1, #0x25 ; '%'
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0x18]
MOV             R2, #0
MOV             R1, #0x22 ; '"'
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0x1C]
MOV             R2, #0
MOV             R1, #0x24 ; '$'
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0x20]
MOV             R2, #0
MOV             R1, #0x26 ; '&'
MOV             R0, R5
BL              sub_5F1648
STR             R0, [R4,#0x24]
MOV             R2, #0
MOV             R1, #0x31 ; '1'
MOV             R0, R6
BL              sub_5F1648
STR             R0, [R4,#0x28]
MOV             R2, #0
MOV             R1, #0x32 ; '2'
MOV             R0, R6
BL              sub_5F1648
STR             R0, [R4,#0x2C]
POP             {R4-R6,PC}
