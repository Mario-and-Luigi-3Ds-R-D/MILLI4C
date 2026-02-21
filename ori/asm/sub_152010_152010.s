PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
SUB             SP, SP, #0x20
MOV             R2, #0
LDR             R0, [R0,#0x18]
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
MOV             R1, SP
BLX             R3
LDR             R0, =unk_6E1DF4
VLDR            S0, [SP,#0x28+var_28]
VLDR            S1, [R0,#(flt_6E1EA4 - 0x6E1DF4)]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_28]
LDR             R0, [R4,#0x48]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
MOV             R1, SP
BLX             R2
LDRSB           R1, [R4,#0x14]
LDR             R0, =off_6CE970
LDR             R12, =0xFFE683CC
LDR             R2, =0x30099
ADD             R1, R1, #1
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_152078; jumptable 00152078 default case
DCD loc_152138; jump table for switch statement
LDR             R1, [R4,#0x48]; jumptable 00152078 case 4
LDR             R0, [R0]
LDR             R2, =0x3009A
MOV             R3, #0
LDRH            R1, [R1,#0x10]
SUB             R0, R0, R12
BL              sub_503808
LDR             R0, =unk_6E2764
ADD             R1, R0, #0x28 ; '('
STRD            R0, R1, [R4,#0x4C]
B               def_152078; jumptable 00152078 default case
LDR             R1, [R4,#0x48]; jumptable 00152078 case 3
LDR             R0, [R0]
MOV             R3, #0
LDRH            R1, [R1,#0x10]
SUB             R0, R0, R12
BL              sub_503808
LDR             R0, =unk_6E278C
ADD             R1, R0, #0x28 ; '('
STRD            R0, R1, [R4,#0x4C]
B               def_152078; jumptable 00152078 default case
LDR             R1, [R4,#0x48]; jumptable 00152078 case 2
LDR             R0, [R0]
MOV             R3, #0
LDRH            R1, [R1,#0x10]
SUB             R0, R0, R12
BL              sub_503808
LDR             R0, =unk_6E27B4
ADD             R1, R0, #0x28 ; '('
STRD            R0, R1, [R4,#0x4C]
B               def_152078; jumptable 00152078 default case
LDR             R1, [R4,#0x48]; jumptable 00152078 case 1
LDR             R0, [R0]
MOV             R3, #0
LDRH            R1, [R1,#0x10]
SUB             R0, R0, R12
BL              sub_503808
LDR             R0, =unk_6E27DC
ADD             R1, R0, #0x28 ; '('
STRD            R0, R1, [R4,#0x4C]
B               def_152078; jumptable 00152078 default case
LDR             R1, [R4,#0x48]; jumptable 00152078 case 0
LDR             R0, [R0]
LDR             R2, =0x3009B
MOV             R3, #0
LDRH            R1, [R1,#0x10]
SUB             R0, R0, R12
BL              sub_503808
LDR             R0, =unk_6E2804
ADD             R1, R0, #0x28 ; '('
STRD            R0, R1, [R4,#0x4C]
LDRSB           R0, [R4,#0x14]; jumptable 00152078 default case
BL              sub_49A430
LDR             R1, [R0,#4]
ADD             R2, SP, #0x28+var_18
STR             R1, [SP,#0x28+var_1C]
LDR             R0, [R0,#8]
VMOV            S1, R1
MOV             R1, #0
STR             R0, [SP,#0x28+var_C]
VLDR            S3, [R4,#0x54]
VLDR            S2, [SP,#0x28+var_28]
VMOV            S0, R0
VADD.F32        S1, S3, S1
VSUB.F32        S2, S1, S2
VLDR            S1, =0.0
VSTR            S2, [SP,#0x28+var_18]
VSTR            S1, [SP,#0x28+var_14]
VSTR            S1, [SP,#0x28+var_10]
LDR             R0, [R4,#0x48]
ADD             R0, R0, #0x1DC
BL              sub_5A2B20
ADD             SP, SP, #0x20 ; ' '
POP             {R4,PC}
