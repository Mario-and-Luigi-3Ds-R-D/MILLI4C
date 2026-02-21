PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #4
BL              sub_528E64
ADD             R6, R4, #0x1A0000
MOV             R1, #0
LDRB            R0, [R6,#0x74]
CMP             R0, #0
BEQ             loc_1D2D14
MOV             R0, #0x200
BL              sub_4802F8
CMP             R0, #0
BEQ             loc_1D2D08
MOV             R0, #0
ADD             R5, R4, #0x19C000
REV             R0, R0
ADD             R5, R5, #0x1F40
STR             R0, [SP,#0x20+var_20]
MOV             R7, R5
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x20+var_20]
STR             R0, [R5,#4]
STR             R0, [R5]
LDR             R0, =0x19DF78
ADD             R5, R4, R0
MOV             R0, #0
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x20+var_20]
VLDR            S16, =30.0
MOV             R1, SP
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFF
VMOV.F32        S0, S16
REV             R0, R0
STR             R0, [SP,#0x20+var_20]
MOV             R0, R7
BL              sub_4E665C
MOV             R0, #0xFF
VMOV.F32        S0, S16
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
MOV             R0, R5
BL              sub_4E665C
LDR             R0, =0xFFE683CC
MOV             R1, #0x1E
SUB             R0, R4, R0
BL              sub_503664
LDR             R1, =unk_653FC0
LDRD            R0, R1, [R1,#(off_6540B4 - 0x653FC0)]
STRD            R0, R1, [R6,#0x5C]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4-R7,PC}
MOV             R0, R4
BL              sub_529274
MOV             R0, R4
NOP
BL              sub_52B040
LDR             R0, =0x19DFE8
LDR             R0, [R4,R0]
BL              sub_1CC8A8
LDR             R1, =unk_653FC0
LDRD            R0, R1, [R1,#(off_6540BC - 0x653FC0)]
B               loc_1D2D04
