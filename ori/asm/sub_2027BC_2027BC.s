SUB             R2, R1, #0xB
CMP             R2, #0xB; switch 11 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_2027C4; jumptable 002027C4 default case, case 9
DCD loc_2027F8; jump table for switch statement
VCVT.U32.F32    S0, S0; jumptable 002027C4 case 0
VMOV            R1, S0
STRB            R1, [R0,#0x1F9]
BX              LR
VCVT.U32.F32    S0, S0; jumptable 002027C4 case 1
ADD             R1, R0, #0x100
VMOV            R0, S0
STRH            R0, [R1,#0xFE]
BX              LR
VCVT.U32.F32    S0, S0; jumptable 002027C4 case 2
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#2]
BX              LR
VSTR            S0, [R0,#0x204]; jumptable 002027C4 case 3
BX              LR
VSTR            S0, [R0,#0x208]; jumptable 002027C4 case 4
BX              LR
VCVT.U32.F32    S0, S0; jumptable 002027C4 case 5
ADD             R1, R0, #0x200
VMOV            R0, S0
STRH            R0, [R1,#0xC]
BX              LR
VSTR            S0, [R0,#0x210]; jumptable 002027C4 case 6
BX              LR
VSTR            S0, [R0,#0x214]; jumptable 002027C4 case 7
BX              LR
VSTR            S0, [R0,#0x21C]; jumptable 002027C4 case 8
BX              LR
VSTR            S0, [R0,#0x218]; jumptable 002027C4 case 10
BX              LR
NOP; jumptable 002027C4 default case, case 9
NOP
