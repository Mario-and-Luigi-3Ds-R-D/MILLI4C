PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
MOV             R5, R1
LDR             R1, [R4,#0x800]
MOV             R2, #0
LDR             R3, [R0,#0x278]
MOV             R0, R4
BLX             R3
VLDR            S0, =0.0
ADD             R2, R4, #0x2400
CMP             R5, #0
ADD             R2, R2, #0x298
ADD             R1, R4, #0x2400
ADD             R0, R4, #0x400
BEQ             loc_171D24
CMP             R5, #1
BEQ             loc_171DE4
CMP             R5, #2
BEQ             loc_171EB0
CMP             R5, #3
BNE             loc_172048
B               loc_171F7C
LDR             R3, [R0,#0x224]
STR             R3, [R1,#0x2C4]
LDR             R3, [R0,#0x228]
STR             R3, [R1,#0x2C8]
LDR             R3, [R0,#0x234]
STR             R3, [R1,#0x2CC]
VSTR            S0, [R1,#0x2D0]
LDRB            R1, [R2]
CMP             R1, #1
BEQ             loc_171D60
CMP             R1, #3
BEQ             loc_171D98
CMP             R1, #2
BEQ             loc_171DD4
B               loc_172048
VLDR            S0, [R4,#0x118]
VLDR            S2, [R0,#0x1BC]
VSUB.F32        S3, S0, S2
VSTR            S3, [R4,#0x108]
VLDR            S1, [R4,#0x11C]
VLDR            S0, [R0,#0x1C0]
VSUB.F32        S1, S1, S0
VSUB.F32        S0, S0, S2
VSTR            S1, [R4,#0x10C]
VSTR            S3, [R4,#0x118]
VLDR            S2, [R0,#0x1CC]
VSUB.F32        S0, S2, S0
VSUB.F32        S0, S1, S0
B               loc_171DCC
VLDR            S0, [R4,#0x118]
VLDR            S3, [R0,#0x1C0]
VSUB.F32        S2, S0, S3
VSTR            S2, [R4,#0x108]
VLDR            S0, [R4,#0x11C]
VLDR            S1, [R0,#0x1BC]
VADD.F32        S0, S0, S1
VSUB.F32        S1, S3, S1
VSTR            S0, [R4,#0x10C]
VSTR            S2, [R4,#0x118]
VLDR            S2, [R0,#0x1CC]
VSUB.F32        S1, S2, S1
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x11C]
B               loc_172048
VLDR            S1, [R0,#0x1CC]
VLDR            S0, [R4,#0x11C]
VSUB.F32        S0, S0, S1
B               loc_171F74
VSTR            S0, [R1,#0x2C4]
LDR             R3, [R0,#0x234]
STR             R3, [R1,#0x2C8]
VLDR            S0, [R0,#0x224]
VNEG.F32        S0, S0
VSTR            S0, [R1,#0x2CC]
VLDR            S0, [R0,#0x228]
VNEG.F32        S0, S0
VSTR            S0, [R1,#0x2D0]
LDRB            R1, [R2]
CMP             R1, #2
BEQ             loc_171E28
CMP             R1, #0
BEQ             loc_171E5C
CMP             R1, #3
BEQ             loc_171E98
B               loc_172048
VLDR            S0, [R4,#0x118]
VLDR            S3, [R0,#0x1C0]
VSUB.F32        S1, S0, S3
VSTR            S1, [R4,#0x108]
VLDR            S0, [R4,#0x11C]
VLDR            S2, [R0,#0x1BC]
VADD.F32        S0, S0, S2
VSUB.F32        S2, S3, S2
VSTR            S0, [R4,#0x10C]
VLDR            S3, [R0,#0x1CC]
VSUB.F32        S2, S3, S2
VSUB.F32        S1, S1, S2
B               loc_17202C
VLDR            S0, [R4,#0x118]
VLDR            S1, [R0,#0x1BC]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x108]
VLDR            S2, [R4,#0x11C]
VLDR            S3, [R0,#0x1C0]
VADD.F32        S2, S2, S3
VSUB.F32        S1, S3, S1
VSTR            S2, [R4,#0x10C]
VLDR            S3, [R0,#0x1CC]
VSUB.F32        S1, S3, S1
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x118]
VSTR            S2, [R4,#0x11C]
B               loc_172048
VLDR            S1, [R0,#0x1CC]
VLDR            S0, [R4,#0x118]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x108]
VSTR            S0, [R4,#0x118]
B               loc_172048
VLDR            S1, [R0,#0x228]
VNEG.F32        S1, S1
VSTR            S1, [R1,#0x2C4]
VLDR            S1, [R0,#0x224]
VNEG.F32        S1, S1
VSTR            S1, [R1,#0x2C8]
VSTR            S0, [R1,#0x2CC]
VLDR            S0, [R0,#0x234]
VNEG.F32        S0, S0
VSTR            S0, [R1,#0x2D0]
LDRB            R1, [R2]
CMP             R1, #1
BEQ             loc_171EF8
CMP             R1, #3
BEQ             loc_171F30
CMP             R1, #0
BEQ             loc_171F68
B               loc_172048
VLDR            S0, [R4,#0x118]
VLDR            S3, [R0,#0x1C0]
VADD.F32        S0, S0, S3
VSTR            S0, [R4,#0x108]
VLDR            S2, [R4,#0x11C]
VLDR            S1, [R0,#0x1BC]
VSUB.F32        S2, S2, S1
VSUB.F32        S1, S3, S1
VSTR            S2, [R4,#0x10C]
VSTR            S0, [R4,#0x118]
VLDR            S0, [R0,#0x1CC]
VSUB.F32        S0, S0, S1
VADD.F32        S0, S0, S2
B               loc_171DCC
VLDR            S0, [R4,#0x118]
VLDR            S2, [R0,#0x1BC]
VADD.F32        S1, S0, S2
VSTR            S1, [R4,#0x108]
VLDR            S0, [R4,#0x11C]
VLDR            S3, [R0,#0x1C0]
VADD.F32        S0, S0, S3
VSUB.F32        S2, S3, S2
VSTR            S0, [R4,#0x10C]
VSTR            S1, [R4,#0x118]
VLDR            S1, [R0,#0x1CC]
VSUB.F32        S1, S1, S2
VADD.F32        S0, S1, S0
B               loc_171DCC
VLDR            S1, [R0,#0x1CC]
VLDR            S0, [R4,#0x11C]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x10C]
B               loc_171DCC
VLDR            S1, [R0,#0x234]
VNEG.F32        S1, S1
VSTR            S1, [R1,#0x2C4]
VSTR            S0, [R1,#0x2C8]
LDR             R3, [R0,#0x228]
STR             R3, [R1,#0x2CC]
LDR             R3, [R0,#0x224]
STR             R3, [R1,#0x2D0]
LDRB            R1, [R2]
CMP             R1, #2
BEQ             loc_171FBC
CMP             R1, #0
BEQ             loc_171FFC
CMP             R1, #1
BEQ             loc_172034
B               loc_172048
VLDR            S0, [R4,#0x118]
VLDR            S2, [R0,#0x1BC]
ADD             R1, R4, #0x118
VSUB.F32        S0, S0, S2
VSTR            S0, [R4,#0x108]
VLDR            S1, [R4,#0x11C]
VLDR            S3, [R0,#0x1C0]
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S3, S2
VSTR            S1, [R4,#0x10C]
VLDR            S3, [R0,#0x1CC]
VSUB.F32        S2, S3, S2
VADD.F32        S0, S2, S0
VSTM            R1, {S0-S1}
B               loc_172048
DCFS 0.0
VLDR            S0, [R4,#0x118]
VLDR            S1, [R0,#0x1C0]
VADD.F32        S2, S0, S1
VSTR            S2, [R4,#0x108]
VLDR            S0, [R4,#0x11C]
VLDR            S3, [R0,#0x1BC]
VSUB.F32        S0, S0, S3
VSUB.F32        S1, S1, S3
VSTR            S0, [R4,#0x10C]
VLDR            S3, [R0,#0x1CC]
VSUB.F32        S1, S3, S1
VADD.F32        S1, S1, S2
VSTR            S1, [R4,#0x118]
B               loc_171DCC
VLDR            S1, [R0,#0x1CC]
VLDR            S0, [R4,#0x118]
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x108]
VSTR            S0, [R4,#0x118]
STRB            R5, [R2]
LDR             R0, [R4]
LDR             R1, [R0,#0x288]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x28C]
MOV             R0, R4
POP             {R4-R6,LR}
BX              R1
