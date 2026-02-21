PUSH            {R4-R11,LR}
MOV             R5, R2
ADD             R7, R3, #0x68 ; 'h'
ADD             R4, R3, #8
SUB             SP, SP, #0xEC
LDR             R2, [R0]
LDR             R1, [R3,#8]
LDR             R12, [R2,#0x9C]
SXTB            R3, R1
LDR             R2, [R0,#4]
MOV             R1, R5
BLX             R12
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R4,#8]
ADD             R0, R0, R1
LDRH            R1, [R0]
AND             R5, R1, #0xFF
MOV             R1, #0
CMP             R5, #0
MOV             R12, R1
BLS             loc_1769CC
LDR             R3, =unk_65B108
VLDR            S0, =0.0
ADD             R11, SP, #0x110+var_E8
LDRH            R2, [R0]
AND             R8, R1, #0xFF
AND             R2, R2, #0xF00
MOV             R2, R2,LSR#8
CMP             R2, #9; switch 9 cases
LDRB            R9, [R3,R2]
SMULBB          R8, R9, R8
ADD             R8, R8, R0
ADD             R8, R8, #2
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_1766F8; jumptable 001766F8 default case
DCD loc_176724; jump table for switch statement
LDRB            R2, [R8]; jumptable 001766F8 case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1767C0
LDRB            R2, [R8]; jumptable 001766F8 case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1767C0
LDRH            R2, [R8]; jumptable 001766F8 case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1767C0
LDRH            R2, [R8]; jumptable 001766F8 cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1767C0
LDR             R2, [R8]; jumptable 001766F8 case 2
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1767C0
LDR             R2, [R8]; jumptable 001766F8 cases 5,7
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1767C0
LDR             R2, [R8]; jumptable 001766F8 case 8
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
B               loc_1767C0
VMOV.F32        S1, S0; jumptable 001766F8 default case
ADD             R2, R12, R12,LSL#1
ADD             R8, R1, #1
ADD             R9, R11, R2,LSL#2
AND             R8, R8, #0xFF
VSTR            S1, [R9]
LDRH            R2, [R0]
AND             R2, R2, #0xF00
MOV             R2, R2,LSR#8
CMP             R2, #9; switch 9 cases
LDRB            R10, [R3,R2]
SMULBB          R8, R10, R8
ADD             R8, R8, R0
ADD             R8, R8, #2
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_1767F4; jumptable 001767F4 default case
DCD loc_176820; jump table for switch statement
LDRB            R2, [R8]; jumptable 001767F4 case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1768BC
LDRB            R2, [R8]; jumptable 001767F4 case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1768BC
LDRH            R2, [R8]; jumptable 001767F4 case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1768BC
LDRH            R2, [R8]; jumptable 001767F4 cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1768BC
LDR             R2, [R8]; jumptable 001767F4 case 2
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1768BC
LDR             R2, [R8]; jumptable 001767F4 cases 5,7
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1768BC
LDR             R2, [R8]; jumptable 001767F4 case 8
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
B               loc_1768BC
VMOV.F32        S1, S0; jumptable 001767F4 default case
ADD             R8, R1, #2
AND             R8, R8, #0xFF
VSTR            S1, [R9,#4]
LDRH            R2, [R0]
AND             R2, R2, #0xF00
MOV             R2, R2,LSR#8
CMP             R2, #9; switch 9 cases
LDRB            R10, [R3,R2]
SMULBB          R8, R10, R8
ADD             R8, R8, R0
ADD             R8, R8, #2
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_1768E8; jumptable 001768E8 default case
DCD loc_176914; jump table for switch statement
LDRB            R2, [R8]; jumptable 001768E8 case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1769B8
LDRB            R2, [R8]; jumptable 001768E8 case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1769B8
LDRH            R2, [R8]; jumptable 001768E8 case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1769B8
LDRH            R2, [R8]; jumptable 001768E8 cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1769B8
LDR             R2, [R8]; jumptable 001768E8 case 2
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_1769B8
LDR             R2, [R8]; jumptable 001768E8 cases 5,7
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_1769B8
LDR             R2, [R8]; jumptable 001768E8 case 8
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
B               loc_1769B8
DCD unk_65B108
DCFS 0.0
VMOV.F32        S1, S0; jumptable 001768E8 default case
ADD             R1, R1, #3
CMP             R1, R5
ADD             R12, R12, #1
VSTR            S1, [R9,#8]
BCC             loc_1766D4
LDR             R0, [R4,#0xC]
VLDR            S1, =0.5
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VCVT.S32.F32    S0, S0
VSTR            S0, [R4,#0xC]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
LDR             R1, =0xAAAAAAAB
CMP             R0, #4
BEQ             loc_176A90
UMULL           R1, R2, R1, R5
LDR             R3, [R4,#0x28]
LDR             R12, [R4,#0x1C]
LDR             R1, [R4,#4]
CMP             R3, #0
MOV             R3, R2,LSR#1
ADD             R2, R4, #0xC
MOVEQ           R5, #0
VLDM            R2, {S1-S3}
ADD             R2, R4, #0x20 ; ' '
MOVNE           R5, #1
VLDM            R2, {S4-S5}
MOV             R0, R6
LDR             R2, [R4,#0x18]
VLDR            S0, [R7,#0x2C]
ADD             R4, R0, #0x1F4
CMP             R2, #0
MOVNE           R2, #1
CMP             R12, #0
ADD             R6, SP, #0x110+var_F8
MOVNE           R12, #1
STR             R4, [SP,#0x110+var_F0]
STR             R5, [SP,#0x110+var_FC]
STM             R6, {R2,R12}
AND             R1, R1, #0xFF
VSTMEA          SP, {S1-S5}
LDR             R2, [R0]
LDR             R12, [R2,#0x20C]
ADD             R2, SP, #0x110+var_E8
BLX             R12
B               loc_176AE4
UMULL           R0, R3, R1, R5
LDR             R2, [R4,#4]
LDR             R12, [R4,#0x18]
MOV             R0, R6
AND             R1, R2, #0xFF
LDR             R2, [R4,#0xC]
CMP             R12, #0
LDR             R4, [R4,#0x1C]
MOVNE           R12, #1
MOVEQ           R12, #0
CMP             R4, #0
VLDR            S0, [R7,#0x2C]
MOVNE           R4, #1
ADD             R5, R0, #0x1F4
STMEA           SP, {R2,R12}
STRD            R4, R5, [SP,#0x110+var_108]
LDR             R2, [R0]
MOV             R3, R3,LSR#1
LDR             R12, [R2,#0x158]
ADD             R2, SP, #0x110+var_E8
BLX             R12
ADD             SP, SP, #0xEC
MOV             R0, #0
POP             {R4-R11,PC}
