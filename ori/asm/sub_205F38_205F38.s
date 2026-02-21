ADD             R1, R2, #8
PUSH            {R4,LR}
LDM             R1, {R1,R3}
MOV             R12, R1,LSL#20
AND             R1, R3, #0xFF
MOV             R12, R12,LSR#20
ADD             R0, R0, R12,LSL#3
LDR             R0, [R0,#0x2B4]
CMP             R0, #0
BEQ             def_205F6C; jumptable 00205F6C default case, cases 0,4
VLDR            S0, [R2,#0x70]
VLDR            S1, =0.0
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_205F6C; jumptable 00205F6C default case, cases 0,4
DCD def_205F6C; jump table for switch statement
VCVT.S32.F32    S0, S0; jumptable 00205F6C case 1
VMOV            R1, S0
B               loc_205FEC
VLDR            S1, =256.0; jumptable 00205F6C case 2
ADD             R0, R0, #4
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
NOP
NOP
B               def_205F6C; jumptable 00205F6C default case, cases 0,4
VCMP.F32        S0, S1; jumptable 00205F6C case 3
ADD             R0, R0, #4
LDRH            R2, [R0,#0xA]
VMRS            APSR_nzcv, FPSCR
BIC             R2, R2, #2
MOVNE           R1, #1
MOVEQ           R1, #0
ORR             R1, R2, R1,LSL#1
STRH            R1, [R0,#0xA]
B               def_205F6C; jumptable 00205F6C default case, cases 0,4
VCVT.U32.F32    S0, S0; jumptable 00205F6C case 5
VSTR            S0, [R0,#0x19C]
B               def_205F6C; jumptable 00205F6C default case, cases 0,4
VCMP.F32        S0, S1; jumptable 00205F6C case 6
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
BL              sub_532AA0
NOP
NOP
B               def_205F6C; jumptable 00205F6C default case, cases 0,4
VCVT.U32.F32    S0, S0; jumptable 00205F6C cases 7,8
SUB             R1, R1, #7
AND             R1, R1, #0xFF
ADD             R0, R0, R1,LSL#2
VSTR            S0, [R0,#0x1AC]
MOV             R0, #0; jumptable 00205F6C default case, cases 0,4
POP             {R4,PC}
