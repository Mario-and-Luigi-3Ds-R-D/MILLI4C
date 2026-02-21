PUSH            {R4-R6,LR}
CMP             R1, #0
MOV             R4, R2
SUBNE           R1, R1, #4
SUB             R2, R4, #0x7000
CMP             R2, #0x5A; switch 90 cases
SUB             SP, SP, #0x10
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_208B5C; jumptable 00208B5C default case
DCD loc_208CCC, loc_208CE4, loc_208CF8, loc_208D14; jump table for switch statement
MOV             R0, #0x1A4; jumptable 00208B5C case 0
LDRH            R0, [R0,R1]
VMOV            S0, R0
VCVT.F32.U32    S0, S0
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDRB            R0, [R1,#0x1A6]; jumptable 00208B5C case 1
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 2
LDR             R0, [R0]
BL              sub_5EE530
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 3
LDR             R0, [R0]
BL              sub_52FA94
CMP             R0, #0
LDRHNE          R0, [R0,#0x10]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 4
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R4, [R0,#(flt_19B0AC - 0x19B000)]
MOV             R0, R4
BL              sub_1464D4
LDR             R2, =0x2F0B
MOV             R1, R4,LSL#24
MOV             R3, R4,LSR#28
AND             R2, R2, R4
MOV             R1, R1,LSR#28
ORR             R2, R2, R0
MOV             R0, R1,LSL#16
ORR             R0, R0, R2
ORR             R0, R0, R3,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 5
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R4, [R0,#(loc_19B0B4 - 0x19B000)]
MOV             R0, R4
BL              sub_1464D4
LDR             R2, =0x2F0B
MOV             R1, R4,LSL#24
MOV             R3, R4,LSR#28
AND             R2, R2, R4
MOV             R1, R1,LSR#28
ORR             R2, R2, R0
MOV             R0, R1,LSL#16
ORR             R0, R0, R2
ORR             R0, R0, R3,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 6
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R4, [R0,#(loc_19B0B8 - 0x19B000)]
MOV             R0, R4
BL              sub_1464D4
LDR             R1, =0x2F0B
MOV             R2, R4,LSL#24
MOV             R3, R4,LSR#28
AND             R1, R1, R4
MOV             R2, R2,LSR#28
ORR             R12, R1, R0
ORR             R0, R12, R2,LSL#16
ORR             R0, R0, R3,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 7
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R4, [R0,#(loc_19B0BC - 0x19B000)]
MOV             R0, R4
BL              sub_1464D4
LDR             R1, =0x2F0B
MOV             R2, R4,LSL#24
MOV             R3, R4,LSR#28
AND             R1, R1, R4
MOV             R2, R2,LSR#28
ORR             R12, R1, R0
ORR             R0, R12, R2,LSL#16
ORR             R0, R0, R3,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 00208B5C case 8
MOV             R1, #0
LDR             R0, [R0,R1,LSL#2]
MOV             R4, R0
NOP
BL              sub_1464D4
LDR             R3, =0x2F0B
MOV             R1, R0
MOV             R0, R4,LSL#24
AND             R12, R4, R3
MOV             R3, R0,LSR#28
MOV             R2, R4,LSR#28
ORR             R12, R12, R1
ORR             R1, R12, R3,LSL#16
ORR             R0, R1, R2,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 00208B5C case 9
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
MOV             R4, R0
NOP
BL              sub_1464D4
LDR             R2, =0x2F0B
MOV             R1, R0
MOV             R0, R4,LSL#24
AND             R12, R4, R2
MOV             R2, R0,LSR#28
MOV             R3, R4,LSR#28
ORR             R12, R12, R1
ORR             R1, R12, R2,LSL#16
ORR             R0, R1, R3,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 00208B5C case 10
MOV             R1, #3
LDR             R0, [R0,R1,LSL#2]
MOV             R4, R0
NOP
BL              sub_1464D4
LDR             R3, =0x2F0B
MOV             R2, R4,LSL#24
MOV             R1, R4,LSR#28
AND             R3, R3, R4
MOV             R2, R2,LSR#28
ORR             R3, R3, R0
MOV             R0, R1,LSL#20
ORR             R1, R3, R2,LSL#16
ORR             R0, R0, R1
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6EDA78; jumptable 00208B5C case 11
MOV             R1, #4
LDR             R0, [R0,R1,LSL#2]
MOV             R4, R0
NOP
BL              sub_1464D4
LDR             R2, =0x2F0B
MOV             R1, R0
MOV             R0, R4,LSL#24
AND             R12, R4, R2
MOV             R2, R0,LSR#28
MOV             R3, R4,LSR#28
ORR             R12, R12, R1
ORR             R1, R12, R2,LSL#16
ORR             R0, R1, R3,LSL#20
BIC             R0, R0, #0xFF000000
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 12
LDR             R0, [R0]
BL              sub_5EED80
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 13
LDR             R0, [R0]
BL              sub_5EED90
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 14
LDR             R0, [R0]
BL              sub_5EE554
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 15
LDR             R1, =byte_19CF24
LDR             R0, [R0]
LDRB            R0, [R0,R1]; byte_19CF24
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 16
LDR             R0, [R0]
ADD             SP, SP, #0x10
POP             {R4-R6,LR}
B               sub_5EE418
LDR             R0, =off_6CE970; jumptable 00208B5C case 17
LDR             R1, =0x19DEE8
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, R1; loc_19DEE8
VLDR            S0, [R0]
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 18
VLDR            S0, [R0]
B               loc_209810
LDR             R0, =dword_6E2378; jumptable 00208B5C case 19
VLDR            S0, [R0,#(dword_6E237C - 0x6E2378)]
B               loc_209810
LDR             R0, =dword_6E2378; jumptable 00208B5C case 20
LDRB            R0, [R0,#(byte_6E2384 - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 21
LDRB            R0, [R0,#(byte_6E2385 - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 22
LDRB            R0, [R0,#(byte_6E2386 - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 23
LDRB            R0, [R0,#(byte_6E2387 - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 24
LDRB            R0, [R0,#(byte_6E2388 - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 25
LDR             R0, [R0]
LDR             R0, [R0,#4]
LDRB            R0, [R0]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 27
VLDR            S0, [R0,#(dword_6E2390 - 0x6E2378)]
B               loc_209810
LDR             R0, =dword_6E2378; jumptable 00208B5C cases 28-31
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C000
SUB             R0, R0, #0x54 ; 'T'
VLDR            S0, [R0]
B               loc_209490
LDR             R0, =off_6CE970; jumptable 00208B5C case 32
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9D000
B               loc_2095E4
LDR             R0, =off_6CE970; jumptable 00208B5C case 34
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDRB            R1, [R0,#(loc_19B0E0 - 0x19B000)]
CMP             R1, #0
BNE             loc_209AF8
LDRB            R1, [R0,#(loc_19B0E0+1 - 0x19B000)]
CMP             R1, #0
VLDRNE          S0, =3.0
BNE             loc_208CDC
LDRB            R0, [R0,#(loc_19B0DC+2 - 0x19B000)]
CMP             R0, #0
VLDRNE          S0, =2.0
BNE             loc_208CDC
B               loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R0, =off_6CE970; jumptable 00208B5C case 35
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDRSH           R0, [R0,#(loc_19B0D8+2 - 0x19B000)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 36
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDRSH           R0, [R0,#(loc_19B0DC - 0x19B000)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R4, =off_6CE970; jumptable 00208B5C case 37
LDR             R0, [R4]
BL              sub_5EE554
CMP             R0, #8
LDR             R0, [R4]
BEQ             loc_20920C
BL              sub_5EE458
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
NOP
BL              sub_5EEA28
LDRH            R0, [R0]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 38
LDR             R0, [R0]
BL              sub_5EE520
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 39
LDR             R0, [R0]
BL              sub_5EE468
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 40
LDR             R0, [R0]
BL              sub_5EE448
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R1, =off_6CE970; jumptable 00208B5C case 41
LDR             R0, =loc_19CF44
LDR             R1, [R1]
ADD             R0, R0, R1; loc_19CF44
B               loc_2096F4
LDR             R0, =off_6CE970; jumptable 00208B5C case 42
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6400
LDRH            R0, [R0,#(off_106494 - 0x106400)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 43
LDR             R1, =0x197BF8
LDR             R0, [R0]
ADD             R0, R0, R1; loc_197BF8
LDR             R0, [R0,#(loc_197C28 - 0x197BF8)]
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R1, =off_6CE970; jumptable 00208B5C case 44
LDR             R0, =0x19DFE8
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             loc_209308
MOV             R1, #0
BL              sub_5EA4FC
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =unk_6E83D0
LDRH            R0, [R0,#(word_6E8446 - 0x6E83D0)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
DCD off_6CE970
DCD 0x2F0B
DCD dword_6EDA78
DCD byte_19CF24
DCD 0x19DEE8
DCFS 0.0039062
DCD dword_6E2378
DCFS 3.0
DCFS 2.0
DCD loc_19CF44
DCD 0x197BF8
DCD 0x19DFE8
DCD unk_6E83D0
LDR             R1, =off_6CE970; jumptable 00208B5C case 45
LDR             R0, =0x19DFE8
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             loc_209384
MOV             R1, #1
BL              sub_5EA4FC
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =unk_6E84D0
LDRH            R0, [R0,#(word_6E852E - 0x6E84D0)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R1, =off_6CE970; jumptable 00208B5C case 46
LDR             R0, =0x19DFE8
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             loc_2093C8
BL              sub_5EA324
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R1, =unk_6E84D0
SUB             R0, R1, #0x100
LDRH            R1, [R1,#(word_6E8542 - 0x6E84D0)]
LDRH            R0, [R0,#(word_6E845A - 0x6E83D0)]
BL              sub_4D373C
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R1, =off_6CE970; jumptable 00208B5C case 47
LDR             R0, =0x19DFE8
LDR             R1, [R1]
LDR             R0, [R1,R0]
CMP             R0, #0
BEQ             loc_209AEC; jumptable 00208B5C cases 26,33
BL              sub_5EA3B0
CMP             R0, #0
NOP
BEQ             loc_209AEC; jumptable 00208B5C cases 26,33
B               loc_209AF8
LDR             R0, =unk_6E8CD0; jumptable 00208B5C case 48
LDRB            R0, [R0,#(byte_6E8EE0 - 0x6E8CD0)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 49
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRSB           R0, [R0,#(byte_19CF28 - 0x19CF00)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 50
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRSB           R0, [R0,#(byte_19CF29 - 0x19CF00)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 51
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xCF00
LDRSB           R0, [R0,#(byte_19CF2A - 0x19CF00)]
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =0x1A9; jumptable 00208B5C case 52
LDRSB           R0, [R0,R1]
B               loc_20965C
LDR             R0, =off_6CE970; jumptable 00208B5C case 53
LDR             R0, [R0]
BL              sub_5EE4C4
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C cases 54-56
LDR             R0, [R0]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0xF0000
VLDR            S0, [R0,#0x160]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C cases 57-59
LDR             R0, [R0]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0xF0000
B               loc_2096B0
LDR             R0, =off_6CE970; jumptable 00208B5C cases 60-62
LDR             R0, [R0]
ADD             R1, R0, #0x10C000
ADD             R1, R1, #0x238
MOV             R0, SP
BL              sub_4800C0
MOV             R0, SP
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C400
VLDR            S0, [R0,#0x310]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C cases 63-65
MOV             R1, SP
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_58E6A0
MOV             R0, SP
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C400
VLDR            S0, [R0,#0x304]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C case 66
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
LDRB            R0, [R0,#0x260]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C case 67
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
LDRB            R0, [R0,#0x261]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C case 68
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
ADD             R0, R0, #0x200
LDRH            R0, [R0,#0x62]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C case 69
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
VLDR            S0, [R0,#0x254]
B               loc_209490
MOV             R0, #0x1A4; jumptable 00208B5C case 70
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
LDRB            R0, [R0,#0x25E]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C case 71
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
ADD             R0, R0, #0x200
LDRH            R0, [R0,#0x18]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C case 72
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F508
ADD             R0, R0, #0x200
LDRSB           R0, [R0,#0x64]
VMOV            S0, R0
B               loc_209490
LDR             R0, =dword_6E2378; jumptable 00208B5C case 73
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =dword_6E2378; jumptable 00208B5C case 74
LDRB            R0, [R0,#(byte_6E238C - 0x6E2378)]
ADD             SP, SP, #0x10
VMOV            S0, R0
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C cases 75-77
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528EB0
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C400
VLDR            S0, [R0,#0x2F8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
MOV             R0, #0x1A4; jumptable 00208B5C cases 78-80
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F480
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C400
VLDR            S0, [R0,#0x2E4]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 81
LDR             R1, =0x19DEF0
LDR             R0, [R0]
ADD             R0, R0, R1; loc_19DEF0
VLDR            S0, [R0]
B               loc_209810
LDR             R1, =off_6CE970; jumptable 00208B5C case 82
LDR             R0, =0x10645C
MOV             R6, #0
LDR             R1, [R1]
ADD             R0, R0, R1; loc_10645C
LDR             R0, [R0,#(loc_106460 - 0x10645C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R4, #0
ADDNE           R4, R0, #0x1AC
CMP             R4, #0
BEQ             loc_209AEC; jumptable 00208B5C cases 26,33
CMP             R4, #0
MOVEQ           R5, #0
SUBNE           R5, R4, #0x1AC
LDR             R0, [R5]
LDR             R1, [R0,#0x28]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_20976C
MOVS            R0, R5
BEQ             loc_209AEC; jumptable 00208B5C cases 26,33
BL              sub_5EBE00
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R4, [R4,#8]
CMP             R4, R6
BNE             loc_20972C
B               loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R0, =off_6CE970; jumptable 00208B5C case 83
LDR             R0, [R0]
BL              sub_5EE8F4
VMOV            S0, R0
ADD             SP, SP, #0x10
VCVT.F32.U32    S0, S0
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 84
LDR             R1, =dword_119814
VLDR            S1, =0.0039062
LDR             R0, [R0]
ADD             R0, R0, R1; dword_119814
VLDR            S0, [R0]
ADD             SP, SP, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 85
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRB            R0, [R0,#(loc_19DE60 - 0x19DE00)]
CMP             R0, #0
BNE             loc_209AF8
B               loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R0, =off_6CE970; jumptable 00208B5C case 86
LDR             R0, [R0]
BL              sub_5EEA28
LDRH            R0, [R0]
CMP             R0, #0
BEQ             loc_209808
BL              sub_50F080
CMP             R0, #0
LDRBNE          R0, [R0,#2]
BNE             loc_2099D4
MOV             R0, #0
B               loc_2099D4
VCVT.F32.U32    S0, S0
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
LDR             R0, =off_6CE970; jumptable 00208B5C case 87
LDR             R1, =loc_19CF44
LDR             R0, [R0]
LDR             R0, [R0,R1]
TST             R0, #0x100
BNE             loc_209AF8
B               loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R0, =off_6CE970; jumptable 00208B5C case 88
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRB            R0, [R0,#(byte_19D697 - 0x19D600)]
CMP             R0, #0
BNE             loc_209AF8
B               loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R0, =off_6CE970; jumptable 00208B5C case 89
LDR             R1, =loc_19CF44
LDR             R0, [R0]
LDR             R0, [R0,R1]
TST             R0, #0x200
BNE             loc_209AF8
B               loc_209AEC; jumptable 00208B5C cases 26,33
SUB             R2, R4, #0x7000; jumptable 00208B5C default case
SUB             R2, R2, #0x5A ; 'Z'
CMP             R2, #0x20 ; ' '
BCS             loc_209898
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C400
VLDR            S0, [R0,#0x3A8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
SUB             R2, R4, #0x7000
SUB             R2, R2, #0x7A ; 'z'
CMP             R2, #4
BCS             loc_2098BC
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C000
VLDR            S0, [R0,#0xA8]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
SUB             R2, R4, #0x7000
SUB             R2, R2, #0x7E ; '~'
CMP             R2, #0x20 ; ' '
BCS             loc_2098F0
LDR             R0, =off_6CE970
LDR             R1, [R0]
LDR             R0, =0xFFFE3E0C
LDR             R1, [R1,#4]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, R1
VLDR            S0, [R0]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
SUB             R2, R4, #0x7000
SUB             R2, R2, #0x9E
CMP             R2, #0x20 ; ' '
SUBCS           R2, R4, #0x7000
SUBCS           R2, R2, #0xBE
CMPCS           R2, #0x20 ; ' '
BCS             loc_209934
MOV             R0, #0x1A4
LDRH            R1, [R0,R1]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F538
ADD             R0, R0, R4,LSL#2
SUB             R0, R0, #0x1C000
VLDR            S0, [R0,#0x260]
ADD             SP, SP, #0x10
POP             {R4-R6,PC}
SUB             R2, R4, #0x7000
SUB             R2, R2, #0xDE
CMP             R2, #2
SUBCS           R2, R4, #0x7000
SUBCS           R2, R2, #0xE0
CMPCS           R2, #2
BCS             loc_209960
ADD             R0, R1, R4,LSL#1
SUB             R0, R0, #0xE100
LDRH            R0, [R0,#0xD0]
B               loc_2099D4
SUB             R2, R4, #0x7000
SUB             R2, R2, #0xE2
CMP             R2, #4
SUBCS           R2, R4, #0x7000
SUBCS           R2, R2, #0xE6
CMPCS           R2, #4
BCS             loc_20998C
ADD             R0, R0, R4,LSL#1
SUB             R0, R0, #0xE000
LDRH            R0, [R0,#0xDC]
B               loc_2099D4
SUB             R0, R4, #0x7000
SUB             R0, R0, #0xEA
CMP             R0, #4
BCS             loc_2099AC
ADD             R0, R1, R4,LSL#1
SUB             R0, R0, #0xE100
LDRH            R0, [R0,#0xC0]
B               loc_2099D4
SUB             R0, R4, #0x7000
SUB             R0, R0, #0xEE
CMP             R0, #4
BCS             loc_2099DC
LDR             R0, =off_6CE970
LDR             R1, [R0]
LDR             R0, =0xFFFF1EA8
LDR             R1, [R1,#4]
ADD             R0, R0, R4,LSL#1
LDRH            R0, [R1,R0]
VMOV            S0, R0
B               loc_209810
SUB             R0, R4, #0x7000
SUB             R0, R0, #0xF2
CMP             R0, #4
BCS             loc_209A28
LDR             R1, =0x1D07
MUL             R0, R0, R1
LDR             R1, =off_6CE970
LDR             R2, [R1]
LDR             R1, =sub_1605EC
ADD             R0, R2, R0,LSL#2
ADD             R0, R0, R1
ADD             R0, R0, #0x7000
LDR             R1, [R0,#0x2E4]
CMN             R1, #1
BEQ             loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R0, [R0,#0x3B8]
TST             R0, #6
BEQ             loc_209AEC; jumptable 00208B5C cases 26,33
B               loc_209AF8
SUB             R0, R4, #0x7000
SUB             R0, R0, #0xF6
CMP             R0, #4
BCS             loc_209A94
LDR             R1, =0x1D07
LDR             R2, =sub_1605EC
MUL             R0, R0, R1
LDR             R1, =off_6CE970
LDR             R1, [R1]
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, R2
ADD             R0, R0, #0x7000
LDR             R0, [R0,#0x2E4]
CMN             R0, #1
BEQ             loc_209AF8
B               loc_209AEC; jumptable 00208B5C cases 26,33
DCD unk_6E84D0
DCD unk_6E8CD0
DCD 0x1A9
DCD 0x19DEF0
DCD 0x10645C
DCD dword_119814
DCFS 0.0039062
DCD 0xFFFE3E0C
DCD 0xFFFF1EA8
DCD 0x1D07
DCD sub_1605EC
SUB             R0, R4, #0x7000
SUB             R0, R0, #0xFA
CMP             R0, #4
SUBCS           R0, R4, #0x7000
SUBCS           R0, R0, #0xFE
BCS             loc_209AEC; jumptable 00208B5C cases 26,33
LDR             R1, =0x1D07
LDR             R2, =sub_1605EC
MUL             R0, R0, R1
LDR             R1, =off_6CE970
LDR             R1, [R1]
ADD             R0, R1, R0,LSL#2
LDR             R1, =0x72E4
ADD             R0, R0, R2
LDR             R1, [R1,R0]
CMN             R1, #1
BNE             loc_209AEC; jumptable 00208B5C cases 26,33
ADD             R0, R0, #0x5000
ADD             R0, R0, #0x830
LDR             R0, [R0]
TST             R0, #1
BEQ             loc_209AF8
ADD             SP, SP, #0x10; jumptable 00208B5C cases 26,33
VLDR            S0, =0.0
POP             {R4-R6,PC}
ADD             SP, SP, #0x10
VLDR            S0, =1.0
POP             {R4-R6,PC}
