PUSH            {R4-R7,LR}
MOV             R5, R1
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDRB            R1, [R0,#0x18D]
LDR             R0, [R0,#8]
VLDR            S16, =1.5708
VLDR            S18, =-1.5708
VLDR            S17, =0.0
CMP             R1, #0
BEQ             loc_29C8C4
VLDR            S0, [R5,#0xC]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_29CA68
ADD             R6, R4, #0x1C8
ADD             R7, R0, #0x108
MOV             R0, R6
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
MOV             R1, SP
LDR             R0, [R4,#8]
VLDR            S0, [R5,#0xC]
VLDR            S4, [R5,#8]
ADD             R0, R0, #0x108
VLDR            S5, [R5,#4]
VLDM            R0, {S1-S3}
VADD.F32        S1, S1, S5
VADD.F32        S0, S3, S0
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x40+var_38]
VSTMEA          SP, {S1-S2}
LDRH            R0, [R5,#2]
VMOV            S0, R0
ADD             R0, R4, #0x1C8
VCVT.F32.U32    S0, S0
BL              sub_5A2138
LDRB            R0, [R4,#0x18D]
B               loc_29CB98
VLDR            S0, [R5,#4]
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
BNE             loc_29C948
ADD             R6, R4, #0x1C8
ADD             R7, R0, #0x108
MOV             R0, R6
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
ADD             R1, R5, #4
LDR             R0, [R4,#8]
VLDM            R1, {S3-S5}
ADD             R0, R0, #0x108
MOV             R1, SP
VLDR            S0, [R0,#8]
VLDM            R0, {S1-S2}
VADD.F32        S0, S0, S5
VADD.F32        S1, S1, S3
VADD.F32        S2, S2, S4
VSTR            S0, [SP,#0x40+var_38]
VSTMEA          SP, {S1-S2}
LDRH            R0, [R5,#2]
VMOV            S0, R0
ADD             R0, R4, #0x1C8
VCVT.F32.U32    S0, S0
BL              sub_5A2138
LDRB            R0, [R4,#0x18D]
NOP
B               loc_29CB98
VLDR            S3, [R0,#0x108]
VLDR            S1, [R0,#0x10C]
VLDR            S4, [R5,#8]
VADD.F32        S0, S3, S0
VLDR            S2, [R0,#0x110]
VADD.F32        S1, S1, S4
ADD             R6, R4, #0x1C8
VSTMEA          SP, {S0-S2}
LDR             R0, [R4,#8]
VLDR            S3, [R5,#8]
VLDR            S0, [R5,#0xC]
ADD             R1, R0, #0x10C
LDR             R0, [R0,#0x108]
VLDM            R1, {S1-S2}
STR             R0, [SP,#0x40+var_34]
VADD.F32        S1, S1, S3
VADD.F32        S0, S2, S0
VSTR            S1, [SP,#0x40+var_30]
VSTR            S0, [SP,#0x40+var_2C]
LDR             R0, [R4,#8]
ADD             R7, R0, #0x108
MOV             R0, R6
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
MOV             R2, SP
LDRH            R0, [R5,#2]
MOV             R1, #0
VMOV            S0, R0
ADD             R0, R4, #0x1C8
VCVT.F32.U32    S0, S0
BL              sub_5A1EE8
LDRH            R0, [R5,#2]
ADD             R2, SP, #0x40+var_34
MOV             R1, #1
VMOV            S0, R0
ADD             R0, R4, #0x1C8
VCVT.F32.U32    S0, S0
BL              sub_5A2298
VLDR            S0, [R5,#0xC]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#4]
BLE             loc_29CA14
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_29CA20
B               loc_29CA24
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_29CA24
VMOV.F32        S16, S18
LDR             R0, [R4,#8]
LDR             R6, [R0,#0xF4]
ADD             R0, R4, #0x194
BL              sub_5A18EC
STR             R6, [R4,#0x1A0]
STR             R6, [R4,#0x198]
LDRH            R0, [R5,#2]
LDR             R1, [R4,#8]
VMOV            S0, R0
ADD             R0, R4, #0x194
VLDR            S2, [R1,#0xF4]
VCVT.F32.U32    S1, S0
VADD.F32        S0, S2, S16
BL              sub_5A14A4
MOV             R0, #1
NOP
B               loc_29CB98
VLDR            S1, [R0,#0x108]
VLDR            S3, [R5,#4]
VLDR            S0, [R0,#0x10C]
VLDR            S2, [R5,#8]
VADD.F32        S1, S1, S3
LDR             R0, [R0,#0x110]
VADD.F32        S0, S0, S2
ADD             R1, SP, #0x40+var_30
ADD             R6, R4, #0x1C8
VSTR            S1, [SP,#0x40+var_40]
VSTR            S0, [SP,#0x40+var_3C]
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R4,#8]
VLDR            S1, [R5,#0xC]
VLDR            S4, [R5,#8]
VLDR            S3, [R0,#0x110]
VLDR            S0, [R0,#0x10C]
VLDR            S2, [R0,#0x108]
VADD.F32        S1, S3, S1
VADD.F32        S0, S0, S4
VSTR            S2, [SP,#0x40+var_34]
VSTM            R1, {S0-S1}
LDR             R0, [R4,#8]
ADD             R7, R0, #0x108
MOV             R0, R6
BL              sub_5A26D0
LDM             R7, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
MOV             R2, SP
LDRH            R0, [R5,#2]
MOV             R1, #0
VMOV            S0, R0
ADD             R0, R4, #0x1C8
VCVT.F32.U32    S0, S0
BL              sub_5A2298
LDRH            R0, [R5,#2]
ADD             R2, SP, #0x40+var_34
MOV             R1, #1
VMOV            S0, R0
ADD             R0, R4, #0x1C8
VCVT.F32.U32    S0, S0
BL              sub_5A1EE8
VLDR            S0, [R5,#4]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0xC]
BLE             loc_29CB4C
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLE             loc_29CB5C
B               loc_29CB58
DCFS 1.5708
DCFS -1.5708
DCFS 0.0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BGT             loc_29CB5C
VMOV.F32        S16, S18
LDR             R0, [R4,#8]
LDR             R6, [R0,#0xF4]
ADD             R0, R4, #0x194
BL              sub_5A18EC
STR             R6, [R4,#0x1A0]
STR             R6, [R4,#0x198]
LDRH            R0, [R5,#2]
LDR             R1, [R4,#8]
VMOV            S0, R0
ADD             R0, R4, #0x194
VLDR            S2, [R1,#0xF4]
VCVT.F32.U32    S1, S0
VADD.F32        S0, S2, S16
BL              sub_5A14A4
MOV             R0, #0
STR             R0, [R4,#0x190]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R7,PC}
