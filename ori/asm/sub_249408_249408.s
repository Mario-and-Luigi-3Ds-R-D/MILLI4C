PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R7, =off_6CE970
LDR             R0, [R7]
BL              sub_5EE83C
LDR             R5, =off_6CDD80
CMP             R0, #0
MOV             R6, #0
BEQ             loc_24943C
LDR             R0, [R5]
BL              sub_388744
STRB            R6, [R4,#0x4E0]
LDR             R0, [R5]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_543BC0
LDR             R0, [R7]
LDR             R12, =0xFFE683CC
LDR             R2, =0x30206
MOV             R3, #0
ADD             R1, R4, #0xEC
SUB             R0, R0, R12
BL              sub_503720
LDR             R0, [R5]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x32C
BL              sub_1C417C
MOV             R0, #8
STRB            R6, [R4,#0x509]
STRB            R0, [R4,#0x4E8]
LDR             R0, [R5]
ADD             R1, R4, #0x110
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x32C
BL              sub_1C41E8
LDR             R0, [R5]
ADD             R1, SP, #0x20+var_1C
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x2A0]
STR             R0, [SP,#0x20+var_20]
MOV             R0, #0xFFFFFF00
REV             R0, R0
STR             R0, [SP,#0x20+var_1C]
ADD             R0, R4, #0x400
VLDR            S0, [SP,#0x20+var_20]
ADD             R0, R0, #0x18
BL              sub_4E665C
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
