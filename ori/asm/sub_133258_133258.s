PUSH            {R4-R6,LR}
MOV             R4, R1
LDRH            R1, [R2,#2]
ADD             R0, R0, R4
MOV             R5, R2
CMP             R1, #0
MOVNE           R1, #1
STRB            R1, [R0,#6]
BL              sub_12911C
MOV             R2, R5
MOV             R1, R4
POP             {R4-R6,LR}
NOP
LDRH            R3, [R2]
ADD             R12, R1, R1,LSL#2
ADD             R12, R12, R1,LSL#3
TST             R3, #1
LDRHNE          R3, [R2,#2]
ADD             R0, R0, R12,LSL#2
STRHNE          R3, [R0,#0x2A]
LDRH            R3, [R2]
TST             R3, #4
BEQ             loc_13331C
LDRH            R3, [R2,#6]
STRH            R3, [R0,#0x2E]
LDRH            R3, [R2,#0x1C]
STRH            R3, [R0,#0x44]
LDRH            R3, [R2,#0x1E]
STRH            R3, [R0,#0x46]
LDRH            R3, [R2,#0x20]
STRH            R3, [R0,#0x48]
LDRH            R3, [R2,#0x22]
STRH            R3, [R0,#0x4A]
LDRH            R3, [R2,#0x24]
STRH            R3, [R0,#0x4C]
LDRH            R3, [R2,#0x26]
STRH            R3, [R0,#0x4E]
LDRH            R3, [R2,#0x28]
STRH            R3, [R0,#0x50]
LDRH            R3, [R2,#0x2A]
STRH            R3, [R0,#0x52]
LDRH            R3, [R2,#0x2C]
STRH            R3, [R0,#0x54]
LDRH            R3, [R2,#0x2E]
STRH            R3, [R0,#0x56]
LDRH            R3, [R2,#0x30]
STRH            R3, [R0,#0x58]
LDRH            R3, [R2,#0x32]
STRH            R3, [R0,#0x5A]
LDRH            R3, [R2]
TST             R3, #2
BEQ             loc_133350
LDR             R3, [R2,#8]
STR             R3, [R0,#0x30]
LDR             R3, [R2,#0xC]
STR             R3, [R0,#0x34]
LDR             R3, [R2,#0x10]
STR             R3, [R0,#0x38]
LDR             R3, [R2,#0x14]
STR             R3, [R0,#0x3C]
LDR             R3, [R2,#0x18]
STR             R3, [R0,#0x40]
LDR             R0, =dword_70EE68
B               sub_133480
