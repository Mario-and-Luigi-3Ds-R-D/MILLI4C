CMP             R2, #5; switch 5 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_17EECC; jumptable 0017EECC default case
DCD loc_17EEE8; jump table for switch statement
CMP             R3, #0; jumptable 0017EECC case 0
ADDNE           R0, R1, #0x1B0
STRNE           R0, [R3]
LDR             R0, [R1,#0x94]
BX              LR
CMP             R3, #0; jumptable 0017EECC case 1
ADDNE           R0, R1, #0x1BC
STRNE           R0, [R3]
LDR             R0, [R1,#0x98]
BX              LR
CMP             R3, #0; jumptable 0017EECC case 2
ADDNE           R0, R1, #0x1C8
STRNE           R0, [R3]
LDR             R0, [R1,#0x9C]
BX              LR
CMP             R3, #0; jumptable 0017EECC case 3
ADDNE           R0, R1, #0x1D4
STRNE           R0, [R3]
LDR             R0, [R1,#0xA0]
BX              LR
CMP             R3, #0; jumptable 0017EECC case 4
ADDNE           R0, R1, #0x1E0
STRNE           R0, [R3]
LDR             R0, [R1,#0xA4]
BX              LR
MOV             R0, #0; jumptable 0017EECC default case
BX              LR
