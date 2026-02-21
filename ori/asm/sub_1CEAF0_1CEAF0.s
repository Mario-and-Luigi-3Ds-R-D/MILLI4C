PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
LDR             R0, [R5]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VLDR            S0, =256.0
VMUL.F32        S0, S16, S0
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R1, R0
ADD             R0, R4, #0x100
BL              sub_123CE8
ADD             R0, R4, #0x100
BL              sub_4857C8
VMOV.F32        S0, S16
ADD             R0, R4, #0x198
BL              sub_5A176C
LDRB            R0, [R4,#0xFD]
LDR             R6, =flt_6E2A58
CMP             R0, #0
BEQ             loc_1CEBB4
CMP             R0, #1
BEQ             loc_1CEC30
CMP             R0, #2
BNE             loc_1CEC28
LDR             R0, =0x10A
LDRH            R0, [R0,R4]
TST             R0, #1
BNE             loc_1CEC28
LDR             R0, [R4,#0xC]
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_528B1C
LDR             R0, [R4,#0x10C]
ADD             R1, R0, #0x2000
LDRB            R0, [R1,#0x235]
SUB             R0, R0, #1
ANDS            R0, R0, #0xFF
STRB            R0, [R1,#0x235]
LDR             R0, [R4,#0x10C]
BNE             loc_1CECB4
B               loc_1CEC98
VMOV.F32        S0, S16
ADD             R0, R4, #0x110
BL              sub_47F81C
MOV             R5, R0
ADD             R1, R4, #0x24 ; '$'
ADD             R0, R4, #0x110
BL              sub_5E34A8
CMP             R5, #0
NOP
BEQ             loc_1CEC28
VLDR            S0, [R6,#(flt_6E2ABC - 0x6E2A58)]
MOV             R1, #0
ADD             R0, R4, #0x198
BL              sub_5A1924
LDR             R0, [R4,#0x10C]
ADD             R1, R0, #0x2000
LDRB            R0, [R1,#0x236]
SUB             R0, R0, #1
ANDS            R0, R0, #0xFF
STRB            R0, [R1,#0x236]
LDR             R0, [R4,#0x10C]
ADD             R0, R0, #0x2000
BNE             loc_1CEC20
LDR             R0, [R0,#0x240]
LDRH            R1, [R0,#0x20]
SUB             R1, R1, #1
STRH            R1, [R0,#0x20]
MOV             R0, #1
STRB            R0, [R4,#0xFD]
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R0, R4, #0x198
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_1CEC28
LDR             R0, =0x1215CC
LDR             R3, [R5]
MOV             R2, #0xFFFFFFFF
MOV             R1, #0
ADD             R0, R0, R3; loc_1215CC
BL              sub_5F15E4
MOV             R1, R0
ADD             R0, R4, #0x100
BL              sub_123C70
LDR             R0, [R6,#(dword_6E2B28 - 0x6E2A58)]
LDR             R2, =0x30079
MOV             R3, #0
STRB            R0, [R4,#0xF6]
LDR             R0, =0xFFE683CC
LDR             R12, [R5]
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #2
NOP
B               loc_1CECB8
NOP
BL              sub_528B1C
LDR             R1, [R4,#0x10C]
MOV             R0, #0x2240
LDR             R0, [R0,R1]
ADD             R0, R0, #0x10
BL              sub_1CF9FC
MOV             R0, #3
STRB            R0, [R4,#0xFD]
VPOP            {D8}
POP             {R4-R6,PC}
