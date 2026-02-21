PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, =off_6CDD80
CMP             R1, #6; switch 6 cases
MOV             R5, #1
LDR             R0, [R0]
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1C38A0; jumptable 001C38A0 default case, case 4
DCD loc_1C3944; jump table for switch statement
STRB            R5, [R4,#0xB0]; jumptable 001C38A0 case 2
POP             {R3-R5,PC}; jumptable 001C38A0 default case, case 4
LDR             R2, [R0,#8]; jumptable 001C38A0 case 1
VLDR            S2, =2.0
LDR             R1, [R2,#0x88]
VMOV            S0, R1
LDR             R1, [R2,#0x90]
VMOV            S1, R1
LDR             R1, [R2,#0xA4]
STR             R1, [SP,#0x10+var_10]
VLDR            S3, [SP,#0x10+var_10]
LDR             R1, [R2,#0xA8]
VADD.F32        S3, S3, S0
VMOV            S4, R1
STR             R1, [SP,#0x10+var_10]
VSTR            S3, [R4,#0x10]
VSTR            S2, [R4,#0x14]
VADD.F32        S2, S4, S1
VSTR            S2, [R4,#0x18]
LDR             R0, [R0,#8]
VLDR            S2, =0.0
LDR             R1, [R0,#0xAC]
VMOV            S3, R1
STR             R1, [SP,#0x10+var_10]
LDR             R0, [R0,#0xB0]
STR             R0, [SP,#0x10+var_10]
VADD.F32        S0, S3, S0
VMOV            S3, R0
VADD.F32        S1, S3, S1
VSTR            S0, [R4,#4]
VSTR            S2, [R4,#8]
VSTR            S1, [R4,#0xC]
POP             {R3-R5,PC}
ADD             R0, R4, #4; jumptable 001C38A0 case 0
ADD             LR, R4, #0xC4
LDM             R0, {R0-R3,R5,R12}
VMOV            S5, R0
VMOV            S4, R3
STM             LR, {R0-R3,R5,R12}
VLDR            S1, [R4,#0x40]
VLDR            S3, [R4,#0x4C]
VLDR            S0, [R4,#0x48]
VLDR            S2, [R4,#0x54]
VADD.F32        S1, S1, S3
VMOV            S3, R12
VADD.F32        S2, S0, S2
VLDR            S0, =0.5
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VMOV            S2, R2
VSUB.F32        S4, S4, S1
VADD.F32        S1, S5, S1
VSUB.F32        S3, S3, S0
VADD.F32        S0, S2, S0
VSTR            S4, [R4,#0xD0]
VSTR            S1, [R4,#0xC4]
VSTR            S3, [R4,#0xD8]
VSTR            S0, [R4,#0xCC]
POP             {R3-R5,PC}
MOV             R1, #6; jumptable 001C38A0 case 3
MOV             R0, #0
STRB            R1, [R4,#0xB0]
STRB            R0, [R4,#0xB1]
POP             {R3-R5,PC}
ADD             R0, R0, #0xC00; jumptable 001C38A0 case 5
ADD             R0, R0, #0x2D4
BL              sub_5438BC
LDRB            R0, [R4,#0xB0]
STRB            R5, [R4,#0xB3]
CMP             R0, #2
BNE             def_1C38A0; jumptable 001C38A0 default case, case 4
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
MOV             R0, #9
STRB            R0, [R4,#0xB0]
POP             {R3-R5,PC}
