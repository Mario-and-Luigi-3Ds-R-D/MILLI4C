PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x20
ADD             R2, SP, #0x38+var_28
VLDR            S1, [R1]
VLDR            S3, [R0,#0x28]
VLDR            S0, [R1,#8]
VLDR            S2, [R0,#0x30]
VSUB.F32        S1, S1, S3
VLDR            S16, =0.0
VSUB.F32        S0, S0, S2
VSTR            S1, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
VSTR            S0, [SP,#0x38+var_20]
LDR             R0, [R0,#0xC78]
VLDR            S1, [R1,#4]
VLDR            S0, [R4,#0x2C]
MOV             R1, #0
LDR             R0, [R0]
VSUB.F32        S18, S1, S0
ADD             R0, R0, #0x400
VLDR            S2, [R0,#8]
VLDR            S17, [R0,#0x10]
ADD             R0, R4, #0x1E0
VADD.F32        S1, S2, S1
VSUB.F32        S19, S1, S0
VMOV.F32        S0, S17
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x38+var_34]
VSTR            S0, [SP,#0x38+var_30]
VMOV.F32        S2, S19
VMOV.F32        S1, S17
VMOV.F32        S0, S18
ADD             R2, SP, #0x38+var_34
VSTR            S16, [SP,#0x38+var_2C]
MOV             R1, #1
ADD             R0, R4, #0x1E0
BL              sub_5A28C4
MOV             R0, #6
STRB            R0, [R4,#0x3F8]
LDR             R0, =off_6CE970
MOV             R1, #0
MOV             R3, #1
ADD             R2, R4, #0x28 ; '('
LDR             R0, [R0]
STR             R1, [SP,#0x38+var_38]
LDR             R1, =0x2DB
BL              sub_52AEA8
MOV             R0, #1
STRB            R0, [R4,#0xC7C]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8-D9}
POP             {R4,PC}
