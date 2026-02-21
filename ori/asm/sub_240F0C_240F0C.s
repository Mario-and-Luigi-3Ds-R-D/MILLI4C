PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R5, R0, #0x800
LDR             R0, [R0,#0xADC]
ADD             R5, R5, #0x2DC
MOV             R6, #0
CMP             R0, #0
BEQ             loc_240F34
BL              sub_533330
STR             R6, [R5]
LDR             R0, [R4,#0xAD8]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2D8
CMP             R0, #0
BEQ             loc_240F50
BL              sub_533330
STR             R6, [R5]
LDR             R0, [R4,#0xAE0]
ADD             R5, R4, #0xAE0
CMP             R0, #0
BEQ             loc_240F68
BL              sub_533330
STR             R6, [R5]
LDR             R0, [R4,#0xA74]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x274
CMP             R0, #0
BEQ             loc_240F84
BL              sub_533330
STR             R6, [R5]
LDR             R0, [R4,#0xAF0]
CMP             R0, #0
BEQ             loc_240FCC
LDR             R0, =0x2004F
BL              sub_146084
MOV             R1, R0
LDR             R0, [R4,#0xAF0]
LDR             R1, [R1]
LDR             R2, [R0,#0x20]
CMP             R1, R2
BNE             loc_240FCC
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_240FCC
LDR             R0, [R4,#0xAF0]
MOV             R1, #0
BL              sub_234A48
LDR             R0, [R4,#0xAEC]
CMP             R0, #0
BEQ             locret_241018
LDR             R0, =0x2004C
BL              sub_146084
MOV             R1, R0
LDR             R0, [R4,#0xAEC]
LDR             R1, [R1]
LDR             R2, [R0,#0x20]
CMP             R1, R2
BNE             locret_241018
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             locret_241018
LDR             R0, [R4,#0xAEC]
POP             {R4-R6,LR}
MOV             R1, #0
B               sub_234A48
POP             {R4-R6,PC}
