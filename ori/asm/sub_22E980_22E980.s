PUSH            {R4-R6,LR}
MOV             R6, R0
VLDR            S1, =1.5708
MOV             R5, R1
VPUSH           {D8}
MOV             R4, R2
VLDR            S0, [R2,#0x10]
VSUB.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
VMOV.F32        S17, S0
BL              sub_464318
VLDR            S1, [R4,#0x1C]
VMUL.F32        S16, S0, S1
VMOV.F32        S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x1C]
VLDR            S2, [R4,#0x18]
LDR             R0, [R4,#0x34]
VMUL.F32        S1, S1, S2
CMP             R0, #0
VMUL.F32        S0, S0, S1
BEQ             loc_22EAC4
LDRB            R1, [R4]
MOVS            R1, R1,LSR#6
BEQ             loc_22EA40
CMP             R1, #1
BEQ             loc_22EA88
CMP             R1, #2
BNE             loc_22EA38
VLDR            S1, [R0,#0x108]
VLDR            S2, [R4,#0x28]
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S16
VSTR            S1, [R5]
VLDR            S2, [R4,#0x2C]
VLDR            S1, [R0,#0x10C]
VADD.F32        S1, S1, S2
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#4]
VLDR            S0, [R0,#0x110]
VLDR            S1, [R0,#0x120]
VLDR            S2, [R6,#0x110]
VSUB.F32        S0, S0, S1
VADD.F32        S0, S0, S2
VSTR            S0, [R5,#8]
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S1, [R0,#0x108]
VLDR            S2, [R0,#0x118]
VLDR            S3, [R6,#0x108]
VSUB.F32        S1, S1, S2
VADD.F32        S1, S1, S3
VSTR            S1, [R5]
VLDR            S1, [R0,#0x10C]
VLDR            S2, [R4,#0x2C]
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S16
VSTR            S1, [R5,#4]
VLDR            S1, [R0,#0x110]
VLDR            S2, [R4,#0x30]
VADD.F32        S1, S1, S2
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#8]
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S1, [R0,#0x108]
VLDR            S2, [R4,#0x28]
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S16
VSTR            S1, [R5]
VLDR            S1, [R0,#0x10C]
VLDR            S2, [R0,#0x11C]
VLDR            S3, [R6,#0x10C]
VSUB.F32        S1, S1, S2
VADD.F32        S1, S1, S3
VSTR            S1, [R5,#4]
VLDR            S1, [R0,#0x110]
VLDR            S2, [R4,#0x30]
VADD.F32        S1, S1, S2
B               loc_22EB40
LDRB            R0, [R4]
MOVS            R0, R0,LSR#6
BEQ             loc_22EB08
CMP             R0, #1
BEQ             loc_22EB28
CMP             R0, #2
BNE             loc_22EA38
VLDR            S1, [R4,#0x28]
VADD.F32        S1, S1, S16
VSTR            S1, [R5]
VLDR            S1, [R4,#0x2C]
VSUB.F32        S0, S1, S0
VSTR            S0, [R5,#4]
LDR             R0, [R6,#0x110]
STR             R0, [R5,#8]
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R6,#0x108]
STR             R0, [R5]
VLDR            S1, [R4,#0x2C]
VADD.F32        S1, S1, S16
VSTR            S1, [R5,#4]
VLDR            S1, [R4,#0x30]
VSUB.F32        S0, S1, S0
B               loc_22EA34
VLDR            S1, [R4,#0x28]
VADD.F32        S1, S1, S16
VSTR            S1, [R5]
LDR             R0, [R6,#0x10C]
STR             R0, [R5,#4]
VLDR            S1, [R4,#0x30]
VADD.F32        S0, S1, S0
B               loc_22EA34
