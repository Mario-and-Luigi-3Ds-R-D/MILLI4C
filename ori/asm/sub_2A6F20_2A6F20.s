PUSH            {R4-R7,LR}
MOV             R4, R0
MOV             R0, #0xFFFFFF00
LDR             R5, =flt_6E34B0
REV             R0, R0
SUB             SP, SP, #0x24
ADD             R1, SP, #0x38+var_28
STR             R0, [SP,#0x38+var_28]
VLDR            S0, [R5,#(flt_6E3624 - 0x6E34B0)]
ADD             R0, R4, #0xDF0
BL              sub_29FBAC
VLDR            S0, [R5,#(flt_6E3624 - 0x6E34B0)]
ADD             R2, R5, #0x164
MOV             R1, #0
ADD             R0, R4, #0x100
BL              sub_5A2298
ADD             R0, R5, #0x1A4
VLDR            S2, [R5,#(flt_6E3608 - 0x6E34B0)]
VLDR            S1, [R5,#(flt_6E360C - 0x6E34B0)]
VLDR            S0, [R5,#(flt_6E3610 - 0x6E34B0)]
MOV             R2, SP
VLDM            R0, {S3-S5}
MOV             R1, #0
ADD             R0, R4, #0x158
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S5
VSTR            S2, [SP,#0x38+var_38]
VSTR            S1, [SP,#0x38+var_34]
VSTR            S0, [SP,#0x38+var_30]
VLDR            S0, [R5,#(flt_6E3624 - 0x6E34B0)]
BL              sub_5A2298
LDRB            R0, [R4,#0xFE]
LDR             R7, =off_6CE970
CMP             R0, #0
BEQ             loc_2A7004
VLDR            S2, [R5,#(flt_6E3608 - 0x6E34B0)]
VLDR            S5, [R5,#(flt_6E366C - 0x6E34B0)]
VLDR            S1, [R5,#(flt_6E360C - 0x6E34B0)]
VLDR            S3, [R5,#(flt_6E3670 - 0x6E34B0)]
VLDR            S0, [R5,#(flt_6E3610 - 0x6E34B0)]
VLDR            S4, [R5,#(flt_6E3674 - 0x6E34B0)]
VADD.F32        S2, S2, S5
VADD.F32        S1, S1, S3
VADD.F32        S0, S0, S4
ADD             R2, SP, #0x38+var_24
MOV             R1, #0
ADD             R0, R4, #0x1B0
VSTR            S2, [SP,#0x38+var_24]
VSTR            S1, [SP,#0x38+var_20]
VSTR            S0, [SP,#0x38+var_1C]
VLDR            S0, [R5,#(flt_6E3624 - 0x6E34B0)]
BL              sub_5A2298
LDR             R1, =byte_19D697
LDR             R0, [R7]
MOV             R2, #0
STRB            R2, [R0,R1]
LDR             R0, [R4,#0x208]
BL              sub_214B40
LDR             R0, [R7]
MOV             R5, #0
BL              sub_528E64
MOV             R6, R0
LDR             R0, [R7]
BL              sub_5EE520
CMP             R0, #4
MOVEQ           R1, #0
BEQ             loc_2A7060
CMP             R0, #5
CMPNE           R0, #6
BEQ             loc_2A704C
CMP             R0, #7
MOVEQ           R1, #3
BEQ             loc_2A7060
B               loc_2A706C
LDRB            R2, [R6,#0x495]
MOV             R1, #1
MOV             R0, #2
CMP             R2, #0
MOVNE           R1, R0
LDR             R0, [R7]
BL              sub_52B778
MOV             R5, R0
ADD             R0, R4, #0xC00
ADD             R0, R0, #0x2A8
MOV             R1, #5
LDM             R0, {R0,R2}
STM             R5, {R0,R2}
STRB            R1, [R4,#0xFD]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
