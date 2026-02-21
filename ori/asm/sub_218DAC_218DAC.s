PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R0, [R0,#0x148]
MOV             R5, R1
MOV             R6, R2
CMP             R0, #0
BEQ             loc_218E3C
BL              sub_592EDC
MOV             R0, R5
ADD             R0, R0, #0xA0
MOV             R7, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R2, #0
MOV             R3, #0x100
STR             R2, [SP,#0x20+var_20]
STRD            R2, R3, [SP,#0x20+var_1C]
MOV             R1, R0
MOV             R3, R2
LDR             R0, [R4,#0x148]
MOV             R2, R7
BL              sub_1137FC
LDR             R0, [R4,#0x148]
NOP
BL              sub_14D500
LDR             R0, [R4,#0x148]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, R6
BL              sub_11DCDC
MOV             R0, #1
STRB            R0, [R4,#0xFD]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R2, R3
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#0x3B8]
MOV             R0, #0x104
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_5931A8
STR             R0, [R4,#0x148]
NOP
B               loc_218DD0
