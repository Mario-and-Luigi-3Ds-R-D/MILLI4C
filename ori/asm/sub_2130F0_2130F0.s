PUSH            {R4-R8,LR}
MOV             R4, R2
MOV             R8, R0
ADD             R0, R4, #0x7C ; '|'
VPUSH           {D8-D9}
MOV             R5, R1
SUB             SP, SP, #0x10
LDM             R0, {R0,R1,R3}
LDR             R12, [R2,#8]
LDR             R2, [R2,#0xC]
STMEA           SP, {R0,R1,R3}
LDR             R0, =dword_6E1330
VLDR            S16, =0.0
UXTH            R6, R12
AND             R7, R2, #0xFF
LDR             R0, [R0]
TST             R0, #1
BNE             loc_213160
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_213160
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
VLDR            S3, [SP,#0x38+var_38]
ADD             R1, SP, #0x38+var_34
LDR             R0, =flt_711FE4
VMUL.F32        S0, S3, S3
VLDM            R1, {S1-S2}
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_21319C
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [SP,#0x38+var_30]
STMEA           SP, {R1,R2}
B               loc_2131C0
VSQRT.F32       S5, S0
VLDR            S4, =1.0
VDIV.F32        S0, S4, S5
VMUL.F32        S3, S3, S0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VSTR            S3, [SP,#0x38+var_38]
VSTR            S1, [SP,#0x38+var_34]
VSTR            S0, [SP,#0x38+var_30]
LDR             R0, =off_6CE970
MOV             R1, R6
LDR             R0, [R0]
BL              sub_528FF0
LDRH            R1, [R4]
SUB             R1, R1, #0xFC
CMP             R1, #0xD; switch 13 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2131DC; jumptable 002131DC default case, cases 6-9
DCD loc_213218; jump table for switch statement
LDR             R1, [R4,#0x14]; jumptable 002131DC case 0
VLDR            S3, [R4,#0x70]
VLDR            S2, [R4,#0x78]
MOV             R2, SP
UXTH            R1, R1
VMOV            S0, R1
MOV             R1, R7
ADD             R0, R0, #0x1DC
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S3
BL              sub_5A28C4
NOP
NOP
B               def_2131DC; jumptable 002131DC default case, cases 6-9
LDR             R1, [R4,#0x10]; jumptable 002131DC case 1
MOV             R2, SP
ADD             R0, R0, #0x1DC
UXTH            R1, R1
VMOV            S0, R1
ADD             R1, R4, #0x74 ; 't'
VLDM            R1, {S2-S3}
MOV             R1, R7
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S3
BL              sub_5A2840
NOP
NOP
B               def_2131DC; jumptable 002131DC default case, cases 6-9
LDR             R1, [R4,#0x10]; jumptable 002131DC case 2
MOV             R2, SP
ADD             R0, R0, #0x1DC
UXTH            R1, R1
VMOV            S0, R1
ADD             R1, R4, #0x74 ; 't'
VLDM            R1, {S2-S3}
MOV             R1, R7
VCVT.F32.U32    S1, S0
VMOV.F32        S0, S3
BL              sub_5A2758
NOP
NOP
B               def_2131DC; jumptable 002131DC default case, cases 6-9
ADD             R1, R4, #0x70 ; 'p'; jumptable 002131DC cases 3,10
MOV             R2, SP
VLDM            R1, {S16-S18}
MOV             R1, R7
ADD             R0, R0, #0x1DC
VMOV.F32        S1, S16
VMOV.F32        S2, S17
VMOV.F32        S0, S18
BL              sub_5A299C
VMOV.F32        S2, S17
VMOV.F32        S1, S16
VMOV.F32        S0, S18
BL              sub_589768
NOP
NOP
B               loc_213334
ADD             R1, R4, #0x70 ; 'p'; jumptable 002131DC cases 4,11
MOV             R2, SP
VLDM            R1, {S16-S18}
MOV             R1, R7
ADD             R0, R0, #0x1DC
VMOV.F32        S1, S16
VMOV.F32        S2, S17
VMOV.F32        S0, S18
BL              sub_5A2954
VMOV.F32        S2, S17
VMOV.F32        S1, S16
VMOV.F32        S0, S18
BL              sub_589714
VMOV.F32        S16, S0
B               def_2131DC; jumptable 002131DC default case, cases 6-9
ADD             R1, R4, #0x70 ; 'p'; jumptable 002131DC cases 5,12
MOV             R2, SP
VLDM            R1, {S16-S18}
MOV             R1, R7
ADD             R0, R0, #0x1DC
VMOV.F32        S1, S16
VMOV.F32        S2, S17
VMOV.F32        S0, S18
BL              sub_5A290C
VMOV.F32        S2, S17
VMOV.F32        S1, S16
VMOV.F32        S0, S18
BL              sub_5896C4
VMOV.F32        S16, S0
LDRH            R0, [R4]; jumptable 002131DC default case, cases 6-9
SUB             R0, R0, #0x100
SUB             R0, R0, #6
CMP             R0, #5
BHI             loc_2133A4
CMP             R5, #0
VMOV.F32        S0, S16
LDRH            R0, [R4,#2]
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R8
BL              sub_145730
ADD             SP, SP, #0x10
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R8,PC}
