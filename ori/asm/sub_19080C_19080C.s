PUSH            {R4-R11,LR}
MOV             R10, R0
ADD             R7, R10, #0x10000
LDR             R0, =off_6D1648
ADD             R7, R7, #0x3D00
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
LDR             R1, [R0,#0xC4]
LDRH            R0, [R7,#4]
LDR             R5, [R1,#4]
LDRSH           R1, [R5,#0x4C]
CMP             R1, R0
BNE             loc_190C48
LDR             R0, [R5,#0x14]
ADD             R6, R5, #4
ADD             R9, R10, #0x10000
TST             R0, #0x400000
LDREQ           R4, [R5,#4]
LDRNE           R4, [R5,#8]
BIC             R0, R0, #1
TST             R0, #0x4000
STR             R0, [R5,#0x14]
LDM             R6, {R0,R6}
MOV             R11, #0xF0
ADD             R9, R9, #0x3D40
ADD             R8, R10, #0x13C00
BEQ             loc_190914
LDR             R1, =0x8B8
LDRH            R2, [R7,#4]
LDRSH           R1, [R1,R0]
CMP             R1, R2
BNE             loc_190914
LDR             R1, [R9]
TST             R1, #8
BEQ             loc_1908F8
ADD             R3, R8, #0x150
ADD             R1, R0, #0x400
VLDM            R3, {S0-S2}
ADD             R3, R0, #0x108
ADD             R1, R1, #0x64 ; 'd'
VSTM            R3, {S0-S2}
ADD             R3, R8, #0x150
VLDM            R3, {S0-S2}
ADD             R3, R0, #0x118
VSTM            R3, {S0-S2}
LDR             R3, [R8,#0x154]
STR             R3, [R0,#0x5AC]
LDR             R2, [R0,#0x464]
LDRB            R3, [R7,#0x48]
BIC             R2, R2, #0xF
AND             R3, R3, #0xF
ORR             R2, R2, R3
STR             R2, [R0,#0x464]
LDRSB           R3, [R7,#0x48]
BIC             R2, R2, #0xF0
AND             R3, R11, R3,LSL#4
ORR             R2, R2, R3
STR             R2, [R1]
LDRB            R1, [R0,#0xDE]
ORR             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #1
BLX             R2
LDR             R0, [R5,#0x14]
TST             R0, #0x8000
BEQ             loc_1909C4
LDR             R0, =0x8B8
LDRH            R1, [R7,#4]
LDRSH           R0, [R0,R6]
CMP             R0, R1
BNE             loc_1909C4
LDRB            R1, [R6,#0xDE]
TST             R1, #4
BNE             loc_1909C4
LDR             R0, [R9]
TST             R0, #0x10
BEQ             loc_1909A8
ADD             R3, R8, #0x150
ADD             R0, R6, #0x400
VLDM            R3, {S0-S2}
ADD             R3, R6, #0x108
ADD             R0, R0, #0x64 ; 'd'
VSTM            R3, {S0-S2}
ADD             R3, R8, #0x150
VLDM            R3, {S0-S2}
ADD             R3, R6, #0x118
VSTM            R3, {S0-S2}
LDR             R3, [R8,#0x154]
STR             R3, [R6,#0x5AC]
LDR             R2, [R6,#0x464]
LDRB            R3, [R7,#0x48]
BIC             R2, R2, #0xF
AND             R3, R3, #0xF
ORR             R2, R2, R3
STR             R2, [R6,#0x464]
LDRSB           R3, [R7,#0x48]
BIC             R2, R2, #0xF0
AND             R3, R11, R3,LSL#4
ORR             R2, R2, R3
STR             R2, [R0]
ORR             R0, R1, #1
STRB            R0, [R6,#0xDE]
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x84]
MOV             R0, R6
BLX             R2
ADD             R0, R10, #0x14000
VLDR            S16, =0.0
LDRB            R1, [R0,#0x28F]
CMP             R1, #1
LDRBEQ          R1, [R4,#0xDC]
STRBEQ          R1, [R0,#0x290]
LDR             R0, [R9]
TST             R0, #4
BEQ             loc_190B10
VSTR            S16, [SP,#0x48+var_38]
VSTR            S16, [SP,#0x48+var_34]
VSTR            S16, [SP,#0x48+var_30]
LDR             R0, [R4,#0x464]
AND             R0, R0, #0xF
CMP             R0, #0x10; switch 16 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_190A00; jumptable 00190A00 default case
DCD loc_190A48; jump table for switch statement
ADD             R0, R4, #0x400; jumptable 00190A00 cases 0-2,14,15
VLDR            S0, =7.0
VLDR            S1, [R0,#0x7C]
VNMUL.F32       S0, S1, S0
VSTR            S0, [SP,#0x48+var_30]
B               def_190A00; jumptable 00190A00 default case
ADD             R0, R4, #0x400; jumptable 00190A00 cases 3-5
VLDR            S0, =7.0
VLDR            S1, [R0,#0x7C]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_38]
VLDR            S0, [R4,#0x108]; jumptable 00190A00 default case
VLDR            S1, [SP,#0x48+var_38]
ADD             R1, R4, #0x108
ADD             R8, R4, #0x118
VSUB.F32        S0, S0, S1
MOV             R0, #1
MOV             R12, #0
ADD             R7, R4, #0x870
VSTR            S0, [R4,#0x108]
VLDR            S0, [R4,#0x10C]
VLDR            S1, [SP,#0x48+var_34]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x10C]
VLDR            S0, [R4,#0x110]
VLDR            S1, [SP,#0x48+var_30]
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x110]
LDM             R1, {R1-R3}
VMOV.F32        S0, S16
STM             R8, {R1-R3}
ADD             R1, SP, #0x48+var_40
STR             R0, [SP,#0x48+var_44]
STR             R12, [SP,#0x48+var_48]
STM             R1, {R0,R7}
VMOV.F32        S3, S0
LDR             R0, [R4]
VMOV.F32        S2, S0
VMOV.F32        S1, S0
MOV             R3, #0
LDR             R12, [R0,#0x1E0]
ADD             R2, SP, #0x48+var_38
MOV             R1, #1
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
ADD             R1, R4, #0x870
LDR             R2, [R0,#0xF4]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_190C48
LDR             R0, [R5,#0x14]
TST             R0, #0x80000
BEQ             loc_190C48
LDR             R0, [R9]
TST             R0, #0x10
BEQ             loc_190C1C
LDR             R0, [R4,#0x464]
VLDR            S0, [R4,#0x108]
VLDR            S2, [R4,#0x10C]
AND             R0, R0, #0xF
VLDR            S1, [R4,#0x110]
CMP             R0, #0x10; switch 16 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_190B58; jumptable 00190B58 default case
DCD loc_190BC8; jump table for switch statement
ADD             R0, R4, #0x400; jumptable 00190A00 cases 6-10
VLDR            S0, =7.0
VLDR            S1, [R0,#0x7C]
VMUL.F32        S0, S0, S1
B               loc_190A58
ADD             R0, R4, #0x400; jumptable 00190A00 cases 11-13
VLDR            S0, =7.0
VLDR            S1, [R0,#0x7C]
VNMUL.F32       S0, S1, S0
B               loc_190A70
ADD             R0, R5, #0x800; jumptable 00190B58 cases 0-2,14,15
VLDR            S3, [R0,#0x54]
VADD.F32        S1, S1, S3
B               def_190B58; jumptable 00190B58 default case
ADD             R0, R5, #0x800; jumptable 00190B58 cases 3-5
VLDR            S3, [R0,#0x54]
VSUB.F32        S0, S0, S3
B               def_190B58; jumptable 00190B58 default case
ADD             R0, R5, #0x800; jumptable 00190B58 cases 6-10
VLDR            S3, [R0,#0x54]
VSUB.F32        S1, S1, S3
B               def_190B58; jumptable 00190B58 default case
ADD             R0, R5, #0x800; jumptable 00190B58 cases 11-13
VLDR            S3, [R0,#0x54]
VADD.F32        S0, S0, S3
VSTR            S0, [R6,#0x108]; jumptable 00190B58 default case
VSTR            S2, [R6,#0x10C]
VSTR            S1, [R6,#0x110]
VSTR            S0, [R6,#0x118]
VSTR            S2, [R6,#0x11C]
VSTR            S1, [R6,#0x120]
LDR             R0, [R5]
VMOV.F32        S0, S16
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0xEC]
ADD             SP, SP, #0x1C
MOV             R0, R5
VPOP            {D8}
VMOV.F32        S1, S0
POP             {R4-R11,LR}
BX              R3
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R11,PC}
