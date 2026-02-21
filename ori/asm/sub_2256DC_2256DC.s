PUSH            {R4-R6,LR}
SUB             SP, SP, #0x28
MOV             R4, R0
ADD             R1, SP, #0x38+var_2C
BL              sub_5C9654
ADD             R0, R4, #0x400
ADD             R0, R0, #0x84
VLDR            S2, [SP,#0x38+var_2C]
VLDR            S1, [R0]
ADD             R5, R4, #0x400
MOV             R1, SP
VSUB.F32        S2, S2, S1
VLDR            S0, [R5,#0x94]
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_38]
VLDR            S1, [R0,#4]
VLDR            S2, [SP,#0x38+var_28]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_34]
VLDR            S1, [R0,#8]
VLDR            S2, [SP,#0x38+var_24]
ADD             R0, R4, #8
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x38+var_30]
BL              sub_14E984
LDR             R6, =off_6CDA80
VLDR            S0, =0.0
VLDR            S1, [R5,#0x94]
ADD             R1, SP, #0x38+var_20
LDR             R0, [R6]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
LDR             R0, [R0]
ADD             R0, R0, #0x400
VLDR            S2, [R0,#0x68]
VSTR            S0, [SP,#0x38+var_20]
VSTR            S0, [SP,#0x38+var_1C]
VMUL.F32        S0, S2, S1
ADD             R0, R4, #8
VSTR            S0, [SP,#0x38+var_18]
BL              sub_14E9C8
ADD             R0, R4, #0x490
BL              sub_5F1964
CMP             R0, #0
BNE             loc_225810
LDRB            R0, [R4,#4]
CMP             R0, #0
LDRNE           R0, [R6]
BLNE            sub_22B380
LDR             R0, [R4,#0x480]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_2257C0
BL              sub_533330
STR             R5, [R4,#0x480]
LDR             R0, [R6]
LDR             R1, =0x126F8
LDR             R1, [R1,R0]
LDRB            R1, [R1]
CMP             R1, #2
BEQ             loc_225818
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
MOV             R3, #0x100
LDR             R0, [R0]
MOV             R2, #0
LDR             R0, [R0,#0x4A0]
CMP             R0, R4
MOVEQ           R0, #7
MOVNE           R0, #6
AND             R1, R0, #0xFF
ADD             R0, R4, #8
BL              sub_14C548
STRB            R5, [R4,#0xFE]
STRB            R5, [R4,#0x3FC]
ADD             SP, SP, #0x28 ; '('
POP             {R4-R6,PC}
MOV             R0, R4
BL              sub_2255DC
ADD             SP, SP, #0x28 ; '('
POP             {R4-R6,PC}
