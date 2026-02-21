PUSH            {R4-R7,LR}
MOV             R5, R1
MOV             R7, R0
MOV             R4, R2
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
VLDR            S16, [R2,#0x70]
AND             R6, R0, #0xFF
LDR             R0, =off_6CE970
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_528FF0
VLDR            S0, =0.0
LDRH            R1, [R4]
VLDR            S3, =1.0
VMOV.F32        S17, S0
SUB             R1, R1, #0xF4
CMP             R1, #8; switch 8 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_21022C; jumptable 0021022C default case
DCD loc_210254; jump table for switch statement
ADD             R1, R4, #0x74 ; 't'; jumptable 0021022C cases 0,5
MOV             R2, SP
VLDM            R1, {S17-S18}
MOV             R1, R6
VSTR            S0, [SP,#0x30+var_30]
VSTR            S3, [SP,#0x30+var_2C]
VSTR            S0, [SP,#0x30+var_28]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
ADD             R0, R0, #0x1DC
BL              sub_5A299C
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
BL              sub_589768
NOP
NOP
B               loc_2102E0
ADD             R1, R4, #0x74 ; 't'; jumptable 0021022C cases 1,6
MOV             R2, SP
VLDM            R1, {S17-S18}
MOV             R1, R6
VSTR            S0, [SP,#0x30+var_30]
VSTR            S3, [SP,#0x30+var_2C]
VSTR            S0, [SP,#0x30+var_28]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
ADD             R0, R0, #0x1DC
BL              sub_5A2954
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
BL              sub_589714
VMOV.F32        S17, S0
B               def_21022C; jumptable 0021022C default case
LDR             R1, [R4,#0x18]; jumptable 0021022C case 2
VLDR            S2, [R4,#0x74]
VSTR            S0, [SP,#0x30+var_30]
VSTR            S3, [SP,#0x30+var_2C]
UXTH            R1, R1
VSTR            S0, [SP,#0x30+var_28]
VMOV            S0, R1
MOV             R2, SP
MOV             R1, R6
ADD             R0, R0, #0x1DC
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A28C4
NOP
NOP
B               def_21022C; jumptable 0021022C default case
ADD             R1, R4, #0x74 ; 't'; jumptable 0021022C cases 3,7
MOV             R2, SP
VLDM            R1, {S17-S18}
MOV             R1, R6
VSTR            S0, [SP,#0x30+var_30]
VSTR            S3, [SP,#0x30+var_2C]
VSTR            S0, [SP,#0x30+var_28]
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
ADD             R0, R0, #0x1DC
BL              sub_5A290C
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S16
BL              sub_5896C4
VMOV.F32        S17, S0
NOP
B               def_21022C; jumptable 0021022C default case
LDR             R1, [R4,#0x14]; jumptable 0021022C case 4
VLDR            S2, [R4,#0x78]
VSTR            S0, [SP,#0x30+var_30]
VSTR            S3, [SP,#0x30+var_2C]
UXTH            R1, R1
VSTR            S0, [SP,#0x30+var_28]
VMOV            S0, R1
MOV             R2, SP
MOV             R1, R6
ADD             R0, R0, #0x1DC
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S16
BL              sub_5A2758
LDRH            R0, [R4]; jumptable 0021022C default case
CMP             R0, #0xF9
CMPNE           R0, #0xFA
CMPNE           R0, #0xFB
BNE             loc_2103D8
CMP             R5, #0
VMOV.F32        S0, S17
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R7
BL              sub_145730
ADD             SP, SP, #0xC
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R7,PC}
