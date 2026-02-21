PUSH            {R3-R9,LR}
ADD             R1, R2, #0x10
LDM             R1, {R1,R4,R12}
LDR             R3, =off_6CE970
LDR             R0, [R2,#8]
LDR             R2, [R2,#0xC]
UXTH            R5, R4
TST             R0, #0xFF
LDR             R0, [R3]
AND             R1, R1, #0xFF
ORR             R4, R1, R2,LSL#8
LDRNE           R1, =0x19DF78
ADDEQ           R6, R0, #0x19C000
ADDEQ           R6, R6, #0x1F40
ADDNE           R6, R0, R1
CMP             R5, #0
AND             R8, R12, #0xFF
BEQ             loc_204848
LDRB            R0, [R6,#3]
BIC             R1, R4, #0xFF
ORR             R0, R0, R1
REV             R7, R0
MOV             R0, R6
BL              sub_4E63E0
STR             R7, [R6,#4]
CMP             R8, #0
STR             R7, [R6]
BEQ             loc_204860
CMP             R8, #1
BEQ             loc_204888
CMP             R8, #2
BEQ             loc_2048B0
B               loc_2048CC
REV             R4, R4
MOV             R0, R6
BL              sub_4E63E0
STR             R4, [R6,#4]
STR             R4, [R6]
B               loc_2048CC
VMOV            S0, R5
REV             R0, R4
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
MOV             R0, R6
VCVT.F32.U32    S0, S0
BL              sub_4E665C
NOP
NOP
B               loc_2048CC
VMOV            S0, R5
REV             R0, R4
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
MOV             R0, R6
VCVT.F32.U32    S0, S0
BL              sub_4E6784
NOP
NOP
B               loc_2048CC
VMOV            S0, R5
REV             R0, R4
MOV             R1, SP
STR             R0, [SP,#0x20+var_20]
MOV             R0, R6
VCVT.F32.U32    S0, S0
BL              sub_4E6534
MOV             R0, #0
POP             {R3-R9,PC}
