PUSH            {R3-R7,LR}
ADD             R0, R2, #0x10
MOV             R4, R2
ADD             R1, R2, #8
LDM             R0, {R0,R2,R3}
LDM             R1, {R1,R12}
AND             R2, R2, #0xFF
ORR             R5, R2, R0,LSL#8
LDR             R0, =off_6CE970
UXTH            R1, R1
UXTH            R6, R3
AND             R7, R12, #0xFF
LDR             R0, [R0]
BL              sub_528FF0
LDRH            R1, [R4]
CMP             R1, #0xD8
ADDEQ           R0, R0, #0x32C
ADDNE           R0, R0, #0x364
CMP             R6, #0
BEQ             loc_20A328
CMP             R7, #0
BEQ             loc_20A340
CMP             R7, #1
BEQ             loc_20A364
CMP             R7, #2
BEQ             loc_20A388
B               loc_20A3A0
REV             R5, R5
MOV             R4, R0
BL              sub_4E63E0
STR             R5, [R4,#4]
STR             R5, [R4]
B               loc_20A3A0
VMOV            S0, R6
REV             R2, R5
MOV             R1, SP
STR             R2, [SP,#0x18+var_18]
VCVT.F32.U32    S0, S0
BL              sub_4E665C
NOP
NOP
B               loc_20A3A0
VMOV            S0, R6
REV             R2, R5
MOV             R1, SP
STR             R2, [SP,#0x18+var_18]
VCVT.F32.U32    S0, S0
BL              sub_4E6784
NOP
NOP
B               loc_20A3A0
VMOV            S0, R6
REV             R2, R5
MOV             R1, SP
STR             R2, [SP,#0x18+var_18]
VCVT.F32.U32    S0, S0
BL              sub_4E6534
MOV             R0, #0
POP             {R3-R7,PC}
