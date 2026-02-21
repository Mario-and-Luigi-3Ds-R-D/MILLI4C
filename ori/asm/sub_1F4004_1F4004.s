MOV             R3, R0
MOV             R12, R1
PUSH            {R4,LR}
LDRD            R0, R1, [R2,#8]
VLDR            S0, =0.0
AND             R1, R1, #0xFF
ADD             R4, R0, R0,LSL#1
RSB             R0, R4, R0,LSL#5
LDR             R4, =dword_6E7CD0
CMP             R1, #8; switch 8 cases
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x400
ADD             R0, R0, #0x34C
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1F4038; jumptable 001F4038 default case
DCD loc_1F4060; jump table for switch statement
LDR             R0, [R0,#0x2C]; jumptable 001F4038 case 0
MOV             R0, R0,LSR#24
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDR             R0, [R0,#0x30]; jumptable 001F4038 case 1
MOV             R0, R0,LSL#4
MOV             R0, R0,LSR#28
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDRH            R0, [R0,#6]; jumptable 001F4038 case 2
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDRH            R0, [R0,#2]; jumptable 001F4038 case 3
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDRH            R0, [R0,#8]; jumptable 001F4038 case 4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDRH            R0, [R0,#4]; jumptable 001F4038 case 5
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDR             R0, [R0,#0x30]; jumptable 001F4038 case 6
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#29
VMOV            S0, R0
VCVT.F32.U32    S0, S0
B               def_1F4038; jumptable 001F4038 default case
LDRH            R0, [R0,#0x3E]; jumptable 001F4038 case 7
VMOV            S0, R0
VCVT.F32.U32    S0, S0
LDRH            R0, [R2,#2]; jumptable 001F4038 default case
MOV             R2, R12
MOV             R1, R3
BL              sub_145730
MOV             R0, #0
POP             {R4,PC}
