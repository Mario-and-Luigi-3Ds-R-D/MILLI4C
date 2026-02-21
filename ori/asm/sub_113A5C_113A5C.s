PUSH            {R4,LR}
MOV             R1, #0
STR             R1, [R0,#4]
MOV             R4, R0
STR             R1, [R0,#8]
LDR             R0, =off_6B9698
MOV             R3, #1
STR             R0, [R4]
LDR             R0, =off_6B96DC
STR             R1, [R4,#0x10]
STRB            R3, [R4,#0x14]
STR             R0, [R4,#0xC]
STR             R1, [R4,#0x18]
STR             R1, [R4,#0x20]
STR             R1, [R4,#0x24]
STR             R1, [R4,#0x28]
ADD             R0, R4, #0x2C ; ','
MOV             R2, #0xFFFFFFFF
STM             R0, {R1,R2}
ADD             R0, R4, #0x20 ; ' '
LDR             R2, =off_6B7B0C
STR             R1, [R4,#0x38]
MOV             R1, #1
STR             R2, [R4,#0x34]
BL              sub_120E48
ADD             R0, R4, #0x28 ; '('
BL              sub_118AE8
MOV             R0, R4
POP             {R4,PC}
