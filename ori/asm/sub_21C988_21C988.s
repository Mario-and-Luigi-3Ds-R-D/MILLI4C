PUSH            {R4-R8,LR}
MOV             R5, R0
LDR             R8, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
LDR             R0, [R8]
LDR             R6, [R5,#0x1C0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDR             R4, [R6,#8]
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
CMP             R4, R6
VMOV            S0, R0
MOVNE           R7, #0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_21CA44
LDRB            R1, [R4,#0xC]
MOV             R0, R4
CMP             R1, #0
BNE             loc_21CA08
LDRB            R1, [R0,#0xD]
CMP             R1, #0
BEQ             loc_21CA38
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#0x14]
BLX             R1
LDRB            R1, [R4,#0xC]
MOV             R0, R4
CMP             R1, #0
BEQ             loc_21CA38
LDR             R1, [R0,#8]
LDR             R2, [R0,#4]
STR             R2, [R1,#4]
ADD             R1, R0, #4
MOV             R4, R2
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R7, [R0,#8]
STR             R7, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_21C9CC
LDRB            R0, [R5,#0x1E0]
CMP             R0, #0
BEQ             loc_21CA5C
CMP             R0, #1
BNE             loc_21CADC
B               loc_21CAC8
LDR             R0, [R5,#0x1C0]
LDR             R1, [R0,#8]
CMP             R1, R0
BNE             loc_21CADC
LDR             R0, [R8]
BL              sub_5EE764
CMP             R0, #0
NOP
BNE             loc_21CADC
BL              sub_4A3574
STR             R0, [R5,#0x1DC]
LDR             R1, [R5,#0x1C0]
LDR             R1, [R1,#4]
STR             R1, [R0,#4]
LDR             R1, [R5,#0x1C0]
STR             R1, [R0,#8]
LDR             R1, [R5,#0x1C0]
LDR             R1, [R1,#4]
STR             R0, [R1,#8]
LDR             R1, [R5,#0x1C0]
STR             R0, [R1,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #1
STRB            R0, [R5,#0x1E0]
B               loc_21CADC
LDR             R0, [R5,#0x1C0]
LDR             R1, [R0,#8]
CMP             R1, R0
MOVEQ           R0, #0
BEQ             loc_21CAE0
MOV             R0, #1
VPOP            {D8}
POP             {R4-R8,PC}
