PUSH            {R4-R7,LR}
SUB             SP, SP, #0x2C
MOV             R5, R0
SXTB            R4, R1
LDR             R1, =unk_69708C
ADD             R0, SP, #0x40+var_30
BL              sub_1250E0
LDRH            R1, [SP,#0x40+var_30]
ADD             R0, SP, #0x40+var_30
CMP             R1, #0
BEQ             loc_11D484
MOV             R1, R4
MOV             R0, R5
BL              sub_12437C
ADD             R1, R4, R4,LSL#2
ADD             R1, R1, R4,LSL#3
MOV             R0, #1
ADD             R1, R5, R1,LSL#2
ADD             R5, R1, #0x7000
ADD             R7, R1, #0x4000
STR             R0, [R5,#0x23C]
LDRSH           R1, [SP,#0x40+var_2E]
VLDR            S0, =0.01
ADD             R7, R7, #0x3240
STR             R1, [SP,#0x40+var_40]
LDRSH           R1, [SP,#0x40+var_2C]
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VMUL.F32        S1, S1, S0
VSTR            S1, [SP,#0x40+var_3C]
LDRSH           R1, [SP,#0x40+var_2A]
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S1, S0
VSTR            S0, [SP,#0x40+var_38]
STRB            R0, [SP,#0x40+var_34]
MOV             R0, SP
BL              sub_121834
MOV             R6, R0
MOV             R2, #3
MOV             R1, #1
BL              sub_12477C
MOV             R1, R0
STR             R0, [R5,#0x26C]
MOV             R2, R6
MOV             R0, R7
BL              sub_1217C0
MOV             R1, R4
MOV             R0, R7
BL              sub_121874
MOV             R1, SP
MOV             R0, R7
BL              sub_121A5C
MOV             R1, #1
MOV             R0, R7
BL              sub_121904
ADD             SP, SP, #0x2C ; ','
MOV             R0, R6
POP             {R4-R7,PC}
ADD             R2, R0, #2
MOV             R1, R4
MOV             R0, R5
BL              sub_124584
ADD             SP, SP, #0x2C ; ','
POP             {R4-R7,PC}
