PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R6, R0, #0xC00
ADD             R9, R0, #0x1000
ADD             R0, R0, #0x20C00
LDR             R10, =off_6CE970
ADD             R9, R9, #0xC8
VPUSH           {D8}
SUB             SP, SP, #0x14
ADD             R0, R0, #0x358
STR             R0, [SP,#0x40+var_40]
LDRB            R2, [R9,#0xF4]
ADD             R1, R5, #0x20000
LDR             R0, [R10]
ADD             R6, R6, #0x1C8
ADD             R1, R1, #0xF20
CMP             R2, #0
STR             R1, [SP,#0x40+var_3C]
LDRNE           R1, [R6,#0xC]
LDR             R11, =0xFFE683CC
VLDR            S16, =8.0
ADD             R8, R5, #0x20000
CMPNE           R1, #0
ADD             R8, R8, #0xF10
ADD             R4, R5, #0x400
BEQ             loc_1DB12C
LDR             R1, =0x19B0B4
LDR             R1, [R1,R0]
TST             R1, #0x200
BEQ             loc_1DB12C
LDR             R1, =0x3000F
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R11
BL              sub_503414
MOV             R0, #0
VMOV.F32        S0, S16
REV             R0, R0
ADD             R1, SP, #0x40+var_38
STR             R0, [SP,#0x40+var_38]
LDR             R0, [SP,#0x40+var_40]
BL              sub_4E665C
MOV             R0, #0
STRB            R0, [R8]
LDR             R0, [SP,#0x40+var_3C]
MOV             R6, R0
BL              sub_4E63E0
MOV             R0, #0xFFFFFFFF
VMOV.F32        S0, S16
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x40+var_40]
MOV             R0, R6
BL              sub_4E665C
LDRB            R0, [R5,#0x4D]
ADD             R6, R5, #0x20000
ADD             R6, R6, #0xF00
ADD             R0, R5, R0,LSL#2
LDR             R0, [R0,#0x54]
LDRB            R0, [R0,#0x3F6]
AND             R0, R0, #0x7F
CMP             R0, #7; switch 7 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1DAFE8; jumptable 001DAFE8 default case, cases 0,3
DCD def_1DAFE8; jump table for switch statement
LDRH            R4, [R4,#0x6E]; jumptable 001DAFE8 cases 1,2
CMP             R4, #0
BEQ             loc_1DB040
MOV             R0, R4
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_1DB040
STRH            R4, [R6,#8]
LDR             R0, [R10]
MOV             R2, #1
MOV             R1, R4
BL              sub_52B6BC
MOV             R0, R5
BL              sub_1DA794
LDR             R0, =0x19DFE8
LDR             R1, [R10]
LDR             R0, [R1,R0]
ADD             SP, SP, #0x14
MOV             R1, #0
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1CC8DC
LDRH            R4, [R4,#0x6E]; jumptable 001DAFE8 cases 4-6
CMP             R4, #0
BEQ             loc_1DB118
MOV             R7, #0
MOV             R0, R4
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_1DB0B0
LDR             R0, [R10]
MOV             R1, R4
BL              sub_52F508
LDRB            R0, [R0,#0x1D9]
AND             R0, R0, #8
MOVS            R7, R0,LSR#3
STRHNE          R4, [R6,#0xA]
STRHEQ          R4, [R6,#8]
B               loc_1DB0C0
MOV             R0, R4
BL              sub_47FF28
CMP             R0, #0
STRHNE          R4, [R6,#0xC]
MOV             R0, R4
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_1DB10C
LDR             R0, [R10]
CMP             R7, #0
MOV             R2, #1
MOV             R1, R4
BEQ             loc_1DB0F8
BL              sub_52C6DC
NOP
NOP
B               loc_1DB118
NOP
BL              sub_52B6BC
NOP
NOP
B               loc_1DB118
LDR             R0, [R10]
MOV             R1, R4
BL              sub_52A460
ADD             SP, SP, #0x14
MOV             R0, R5
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_1DE480
NOP
BL              sub_528E64
LDR             R1, [R10]
MOV             R7, R0
LDR             R0, [R0,#0x470]
ADD             R1, R1, #0x100000
ADD             R1, R1, #0x9B000
LDR             R1, [R1,#0xB4]
TST             R0, R1
BEQ             def_1DAFE8; jumptable 001DAFE8 default case, cases 0,3
ADD             R0, R5, #0x250
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1DAFE8; jumptable 001DAFE8 default case, cases 0,3
MOV             R0, #0
VMOV.F32        S0, S16
REV             R0, R0
ADD             R1, SP, #0x40+var_38
STR             R0, [SP,#0x40+var_38]
LDR             R0, [SP,#0x40+var_40]
BL              sub_4E665C
MOV             R0, #0
STRB            R0, [R8]
LDR             R0, [SP,#0x40+var_3C]
MOV             R8, R0
BL              sub_4E63E0
MOV             R0, #0xFFFFFFFF
VMOV.F32        S0, S16
REV             R0, R0
MOV             R1, SP
STR             R0, [SP,#0x40+var_40]
MOV             R0, R8
BL              sub_4E665C
LDRH            R1, [R4,#0x6E]
LDR             R2, =0x3000E
MOV             R3, #0
CMP             R1, #0
BEQ             loc_1DB200
LDR             R0, [R10]
SUB             R0, R0, R11
BL              sub_503808
NOP
NOP
B               loc_1DB210
DCD off_6CE970
DCD 0xFFE683CC
DCFS 8.0
DCD 0x19B0B4
DCD 0x3000F
DCFS 0.0
DCD 0x19DFE8
DCD 0x3000E
LDR             R0, [R10]
ADD             R1, R5, #0x74 ; 't'
SUB             R0, R0, R11
BL              sub_503720
LDRH            R4, [R4,#0x6E]
CMP             R4, #0
BEQ             loc_1DB280
MOV             R0, R4
BL              sub_47FF54
CMP             R0, #0
LDR             R0, [R10]
MOV             R1, R4
BEQ             loc_1DB278
BL              sub_52F508
LDRB            R0, [R0,#0x1D9]
MOV             R2, #1
MOV             R1, R4
AND             R0, R0, #8
MOVS            R0, R0,LSR#3
LDR             R0, [R10]
BEQ             loc_1DB264
BL              sub_52C6DC
NOP
NOP
B               loc_1DB280
NOP
BL              sub_52B6BC
NOP
NOP
B               loc_1DB280
NOP
BL              sub_52A460
ADD             R0, R5, #0x9400
ADD             R0, R0, #0x288
BL              sub_29F9A4
CMP             R0, #0
LDRNE           R0, [R0]
UXTH            R1, R0
LDR             R0, [R10]
BL              sub_529264
LDRB            R0, [R5,#0x468]
LDR             R11, =flt_6E34B0
ADD             R4, R5, #0x74 ; 't'
CMP             R0, #3
BEQ             loc_1DB2DC
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
VLDR            S0, [R11,#(flt_6E3564 - 0x6E34B0)]
ADD             R0, R4, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
MOV             R0, #3
STRB            R0, [R4,#0x3F4]
LDRB            R0, [R9,#0xF4]
CMP             R0, #0
BEQ             loc_1DB320
VLDR            S0, [R11,#(flt_6E355C - 0x6E34B0)]
ADD             R2, R11, #0x9C
MOV             R1, #0
VCVT.F32.U32    S0, S0
ADD             R0, R6, #0x1DC
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
STR             R0, [SP,#0x40+var_40]
VLDR            S0, [R11,#(flt_6E355C - 0x6E34B0)]
ADD             R0, R6, #0x32C
VCVT.F32.U32    S0, S0
BL              sub_4E6784
MOV             R8, #0
ADD             R0, R11, #0x148
STRB            R8, [R6,#0x3F4]
LDM             R0, {R0,R1,R3}
ADD             R4, R5, #0x11C0
MOV             R2, SP
STMEA           SP, {R0,R1,R3}
ADD             R0, R5, #0x1000
VLDR            S0, [R11,#(flt_6E3604 - 0x6E34B0)]
MOV             R1, R8
ADD             R0, R0, #0x39C
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x40+var_34
REV             R0, R0
STR             R0, [SP,#0x40+var_34]
VLDR            S0, [R11,#(flt_6E35F4 - 0x6E34B0)]
ADD             R0, R4, #0x32C
BL              sub_4E6784
MOV             R0, #0xFFFFFF00
VLDR            S0, [R11,#(flt_6E371C - 0x6E34B0)]
REV             R0, R0
ADD             R4, R5, #0x10800
STR             R0, [SP,#0x40+var_40]
ADD             R0, R5, #0x10000
ADD             R4, R4, #0x3A8
MOV             R1, SP
ADD             R0, R0, #0xD00
BL              sub_4E665C
MOV             R0, #2
STRB            R0, [R4,#0xFD]
LDR             R0, =0x1FACC
LDR             R0, [R0,R5]
CMP             R0, #0
ADDNE           R0, R5, #0x1C000
ADDNE           R0, R0, #0x3AC0
BLNE            sub_311298
ADD             R0, R5, #0x1F000
ADD             R0, R0, #0x820
BL              sub_338AA4
MOV             R4, #0
MOV             R0, #0x97
MUL             R0, R4, R0
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, #0x20000
ADD             R0, R0, #0x14C
BL              sub_38608C
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1DB3C4
LDR             R0, =0x19DFE8
LDR             R1, [R10]
LDR             R0, [R1,R0]
MOV             R1, #1
BL              sub_1CC8DC
ADD             R9, R7, #0x400
STRH            R8, [R9,#0xA8]
LDR             R0, [R10]
BL              sub_5EE520
CMP             R0, #4
NOP
BEQ             loc_1DB578
CMP             R0, #5
CMPNE           R0, #6
BNE             loc_1DB598
LDR             R0, [R10]
BL              sub_5EE458
NOP
NOP
BL              sub_50F020
MOV             R11, R0
BIC             R0, R4, #0xFF
ORR             R2, R0, R8
MOV             R1, R8,LSL#8
AND             R1, R1, #0xFF00
BIC             R2, R2, #0xFF00
LDR             R0, [R10]
ORR             R4, R2, R1
STR             R8, [SP,#0x40+var_40]
LDRB            R1, [R7,#0x495]
MOV             R3, #1
MOV             R2, #0x3F ; '?'
BL              sub_5EEC7C
CMP             R0, #0
LDRBNE          R0, [R9,#0xA6]
CMPNE           R0, #0
BEQ             loc_1DB498
MOV             R1, #1
BIC             R0, R4, #0xFF
ORR             R0, R0, R1
MOV             R1, R1,LSL#8
BIC             R0, R0, #0xFF00
AND             R1, R1, #0xFF00
ORR             R4, R0, R1
LDRB            R1, [R7,#0x495]
LDR             R2, =0xE00D
LDR             R0, =dword_6E7CD0
MOV             R6, #0x64 ; 'd'
BL              sub_5F1164
CMP             R0, #0
NOP
BEQ             loc_1DB4D8
LDR             R0, =dword_6E30CC
MOV             R2, #0x64 ; 'd'
LDR             R1, [R0,#(dword_6E30F4 - 0x6E30CC)]
LDR             R0, =0x51EB851F
MUL             R1, R1, R2
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#5
SUB             R6, R1, R0,ASR#31
STR             R8, [SP,#0x40+var_38]
STR             R8, [SP,#0x40+var_34]
LDR             R0, [R10]
ADD             R1, SP, #0x40+var_38
STR             R1, [SP,#0x40+var_40]
LDRB            R1, [R7,#0x495]
MOV             R3, #1
MOV             R2, #0x1F
BL              sub_5EEC7C
CMP             R0, #0
NOP
BEQ             loc_1DB534
LDR             R2, [SP,#0x40+var_38]
LDR             R0, =0x51EB851F
MOV             R1, #1
BIC             R3, R4, #0xFF00
MUL             R2, R2, R6
MOV             R1, R1,LSL#8
AND             R1, R1, #0xFF00
ORR             R4, R3, R1
SMULL           R2, R0, R0, R2
MOV             R1, R0,ASR#5
SUB             R6, R1, R0,ASR#31
LDRB            R0, [R11,#3]
SXTB            R1, R4
CMP             R1, #0
BNE             loc_1DB554
MOV             R1, R6
BL              sub_586850
ANDS            R8, R0, #0xFF
MOVEQ           R8, #1
ADD             R4, R7, #0x100
MOV             R2, #0
LDRSH           R0, [R4,#0x4C]
LDRSH           R3, [R4,#0x4A]
RSB             R1, R8, #0
BL              sub_47FEF8
STRH            R0, [R4,#0x4C]
STRH            R8, [R9,#0xA8]
B               loc_1DB598
LDR             R0, [R10]
BL              sub_5EE458
MOV             R1, R0
STR             R8, [SP,#0x40+var_40]
LDR             R0, [R10]
MOV             R3, R7
MOV             R2, #0xFFFFFFFF
BL              sub_52F54C
LDR             R4, =unk_656B78
LDR             R0, [R10]
MOV             R1, #1
VLDR            S16, [R4,#(flt_656B80 - 0x656B78)]
BL              sub_5EE8E0
VMOV.F32        S0, S16
MOV             R1, R0
MOV             R0, R5
BL              sub_1DB5F8
ADD             R4, R4, #0x64 ; 'd'
ADD             R0, R5, #0x20800
LDM             R4, {R1,R2}
ADD             R0, R0, #0x2BC
STM             R0, {R1,R2}
ADD             SP, SP, #0x14; jumptable 001DAFE8 default case, cases 0,3
VPOP            {D8}
POP             {R4-R11,PC}
