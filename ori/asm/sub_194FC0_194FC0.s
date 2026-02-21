PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R2, R4, #0x400
ADD             R2, R2, #0x28 ; '('
VPUSH           {D8}
ADD             R1, R4, #0x400
LDR             R0, [R0,#0x164]
ADD             R1, R1, #0xB5
VLDR            S16, =0.0
BIC             R0, R0, #7
STR             R0, [R4,#0x164]
LDRB            R0, [R4,#0x1AC]
ADD             R5, R4, #0x400
LDR             R3, =0x3FFFF000
BIC             R0, R0, #1
STRB            R0, [R4,#0x1AC]
LDRB            R12, [R4,#0x1F4]
MOV             R7, #0
ADD             R0, R4, #0x400
BIC             R12, R12, #1
STRB            R12, [R4,#0x1F4]
LDRB            R12, [R4,#0x3F8]
ADD             R0, R0, #0x258
BIC             R12, R12, #7
STRB            R12, [R4,#0x3F8]
LDRB            R12, [R4,#0x428]
BIC             R12, R12, #7
STRB            R12, [R2]
LDRB            R12, [R4,#0x4B5]
BIC             R12, R12, #3
STRB            R12, [R1]
VSTR            S16, [R4,#0x124]
VSTR            S16, [R4,#0x128]
VSTR            S16, [R4,#0x12C]
VSTR            S16, [R5,#0xB8]
STR             R7, [R4,#0x5E0]
STR             R7, [R4,#0x648]
STR             R3, [R0]
LDR             R0, [R4,#0x4EC]
MOV             R1, #0
BIC             R0, R0, #0xFF00
BIC             R0, R0, #0x1D
STR             R0, [R4,#0x4EC]
LDR             R0, [R4]
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDR             R0, [R4,#0x464]
MOV             R2, #0xFF
ADD             R6, R4, #0x800
BIC             R3, R0, #0x10000
STR             R3, [R4,#0x464]
LDR             R1, [R4,#0x828]
ADD             R0, R4, #0x800
ADD             R6, R6, #0x28 ; '('
ADD             R1, R1, #0x400
LDRH            R1, [R1,#0x68]
STRH            R1, [R5,#0x68]
STRB            R2, [R4,#0x65E]
STR             R7, [R4,#0x608]
STR             R7, [R4,#0x740]
STR             R7, [R4,#0x748]
STR             R7, [R4,#0x750]
VSTR            S16, [R0,#0x38]
VSTR            S16, [R0,#0x3C]
VSTR            S16, [R0,#0x40]
VSTR            S16, [R0,#0x2C]
VSTR            S16, [R0,#0x30]
VSTR            S16, [R0,#0x34]
LDRH            R1, [R0,#0x50]
ORR             R1, R1, #0xF
STRH            R1, [R0,#0x50]
LDRB            R0, [R4,#0xDE]
ORR             R1, R0, #1
AND             R5, R0, #1
STRB            R1, [R4,#0xDE]
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0xDE]
BIC             R0, R0, #1
ORR             R0, R0, R5
STRB            R0, [R4,#0xDE]
LDR             R0, [R6]
LDR             R0, [R0,#4]
STR             R0, [R4,#4]
VPOP            {D8}
POP             {R4-R8,PC}
