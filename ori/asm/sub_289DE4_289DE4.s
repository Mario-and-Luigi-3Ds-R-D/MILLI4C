PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R1, [R0,#0x448]
ADD             R2, R0, #0x400
LDR             R0, [R0,#0x10]
MOV             R5, #0
LDR             R12, [R1,#0x530]!
VLDR            S1, [R4,#8]
LDR             R3, [R1,#0x30]
ADD             R2, R2, #0x48 ; 'H'
SUB             SP, SP, #0xC
MLA             R1, R0, R3, R5
ADD             R5, R1, R1,LSL#1
ADD             R1, R5, R1,LSL#3
MOV             R5, #1
MLA             R0, R0, R3, R5
ADD             R1, R12, R1,LSL#2
VLDM            R1, {S2-S3}
ADD             R3, R0, R0,LSL#1
ADD             R0, R3, R0,LSL#3
VLDR            S0, [R1,#8]
ADD             R0, R12, R0,LSL#2
MOV             R1, SP
VLDM            R0, {S4-S6}
LDR             R0, [R2]
VSUB.F32        S7, S4, S2
VSUB.F32        S5, S5, S3
VSUB.F32        S4, S6, S0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1BC
VMLA.F32        S2, S1, S7
VMLA.F32        S3, S1, S5
VMLA.F32        S0, S1, S4
VLDR            S1, [R0]
VADD.F32        S1, S2, S1
VSTR            S1, [SP,#0x18+var_18]
VSTR            S3, [SP,#0x18+var_14]
LDR             R0, [R2]
VLDR            S1, [R4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1C4
VLDR            S2, [R0]
ADD             R0, R4, #0x1C
VADD.F32        S0, S0, S2
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x18+var_10]
BL              sub_14E984
ADD             R1, R4, #0x400
ADD             R0, R4, #0x400
ADD             R1, R1, #0x2C ; ','
ADD             R0, R0, #0x2C ; ','
VLDM            R1, {S0-S1}
ADD             R2, R4, #0x400
VLDR            S2, [R4,#0x48]
VLDR            S3, [R0,#8]
VLDR            S5, [R4,#0x40]
VLDR            S4, [R4,#0x44]
VADD.F32        S2, S3, S2
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S4
ADD             R2, R2, #0x14
ADD             R0, R4, #0x400
ADD             R0, R0, #0x38 ; '8'
ADD             R1, R4, #0x400
VSTM            R2, {S0-S2}
VLDR            S1, [R4,#0x40]
VLDR            S0, [R4,#0x44]
VLDR            S2, [R4,#0x48]
VLDM            R0, {S3-S5}
VADD.F32        S1, S3, S1
VADD.F32        S0, S4, S0
VADD.F32        S2, S5, S2
VSTR            S1, [R1,#0x20]
VSTR            S0, [R1,#0x24]
VSTR            S2, [R1,#0x28]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
