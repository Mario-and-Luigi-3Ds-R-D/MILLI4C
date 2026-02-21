PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R6, R4, #0x400
LDR             R5, =0xFFE683CC
LDR             R7, =off_6CE970
ADD             R6, R6, #0x2C8
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R1]
VLDR            S16, =0.5
ADD             R1, R4, #0x400
ADD             R1, R1, #0x198
LDRB            R0, [R0,#0x1E]
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_26E6D4; jumptable 0026E6D4 default case
DCD loc_26E6F4; jump table for switch statement
MOV             R2, #1; jumptable 0026E6D4 cases 0-2
ADD             R0, SP, #0x38+var_34
BL              sub_14C614
MOV             R0, #0x400
NOP
BL              sub_11C418
VMOV            S0, R0
VLDR            S1, [SP,#0x38+var_34]
LDR             R1, =0x300E1
MOV             R2, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x38+var_34]
LDR             R0, [R7]
SUB             R0, R0, R5
BL              sub_503414
LDR             R0, [R4,#0x584]
LDR             R2, [R4,#0x580]
LDR             R1, =0x2AAAAAAB
SUB             R0, R0, R2
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
CMP             R0, #2
BEQ             loc_26E810
MOV             R1, #2
MOV             R2, #1
STRB            R1, [R4,#0x5A8]
STR             R2, [R4,#0x5AC]
LDR             R0, [R4,#0xC4]
MOV             R5, R4
CMP             R0, #0
BEQ             loc_26E788
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
LDR             R0, [R7]
MOV             R3, #0
ADD             R4, SP, #0x38+var_2C
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0xB4
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R5
BLNE            sub_26D434
STR             R0, [SP,#0x38+var_2C]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_24]
STR             R0, [SP,#0x38+var_28]
MOV             R1, R4
MOV             R2, #0
MOV             R0, R6
BL              sub_61F1E4
LDR             R1, [SP,#0x38+var_24]
ADD             R0, SP, #0x38+var_28
CMP             R1, R0
BNE             loc_26E7F8
LDR             R0, [SP,#0x38+var_2C]
CMP             R0, #0
BEQ             loc_26E7F8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x38+var_28]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x1C; jumptable 0026E6D4 default case
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R7]
MOV             R3, #0
ADD             R5, SP, #0x38+var_34
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_26FBAC
STR             R0, [SP,#0x38+var_34]
ADD             R0, R5, #4
STR             R0, [SP,#0x38+var_2C]
STR             R0, [SP,#0x38+var_30]
MOV             R1, R5
MOV             R2, #0
MOV             R0, R6
BL              sub_61F1E4
LDR             R1, [SP,#0x38+var_2C]
ADD             R0, SP, #0x38+var_30
CMP             R1, R0
BNE             loc_26E880
LDR             R0, [SP,#0x38+var_34]
CMP             R0, #0
BEQ             loc_26E880
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x38+var_30]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
MOV             R2, #1; jumptable 0026E6D4 cases 3-5
ADD             R0, SP, #0x38+var_34
BL              sub_14C614
MOV             R0, #0x400
NOP
BL              sub_11C418
VMOV            S0, R0
VLDR            S1, [SP,#0x38+var_34]
LDR             R1, =0x300E0
MOV             R2, #0
VCVT.F32.U32    S0, S0
VMUL.F32        S2, S0, S16
VDIV.F32        S0, S1, S2
VSTR            S0, [SP,#0x38+var_34]
LDR             R0, [R7]
SUB             R0, R0, R5
BL              sub_503414
LDR             R0, [R7]
MOV             R3, #0
ADD             R5, SP, #0x38+var_28
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_26FBAC
STR             R0, [SP,#0x38+var_28]
ADD             R0, R5, #4
STR             R0, [SP,#0x38+var_20]
STR             R0, [SP,#0x38+var_24]
MOV             R1, R5
MOV             R2, #0
MOV             R0, R6
BL              sub_61F1E4
LDR             R1, [SP,#0x38+var_20]
ADD             R0, SP, #0x38+var_24
CMP             R1, R0
BNE             loc_26E94C
LDR             R0, [SP,#0x38+var_28]
CMP             R0, #0
BEQ             loc_26E94C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x38+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
