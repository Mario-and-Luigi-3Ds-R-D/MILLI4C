VCVT.U32.F32    S1, S0
PUSH            {R4,LR}
MOV             R3, R0
MOV             LR, R1
MOV             R1, R2
AND             R0, R0, #0xF000
LDR             R2, =dword_6E7CD0
CMP             R0, #0xC000
MOV             R12, #1
ANDNE           R4, R3, #0xF000
BICNE           R0, R3, #0xF000
BEQ             loc_1457AC
MOV             R4, R4,ASR#12
CMP             R4, #0xF; switch 15 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
POP             {R4,PC}; jumptable 00145768 default case, cases 0,8,12
DCD def_145768; jump table for switch statement
VMOV            R0, S1
BIC             R2, R3, #0xC000
LDR             R1, =dword_6E7CD0
TST             R0, #0xFF
MOV             R0, R2,LSR#5
AND             R2, R2, #0x1F
MOV             R12, #1
ADD             R0, R1, R0,LSL#2
MOV             R1, R12,LSL R2
LDR             R2, [R0,#0x278]
ORRNE           R1, R1, R2
BICEQ           R1, R2, R1
STR             R1, [R0,#0x278]
POP             {R4,PC}
ADD             R0, R1, R0,LSL#2; jumptable 00145768 case 1
VSTR            S0, [R0,#4]
POP             {R4,PC}
VMOV            R2, S1; jumptable 00145768 case 2
LDR             R1, [R1,#0x2C]
CMP             R2, #0
MOV             R2, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R3, [R1,R2,LSL#2]
MOV             R0, R12,LSL R0
ORRNE           R0, R0, R3
BICEQ           R0, R3, R0
STR             R0, [R1,R2,LSL#2]
POP             {R4,PC}
LDR             R1, [R1,#0x28]; jumptable 00145768 case 3
ADD             R0, R1, R0,LSL#2
VSTR            S0, [R0]
POP             {R4,PC}
LDR             R1, [LR,#8]; jumptable 00145768 case 4
ADD             R0, R1, R0,LSL#2
VSTR            S0, [R0]
POP             {R4,PC}
ADD             R0, R2, R0,LSL#2; jumptable 00145768 case 5
ADD             R0, R0, #0x1000
VSTR            S0, [R0,#0x1B0]
POP             {R4,PC}
VCVT.S32.F32    S0, S0; jumptable 00145768 case 6
ADD             R0, R2, R0,LSL#2
ADD             R0, R0, #0x1000
VSTR            S0, [R0,#0x1F0]
POP             {R4,PC}
LDR             R0, [LR]; jumptable 00145768 case 7
MOV             R2, R3
LDR             R3, [R0,#0x1C]
MOV             R0, LR
POP             {R4,LR}
BX              R3
VMOV            R1, S1; jumptable 00145768 case 9
TST             R1, #0xFF
MOV             R1, R0,LSR#5
ADD             R1, R2, R1,LSL#2
ANDNE           R2, R0, #0x1F
LDRNE           R0, [R1,#0xC]
ORRNE           R0, R0, R12,LSL R2
LDREQ           R2, [R1,#0xC]
ANDEQ           R0, R0, #0x1F
BICEQ           R0, R2, R12,LSL R0
STR             R0, [R1,#0xC]
POP             {R4,PC}
ADD             R0, R2, R0,LSL#2; jumptable 00145768 case 10
ADD             R0, R0, #0x400
VSTR            S0, [R0,#0x1A4]
POP             {R4,PC}
VMOV            R1, S1; jumptable 00145768 case 11
ADD             R0, R0, R2
STRB            R1, [R0,#0x43C]
POP             {R4,PC}
VMOV            R1, S1; jumptable 00145768 case 13
TST             R1, #0xFF
MOV             R1, R0,LSR#5
ADD             R1, R2, R1,LSL#2
ANDNE           R2, R0, #0x1F
LDRNE           R0, [R1,#0xB8]
ORRNE           R0, R0, R12,LSL R2
LDREQ           R2, [R1,#0xB8]
ANDEQ           R0, R0, #0x1F
BICEQ           R0, R2, R12,LSL R0
STR             R0, [R1,#0xB8]
POP             {R4,PC}
VMOV            R1, S1; jumptable 00145768 case 14
TST             R1, #0xFF
MOV             R1, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R3, [R2,R1,LSL#2]
MOV             R0, R12,LSL R0
ORRNE           R0, R0, R3
BICEQ           R0, R3, R0
STR             R0, [R2,R1,LSL#2]
POP             {R4,PC}
