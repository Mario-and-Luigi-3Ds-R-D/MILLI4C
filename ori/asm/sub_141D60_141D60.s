PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R1, #2
MOV             R5, #0
STRB            R1, [R4,#0xD]
STRB            R5, [R4,#0xC]
STR             R5, [R4,#8]
STRB            R5, [R4,#0x6E]
STRB            R5, [R4,#0x6F]
LDRH            R1, [R0,#0x1E]!
VLDR            S1, =1.0
VLDR            S0, =0.0
BIC             R1, R1, #0x7F
ORR             R1, R1, #5
STRH            R1, [R0]
VSTR            S1, [R4,#0x68]
LDRH            R0, [R4,#0x6C]
VMOV            R1, S1
ORR             R0, R0, #1
STRH            R0, [R4,#0x6C]
VMOV            R0, S0
STR             R1, [R4,#0x38]
STR             R0, [R4,#0x40]
STR             R1, [R4,#0x3C]
STR             R0, [R4,#0x44]
STR             R0, [R4,#0x48]
STR             R0, [R4,#0x4C]
STR             R0, [R4,#0x50]
STR             R0, [R4,#0x54]
VMOV            R0, S0
STR             R0, [R4,#0x58]
STR             R0, [R4,#0x5C]
STR             R0, [R4,#0x60]
STR             R0, [R4,#0x64]
LDRH            R0, [R4,#0x6C]
ORR             R0, R0, #1
STRH            R0, [R4,#0x6C]
LDR             R0, =0x7FD8
LDRH            R1, [R4,#0x6C]
STR             R0, [R4,#0x20]
ORR             R2, R1, #2
VSTR            S1, [R4,#0x24]
UXTH            R0, R2
ORR             R1, R0, #2
MOV             R0, #0
STRB            R0, [R4,#0xE]
UXTH            R0, R1
ORR             R0, R0, #0x20 ; ' '
STRH            R0, [R4,#0x6C]
MOV             R0, #0
STRB            R0, [R4,#0xF]
LDRH            R0, [R4,#0x6C]
ORR             R0, R0, #4
STRH            R0, [R4,#0x6C]
ADD             R0, R4, #0x14
STR             R5, [R4,#0x10]
BL              sub_141ED4
STR             R5, [R4,#0x2C]
STR             R5, [R4,#0x30]
STRH            R5, [R4,#0x34]
STRH            R5, [R4,#0x36]
STRH            R5, [R4,#6]
POP             {R4-R6,PC}
