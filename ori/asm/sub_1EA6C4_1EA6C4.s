PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_2337C4
LDR             R1, [R5,#0x47C]
STR             R1, [R4,#0x114]
LDR             R1, [R5,#0x480]
STR             R1, [R4,#0x118]
LDR             R1, [R5,#0x484]
STR             R1, [R4,#0x11C]
LDR             R1, [R5,#0x488]
STR             R1, [R4,#0x120]
LDR             R1, [R5,#0x48C]
STR             R1, [R4,#0x124]
LDR             R1, [R5,#0x490]
STR             R1, [R4,#0x128]
LDR             R1, [R5,#0x494]
STR             R1, [R4,#0x12C]
LDR             R0, [R5,#0x498]
STR             R0, [R4,#0x130]
LDRB            R1, [R5,#0x648]
ADD             R0, R5, #0x800
STRB            R1, [R4,#0x134]
LDR             R1, [R5,#0x830]
STR             R1, [R4,#0x138]
LDR             R1, [R5,#0x834]
STR             R1, [R4,#0x13C]
LDR             R1, [R5,#0x838]
STR             R1, [R4,#0x140]
LDR             R2, [R4,#0x144]
LDR             R3, [R5,#0x86C]
ADD             R1, R5, #0x800
BIC             R2, R2, #0xF
AND             R3, R3, #0xF
ORR             R2, R2, R3
STR             R2, [R4,#0x144]
LDR             R3, [R5,#0x86C]
BIC             R2, R2, #0x10
ADD             R1, R1, #0x6C ; 'l'
AND             R3, R3, #0x10
ORR             R2, R2, R3
STR             R2, [R4,#0x144]
LDR             R3, [R5,#0x86C]
BIC             R2, R2, #0x20 ; ' '
AND             R3, R3, #0x20 ; ' '
ORR             R2, R2, R3
STR             R2, [R4,#0x144]
LDR             R1, [R1]
BIC             R2, R2, #0x40 ; '@'
ADD             R3, R4, #0x100
AND             R1, R1, #0x40 ; '@'
ORR             R1, R1, R2
STR             R1, [R4,#0x144]
LDRH            R1, [R0,#0xB8]
STRH            R1, [R3,#0x48]
LDRB            R0, [R0,#0xBA]
STRB            R0, [R4,#0x14A]
LDR             R0, [R5,#0x610]!
LDR             R2, [R5,#0x2E0]
CMP             R2, #0
CMPNE           R0, #0
MOVNE           R1, #0
BEQ             loc_1EA7E4
CMP             R0, R2
BNE             loc_1EA7D0
SXTH            R0, R1
B               loc_1EA7E8
LDR             R12, [R0]
TST             R12, #1
ADDEQ           R1, R1, #1
ADDEQ           R0, R0, #0x88
BEQ             loc_1EA7C0
MOV             R0, #0xFFFFFFFF
STRH            R0, [R3,#0x4C]
POP             {R4-R6,PC}
