PUSH            {R4,R5,LR}
MOV             R4, R0
MOV             R1, #7
VPUSH           {D8}
SUB             SP, SP, #0x24
MOV             R0, #0
STRB            R1, [R4,#0x3FC]
MOV             R2, R0
STR             R0, [R4,#0x400]
MOV             R3, #0x100
MOV             R1, #0xD
ADD             R0, R4, #8
BL              sub_14C548
LDR             R0, =off_6CDA80
VLDR            S1, =-360.0
VLDR            S16, =0.0
MOV             R1, SP
LDR             R0, [R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R5, [R0]
ADD             R0, R4, #0x108
VLDR            S0, [R5,#0x9C]
VLDR            S17, [R5,#0x94]
VSTR            S16, [SP,#0x38+var_38]
VMUL.F32        S0, S0, S1
VSTR            S16, [SP,#0x38+var_34]
VSTR            S0, [SP,#0x38+var_30]
VMOV.F32        S0, S17
BL              sub_5A367C
LDRB            R0, [R4,#4]
VLDR            S1, [R4,#0x2C]
ADD             R2, SP, #0x38+var_20
CMP             R0, #0
VLDRNE          S0, [R5,#0x7C]
VLDREQ          S0, [R5,#0x88]
LDRNE           R0, [R5,#0x84]
LDREQ           R0, [R5,#0x90]
VSUB.F32        S0, S0, S1
MOV             R1, #0
VSTR            S0, [SP,#0x38+var_20]
VSTR            S16, [SP,#0x38+var_1C]
VMOV.F32        S0, S17
STR             R0, [SP,#0x38+var_18]
ADD             R0, R4, #0x1E4
BL              sub_5A2B20
VLDR            S0, =1.0
VSTR            S16, [SP,#0x38+var_2C]
VSTR            S0, [SP,#0x38+var_28]
VSTR            S16, [SP,#0x38+var_24]
VLDR            S0, [R4,#0x30]
VMOV.F32        S1, S17
ADD             R2, SP, #0x38+var_2C
VNEG.F32        S0, S0
VLDR            S2, [R5,#0x98]
MOV             R1, #1
ADD             R0, R4, #0x1E4
BL              sub_5A28C4
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8}
POP             {R4,R5,PC}
