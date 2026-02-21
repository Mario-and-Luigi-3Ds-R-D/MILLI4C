ADD             R0, R0, R1,LSL#2
PUSH            {R4,LR}
LDR             R0, [R0,#0x10]
VLDR            S0, =0.0
CMP             R2, #0xF; switch 15 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
POP             {R4,PC}; jumptable 0019A150 default case, cases 1,13
DCD loc_19A194; jump table for switch statement
LDR             R1, [R0,#4]; jumptable 0019A150 case 0
CMP             R1, #0
BEQ             loc_19A1B4
MOV             R0, #0
EOR             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#8]
TST             R0, #1
CMPNE           R0, #0
MOVEQ           R0, #1
BNE             loc_19A1A0
B               loc_19A1A4
ADD             R0, R0, #0x400; jumptable 0019A150 case 2
LDRH            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_19A1F0
LDRH            R0, [R0,#0x10]
SUB             R1, R0, #0xFF00
SUBS            R1, R1, #0xFF
MOVEQ           R0, #0
BEQ             loc_19A1F4
MOV             R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
NOP; jumptable 0019A150 case 3
BL              sub_2B9BAC
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDRB            R0, [R0,#0x216]; jumptable 0019A150 case 4
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
NOP; jumptable 0019A150 case 5
BL              sub_2FD808
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0xAAC]; jumptable 0019A150 case 6
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#30
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x4CC]; jumptable 0019A150 case 7
AND             R0, R0, #3
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x1B4]; jumptable 0019A150 case 8
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x104]; jumptable 0019A150 case 9
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x338]; jumptable 0019A150 case 10
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x3D0]; jumptable 0019A150 case 11
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R0, [R0,#0x33C]; jumptable 0019A150 case 12
AND             R0, R0, #4
MOV             R0, R0,LSR#2
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
LDR             R1, [R0]; jumptable 0019A150 case 14
LDR             R1, [R1,#0x30]
BLX             R1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4,PC}
