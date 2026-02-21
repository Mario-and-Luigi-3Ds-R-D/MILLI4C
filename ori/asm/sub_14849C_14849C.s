PUSH            {R4,LR}
LDR             R4, [R0,#8]
SUB             SP, SP, #0x10
VLDM            R3, {S0-S3}
CMP             R1, #5; switch 5 cases
VSTMEA          SP, {S0-S3}
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1484B4; jumptable 001484B4 default case
DCD loc_1484D0; jump table for switch statement
VLDM            R2, {S0-S2}; jumptable 001484B4 case 0
VLDR            S4, [R2,#0xC]
VLDMEA          SP, {S5-S7}
VMUL.F32        S3, S3, S4
VMUL.F32        S0, S5, S0
VMUL.F32        S1, S6, S1
VMUL.F32        S2, S7, S2
VSTMEA          SP, {S0-S3}
B               def_1484B4; jumptable 001484B4 default case
VMOV.F32        S7, S0; jumptable 001484B4 case 1
VLDR            S3, [R2]
VLDR            S2, [R2,#4]
VLDR            S6, [SP,#0x18+var_14]
VLDR            S1, [R2,#8]
VLDR            S5, [SP,#0x18+var_10]
VLDR            S4, [R2,#0xC]
VLDR            S0, [SP,#0x18+var_C]
VADD.F32        S3, S7, S3
VADD.F32        S2, S6, S2
VADD.F32        S1, S5, S1
VADD.F32        S0, S0, S4
MOV             R0, SP
VSTR            S3, [SP,#0x18+var_18]
VSTR            S2, [SP,#0x18+var_14]
VSTR            S1, [SP,#0x18+var_10]
VSTR            S0, [SP,#0x18+var_C]
B               loc_14856C
VLDM            R2, {S1-S4}; jumptable 001484B4 case 2
VMOV.F32        S7, S0
MOV             R0, SP
VLDR            S0, [SP,#0x18+var_C]
VLDR            S5, [SP,#0x18+var_10]
VLDR            S6, [SP,#0x18+var_14]
VSUB.F32        S0, S0, S4
VSUB.F32        S3, S5, S3
VSUB.F32        S1, S7, S1
VSUB.F32        S2, S6, S2
VSTR            S0, [SP,#0x18+var_C]
VSTMEA          SP, {S1-S3}
BL              sub_4656BC
B               def_1484B4; jumptable 001484B4 default case
VLDR            S0, =1.0; jumptable 001484B4 case 3
VLDR            S1, [R3]
VLDR            S5, [R3]
VLDR            S3, [R3,#4]
VSUB.F32        S1, S0, S1
VLDR            S2, [R3,#8]
VLDR            S4, [R3,#0xC]
VSUB.F32        S3, S0, S3
VSUB.F32        S2, S0, S2
VSUB.F32        S4, S0, S4
VLDR            S0, [R2,#0xC]
MOV             R0, SP
VSUB.F32        S1, S1, S5
VMLA.F32        S5, S0, S1
VSTR            S5, [SP,#0x18+var_18]
VLDR            S1, [R3,#4]
VSUB.F32        S3, S3, S1
VMLA.F32        S1, S0, S3
VSTR            S1, [SP,#0x18+var_14]
VLDR            S1, [R3,#8]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x18+var_10]
VLDR            S1, [R3,#0xC]
VSUB.F32        S2, S4, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x18+var_C]
BL              sub_4656BC
NOP
NOP
B               def_1484B4; jumptable 001484B4 default case
VLDR            S4, [R2]; jumptable 001484B4 case 4
VLDR            S1, [R2,#0xC]
VLDR            S0, [R3,#4]
ADD             R2, R2, #4
MOV             R0, SP
VLDM            R2, {S2-S3}
VMUL.F32        S5, S4, S0
VMUL.F32        S4, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VMOV.F32        S0, S1
VLDR            S1, [R3]
VSUB.F32        S5, S5, S1
VMLA.F32        S1, S0, S5
VSTR            S1, [SP,#0x18+var_18]
VLDR            S1, [R3,#4]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x18+var_14]
VLDR            S1, [R3,#8]
VSUB.F32        S2, S3, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x18+var_10]
VLDR            S1, [R3,#0xC]
VSUB.F32        S2, S4, S1
VMLA.F32        S1, S0, S2
VSTR            S1, [SP,#0x18+var_C]
BL              sub_4656BC
LDMFD           SP, {R0-R3}; jumptable 001484B4 default case
ADD             R4, R4, #0xB4
STM             R4, {R0-R3}
ADD             SP, SP, #0x10
POP             {R4,PC}
