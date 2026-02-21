PUSH            {R4,LR}
LDR             R3, [R1,#0x24]
SUB             SP, SP, #0x28
VLDR            S0, [R1,#0x1C]
VLDR            S1, [R1,#0x2C]
VSTR            S0, [SP,#0x30+var_14]
STR             R3, [SP,#0x30+var_10]
VSTR            S1, [SP,#0x30+var_C]
LDRH            R12, [R1]
TST             R12, #8
BEQ             loc_18D8B0
LDR             R3, =off_6D1648
MOV             R12, R12,LSL#23
LDR             R3, [R3]
LDR             R3, [R3,#0xC4]
LDR             R3, [R3,#4]
LDR             R4, [R3,#0x14]
TST             R4, #0x400000
LDREQ           R3, [R3,#4]
LDRNE           R3, [R3,#8]
MOVS            R12, R12,LSR#28
BEQ             loc_18D804
CMP             R12, #4
BEQ             loc_18D858
CMP             R12, #8
BEQ             loc_18D804
CMP             R12, #0xC
BNE             loc_18D8B0
B               loc_18D858
VLDR            S5, [R3,#0x108]
ADD             R4, R1, #0x1C
ADD             R3, R3, #0x400
VLDM            R4, {S6-S7}
VLDR            S1, [R3,#0x1BC]
VLDR            S2, [R1,#4]
VLDR            S3, [R3,#0x1C0]
VSUB.F32        S8, S6, S1
VSUB.F32        S2, S2, S1
VSUB.F32        S7, S7, S3
VLDR            S4, [R1,#8]
VSUB.F32        S6, S4, S3
VSUB.F32        S3, S5, S2
VSUB.F32        S4, S7, S8
VSUB.F32        S2, S6, S2
VMUL.F32        S3, S3, S4
VDIV.F32        S4, S3, S2
VADD.F32        S0, S4, S0
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_14]
B               loc_18D8B0
ADD             R4, R1, #0x2C ; ','
VLDR            S4, [R3,#0x110]
ADD             R3, R3, #0x400
VLDM            R4, {S6-S7}
ADD             R4, R3, #0x1C4
VLDR            S0, [R1,#0x14]
VLDR            S5, [R1,#0x18]
VLDM            R4, {S2-S3}
VSUB.F32        S0, S0, S2
VSUB.F32        S7, S7, S3
VSUB.F32        S2, S6, S2
VSUB.F32        S5, S5, S3
VSUB.F32        S3, S7, S2
VSUB.F32        S2, S4, S0
VSUB.F32        S0, S5, S0
VMUL.F32        S2, S2, S3
VDIV.F32        S3, S2, S0
VADD.F32        S0, S3, S1
VSTR            S0, [SP,#0x30+var_C]
VLDR            S1, [R3,#0x1C4]
VSUB.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_C]
ADD             R4, SP, #0x30+var_24
MOV             R12, #1
STM             R4, {R2,R12}
ADD             R4, SP, #0x30+var_1C
MOV             R3, #0xFFFFFFFF
STM             R4, {R3,R12}
ADD             LR, SP, #0x30+var_2C
LDRH            R2, [R1]
MOV             R4, #0xFFFFFFFD
AND             R12, R2, #0x10
MOV             R12, R12,LSR#4
STR             R12, [SP,#0x30+var_30]
STM             LR, {R3,R4}
MOV             R3, R2,LSL#23
LDR             R2, [R0]
LDRSH           R1, [R1,#2]
MOV             R3, R3,LSR#28
LDR             R12, [R2,#0x288]
ADD             R2, SP, #0x30+var_14
BLX             R12
ADD             SP, SP, #0x28 ; '('
POP             {R4,PC}
