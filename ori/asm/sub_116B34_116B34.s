MOV             R3, R0
MOV             R12, R1
MOV             R1, R2
AND             R0, R0, #0xF000
LDR             R2, =dword_6E7CD0
CMP             R0, #0xC000
PUSH            {R4,R5}
ANDNE           R4, R3, #0xF000
BICNE           R0, R3, #0xF000
BEQ             loc_116BA8
MOV             R4, R4,ASR#12
CMP             R4, #0xF; switch 15 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_116B64; jumptable 00116B64 default case, cases 0,8,12
DCD def_116B64; jump table for switch statement
BIC             R0, R3, #0xC000
MOV             R1, R0,LSR#5
AND             R0, R0, #0x1F
ADD             R1, R2, R1,LSL#2
LDR             R1, [R1,#0x278]
POP             {R4,R5}
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
ADD             R0, R1, R0,LSL#2; jumptable 00116B64 case 1
VLDR            S0, [R0,#4]
POP             {R4,R5}
BX              LR
LDR             R1, [R1,#0x2C]; jumptable 00116B64 case 2
MOV             R2, R0,LSR#5
AND             R0, R0, #0x1F
LDR             R1, [R1,R2,LSL#2]
POP             {R4,R5}
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
LDR             R1, [R1,#0x28]; jumptable 00116B64 case 3
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R0]
POP             {R4,R5}
BX              LR
LDR             R1, [R12,#8]; jumptable 00116B64 case 4
ADD             R0, R1, R0,LSL#2
VLDR            S0, [R0]
POP             {R4,R5}
BX              LR
ADD             R0, R2, R0,LSL#2; jumptable 00116B64 case 5
ADD             R0, R0, #0x1000
VLDR            S0, [R0,#0x1B0]
VCVT.S32.F32    S0, S0
B               loc_116C54
ADD             R0, R2, R0,LSL#2; jumptable 00116B64 case 6
ADD             R0, R0, #0x1000
VLDR            S0, [R0,#0x1F0]
POP             {R4,R5}
VCVT.F32.S32    S0, S0
BX              LR
LDR             R0, [R12]; jumptable 00116B64 case 7
MOV             R2, R3
LDR             R3, [R0,#0x18]
POP             {R4,R5}
MOV             R0, R12
BX              R3
MOV             R1, R0,LSR#5; jumptable 00116B64 case 9
AND             R0, R0, #0x1F
ADD             R1, R2, R1,LSL#2
LDR             R1, [R1,#0xC]
POP             {R4,R5}
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
ADD             R0, R2, R0,LSL#2; jumptable 00116B64 case 10
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x1A4]
POP             {R4,R5}
BX              LR
ADD             R0, R0, R2; jumptable 00116B64 case 11
LDRB            R0, [R0,#0x43C]
POP             {R4,R5}
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
MOV             R1, R0,LSR#5; jumptable 00116B64 case 13
AND             R0, R0, #0x1F
ADD             R1, R2, R1,LSL#2
LDR             R1, [R1,#0xB8]
POP             {R4,R5}
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
MOV             R1, R0,LSR#5; jumptable 00116B64 case 14
AND             R0, R0, #0x1F
LDR             R1, [R2,R1,LSL#2]
POP             {R4,R5}
MOV             R0, R1,LSR R0
AND             R0, R0, #1
VMOV            S0, R0
VCVT.F32.U32    S0, S0
BX              LR
POP             {R4,R5}; jumptable 00116B64 default case, cases 0,8,12
VLDR            S0, =0.0
BX              LR
