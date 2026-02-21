CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
BX              LR; jumptable 00236D9C default case
DCD loc_236DB8; jump table for switch statement
NOP; jumptable 00236D9C case 0
B               sub_236C8C
CMP             R1, #1; jumptable 00236D9C cases 1-4
BEQ             loc_236E04
CMP             R1, #2
BEQ             loc_236E18
CMP             R1, #3
BEQ             loc_236E3C
CMP             R1, #4
BNE             def_236D9C; jumptable 00236D9C default case
LDRB            R1, [R0,#0x9C]
VSTR            S0, [R0,#0x78]
CMP             R1, #0
BNE             def_236D9C; jumptable 00236D9C default case
VLDR            S1, [R0,#0x80]
LDR             R0, [R0,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#0x10C]
BX              LR
LDRB            R1, [R0,#0x9C]
VSTR            S0, [R0,#0x6C]
CMP             R1, #1
BNE             def_236D9C; jumptable 00236D9C default case
B               loc_236E28
LDRB            R1, [R0,#0x9C]
VSTR            S0, [R0,#0x70]
CMP             R1, #3
BNE             def_236D9C; jumptable 00236D9C default case
VLDR            S1, [R0,#0x7C]
LDR             R0, [R0,#4]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0,#0x108]
BX              LR
LDRB            R1, [R0,#0x9C]
VSTR            S0, [R0,#0x74]
CMP             R1, #2
BEQ             loc_236DF0
BX              LR
