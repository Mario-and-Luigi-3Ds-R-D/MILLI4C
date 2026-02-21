PUSH            {R4-R11,LR}
MOV             R6, R2
ADD             R4, R3, #0x68 ; 'h'
ADD             R5, R3, #8
SUB             SP, SP, #0xE4
LDR             R2, [R0]
LDR             R1, [R3,#8]
LDR             R12, [R2,#0x9C]
SXTB            R3, R1
LDR             R2, [R0,#4]
MOV             R1, R6
BLX             R12
MOV             R7, R0
LDR             R0, [R6]
LDR             R1, [R5,#8]
ADD             R0, R0, R1
LDRH            R1, [R0]
AND             R6, R1, #0xFF
MOV             R1, #0
CMP             R6, #0
MOV             R12, R1
BLS             loc_176EC8
LDR             R3, =unk_65B108
VLDR            S0, =0.0
ADD             R11, SP, #0x108+var_E8
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
B               def_176BF4; jumptable 00176BF4 default case
DCD loc_176C20; jump table for switch statement
LDRB            R2, [R8]; jumptable 00176BF4 case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176CBC
LDRB            R2, [R8]; jumptable 00176BF4 case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176CBC
LDRH            R2, [R8]; jumptable 00176BF4 case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176CBC
LDRH            R2, [R8]; jumptable 00176BF4 cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176CBC
LDR             R2, [R8]; jumptable 00176BF4 case 2
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176CBC
LDR             R2, [R8]; jumptable 00176BF4 cases 5,7
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176CBC
LDR             R2, [R8]; jumptable 00176BF4 case 8
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
B               loc_176CBC
VMOV.F32        S1, S0; jumptable 00176BF4 default case
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
B               def_176CF0; jumptable 00176CF0 default case
DCD loc_176D1C; jump table for switch statement
LDRB            R2, [R8]; jumptable 00176CF0 case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176DB8
LDRB            R2, [R8]; jumptable 00176CF0 case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176DB8
LDRH            R2, [R8]; jumptable 00176CF0 case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176DB8
LDRH            R2, [R8]; jumptable 00176CF0 cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176DB8
LDR             R2, [R8]; jumptable 00176CF0 case 2
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176DB8
LDR             R2, [R8]; jumptable 00176CF0 cases 5,7
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176DB8
LDR             R2, [R8]; jumptable 00176CF0 case 8
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
B               loc_176DB8
VMOV.F32        S1, S0; jumptable 00176CF0 default case
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
B               def_176DE4; jumptable 00176DE4 default case
DCD loc_176E10; jump table for switch statement
LDRB            R2, [R8]; jumptable 00176DE4 case 0
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176EB4
LDRB            R2, [R8]; jumptable 00176DE4 case 3
SXTB            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176EB4
LDRH            R2, [R8]; jumptable 00176DE4 case 1
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176EB4
LDRH            R2, [R8]; jumptable 00176DE4 cases 4,6
SXTH            R2, R2
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176EB4
LDR             R2, [R8]; jumptable 00176DE4 case 2
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.U32    S1, S1
B               loc_176EB4
LDR             R2, [R8]; jumptable 00176DE4 cases 5,7
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
VCVT.F32.S32    S1, S1
B               loc_176EB4
LDR             R2, [R8]; jumptable 00176DE4 case 8
LDRB            R8, [R8,#3]
BIC             R2, R2, #0xFF000000
ORR             R2, R2, R8,LSL#24
VMOV            S1, R2
B               loc_176EB4
DCD unk_65B108
DCFS 0.0
VMOV.F32        S1, S0; jumptable 00176DE4 default case
ADD             R1, R1, #3
CMP             R1, R6
ADD             R12, R12, #1
VSTR            S1, [R9,#8]
BCC             loc_176BD0
VLDR            S0, [R4,#0xC]
VMOV            R0, S0
ADD             R1, R0, #0x40000000
ADDS            R1, R1, #0x800000
BEQ             loc_176F0C
ADD             R0, R4, #0x14
VLDR            S1, =2.0
VLDR            S3, [R4,#0x10]
VLDR            S2, =4.0
VMUL.F32        S0, S0, S1
VLDM            R0, {S4-S5}
VMUL.F32        S3, S3, S2
VMUL.F32        S1, S4, S1
VMUL.F32        S2, S5, S2
VSTR            S0, [R4,#0xC]
VSTR            S3, [R4,#0x10]
VSTM            R0, {S1-S2}
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #4
LDR             R0, =0xAAAAAAAB
LDR             R1, [R5,#4]
BEQ             loc_176FAC
UMULL           R0, R2, R0, R6
LDR             R3, [R5,#0x34]
LDR             R12, [R5,#0x24]
ADD             R8, R4, #0xC
CMP             R3, #0
MOV             R3, R2,LSR#1
ADD             R2, R5, #0x1C
MOV             R0, R7
VLDM            R2, {S5-S6}
ADD             R2, R5, #0x2C ; ','
VLDR            S4, [R4,#0x38]
ADD             R7, SP, #0x108+var_F8
VLDM            R2, {S7-S8}
MOVEQ           R2, #0
MOVNE           R2, #1
CMP             R12, #0
LDR             R12, [R5,#0x28]
MOVNE           R6, #1
VLDM            R8, {S0-S3}
MOVEQ           R6, #0
CMP             R12, #0
ADD             R5, R0, #0x1F4
MOVNE           R12, #1
STR             R5, [SP,#0x108+var_EC]
STM             R7, {R2,R6,R12}
AND             R1, R1, #0xFF
VSTMEA          SP, {S5-S8}
LDR             R2, [R0]
LDR             R12, [R2,#0x208]
ADD             R2, SP, #0x108+var_E8
BLX             R12
B               loc_177000
UMULL           R0, R2, R0, R6
LDR             R3, [R5,#0x24]
LDR             R12, [R5,#0x28]
MOV             R0, R7
CMP             R3, #0
MOV             R3, R2,LSR#1
ADD             R2, R4, #0xC
ADD             R5, R0, #0x1F4
VLDM            R2, {S0-S3}
MOVNE           R2, #1
MOVEQ           R2, #0
CMP             R12, #0
VLDR            S4, [R4,#0x38]
MOVNE           R12, #1
STR             R5, [SP,#0x108+var_100]
STMEA           SP, {R2,R12}
LDR             R2, [R0]
AND             R1, R1, #0xFF
LDR             R12, [R2,#0x154]
ADD             R2, SP, #0x108+var_E8
BLX             R12
ADD             SP, SP, #0xE4
MOV             R0, #0
POP             {R4-R11,PC}
