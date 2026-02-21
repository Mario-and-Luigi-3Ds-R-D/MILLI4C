PUSH            {R4-R6,LR}
MOV             R12, R1
LDR             R1, [R1]
LDR             R3, [R2,#8]
LDR             R5, =unk_65B108
ADD             R3, R3, R1
LDR             R1, [R2,#0xC]
AND             R4, R1, #0xFF
LDRH            R1, [R3]
AND             R1, R1, #0xF00
MOV             R1, R1,LSR#8
CMP             R1, #9; switch 9 cases
LDRB            R5, [R5,R1]
SMULBB          R4, R5, R4
ADD             R3, R3, R4
ADD             R3, R3, #2
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1F51E0; jumptable 001F51E0 default case
DCD loc_1F520C; jump table for switch statement
LDRB            R1, [R3]; jumptable 001F51E0 case 0
VMOV            S0, R1
VCVT.F32.U32    S0, S0
B               loc_1F52A8
LDRB            R1, [R3]; jumptable 001F51E0 case 3
SXTB            R1, R1
VMOV            S0, R1
VCVT.F32.S32    S0, S0
B               loc_1F52A8
LDRH            R1, [R3]; jumptable 001F51E0 case 1
VMOV            S0, R1
VCVT.F32.U32    S0, S0
B               loc_1F52A8
LDRH            R1, [R3]; jumptable 001F51E0 cases 4,6
SXTH            R1, R1
VMOV            S0, R1
VCVT.F32.S32    S0, S0
B               loc_1F52A8
LDR             R1, [R3]; jumptable 001F51E0 case 2
LDRB            R3, [R3,#3]
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R3,LSL#24
VMOV            S0, R1
VCVT.F32.U32    S0, S0
B               loc_1F52A8
LDR             R1, [R3]; jumptable 001F51E0 cases 5,7
LDRB            R3, [R3,#3]
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R3,LSL#24
VMOV            S0, R1
VCVT.F32.S32    S0, S0
B               loc_1F52A8
LDR             R1, [R3]; jumptable 001F51E0 case 8
LDRB            R3, [R3,#3]
BIC             R1, R1, #0xFF000000
ORR             R1, R1, R3,LSL#24
VMOV            S0, R1
B               loc_1F52A8
VLDR            S0, =0.0; jumptable 001F51E0 default case
LDRH            R3, [R2,#2]
MOV             R1, R0
MOV             R2, R12
MOV             R0, R3
BL              sub_145730
MOV             R0, #0
POP             {R4-R6,PC}
