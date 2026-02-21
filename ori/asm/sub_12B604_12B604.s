PUSH            {R4-R6,LR}
MOV             R6, #0
MOV             R5, R1
VPUSH           {D8}
VLDR            S0, =0.0
STR             R6, [R0],#4
BL              sub_124A24
SUB             R4, R0, #4
ADD             R0, R0, #0x18
CMP             R5, #0
STR             R0, [R4,#0x18]
BEQ             loc_12B690
LDRB            R0, [R5,#8]
STRH            R0, [R4,#0x1C]
LDRH            R0, [R5]
STRH            R0, [R4,#0x1E]
LDRB            R0, [R5,#9]
STRH            R0, [R4,#0x20]
LDRH            R0, [R5,#2]
STRH            R0, [R4,#0x22]
LDRB            R0, [R5,#0xA]
STRH            R0, [R4,#0x24]
LDRH            R0, [R5,#4]
STRH            R0, [R4,#0x26]
LDRB            R0, [R5,#0xB]
STRH            R0, [R4,#0x28]
LDRH            R0, [R5,#6]
STRH            R0, [R4,#0x2A]
ADD             R6, R4, #0x28 ; '('
LDR             R0, [R4,#0x18]
LDRSH           R5, [R0,#2]
LDRSH           R1, [R0]
CMP             R5, #0
BNE             loc_12B6CC
B               loc_12B6BC
STRH            R6, [R4,#0x1C]
MOV             R0, #0x7F
STRH            R6, [R4,#0x1E]
STRH            R0, [R4,#0x20]
STRH            R6, [R4,#0x22]
STRH            R0, [R4,#0x24]
STRH            R6, [R4,#0x26]
MOV             R1, #0x64 ; 'd'
STRH            R0, [R4,#0x28]
STRH            R1, [R4,#0x2A]
B               loc_12B674
ADD             R0, R0, #4
CMP             R0, R6
STR             R0, [R4,#0x18]
BCC             loc_12B678
VMOV            S0, R1
VLDR            S16, =0.007874
MOV             R2, #0
MOV             R1, R2
ADD             R0, R4, #4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_140098
LDR             R0, [R4,#0x18]
MOV             R2, #0
MOV             R1, R5
CMP             R0, R6
LDRSHCC         R0, [R0,#4]
LDRSHCS         R0, [R4,#0x28]
VMOV            S0, R0
ADD             R0, R4, #4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
BL              sub_140098
MOV             R0, R4
NOP
BL              sub_1344D8
LDR             R0, [R4]
ORR             R0, R0, #2
STR             R0, [R4]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,PC}
