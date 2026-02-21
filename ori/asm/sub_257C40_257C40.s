PUSH            {R4-R9,LR}
SUB             SP, SP, #0x124; float
MOV             R7, #0
MOV             R5, R0
LDR             R8, =off_6CE970
STR             R7, [SP,#0x140+var_138]
STR             R7, [SP,#0x140+var_134]
LDR             R2, =aRomBattleAtkmi; "rom:/Battle/AtkMiracleBall/ballInfo.dat"
LDR             R0, [R8]
MOV             R3, R7; int
ADD             R1, R0, #0x68 ; 'h'
STMEA           SP, {R1,R7}
ADD             R1, SP, #0x140+var_138; int
ADD             R0, R0, #0x1E0; int
BL              sub_4E2084
LDR             R0, [R8]
ADD             R0, R0, #0x1E0
BL              sub_4E1DEC
LDR             R0, [SP,#0x140+var_134]
MOV             R1, #1
BL              sub_10D594
LDR             R1, =0x126EC
STR             R0, [R1,R5]
LDR             R4, [SP,#0x140+var_134]
LDR             R0, [R4,#8]
CMP             R0, #0
LDRNE           R0, [R4,#0x14]
CMPNE           R0, #0
BEQ             loc_257CBC
BL              sub_110D10
STR             R7, [R4,#0x14]
LDR             R0, [R8]
LDR             R1, [SP,#0x140+var_138]
ADD             R0, R0, #0x1E0
BL              sub_4E2054
MOV             R4, #0xA000
ADD             R9, R4, #0xE
UXTH            R0, R4
UXTH            R1, R4
ADD             R6, R5, R0,LSL#2
SUB             R6, R6, #0x27000
LDR             R0, [R8]
SUB             R6, R6, #0xFF0
BL              sub_52FACC
ADD             R4, R4, #1
CMP             R4, R9
STR             R0, [R6]
BCC             loc_257CD4
LDR             R0, [R5,#0x14]
LDR             R1, =0xC00A7
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC00A8
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x18]
LDR             R1, =0xC112D
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x1C]
LDR             R1, =0xC112E
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x20]
LDR             R1, =0xC0009
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x24]
LDR             R1, =0xC2026
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x28]
LDR             R1, =0xC00A0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x2C]
LDR             R1, =0xC209F
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x30]
LDR             R1, =0xC2071
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x34]
LDR             R1, =0xC20EB
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x38]
LDR             R1, =0xC0007
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x3C]
LDR             R1, =0xC000A
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x40]
LDR             R1, =0xC001A
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x44]
LDR             R1, =0xC20FA
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R9, =sub_10640C
ADD             R4, R5, #0x10
MOV             R6, #0
LDR             R0, [R8]
LDR             R1, [R4]
ADD             R0, R0, R9; sub_10640C
BL              sub_1CF9FC
ADD             R6, R6, #1
CMP             R6, #0xE
ADD             R4, R4, #4
BCC             loc_257E24
LDR             R1, =unk_63EFF0
MOV             R2, #0xE
LDR             R0, [R1,#(dword_63F00C - 0x63EFF0)]
VLDR            S0, [R1,#(flt_63F004 - 0x63EFF0)]
VLDR            S4, [R1,#(flt_63F008 - 0x63EFF0)]
VLDR            S5, [R1,#(flt_63F01C - 0x63EFF0)]
ADD             R1, R1, #0x20 ; ' '
VLDM            R1, {S1-S3}
ADD             R1, SP, #0x140+var_38
VSTR            S0, [SP,#0x140+var_38]
VSTR            S4, [SP,#0x140+var_34]
STR             R0, [SP,#0x140+var_30]
VSTR            S5, [SP,#0x140+var_20]
ADD             R0, SP, #0x140+var_2C
VSTM            R0, {S1-S3}
LDR             R0, [R8]
BL              sub_529204
LDR             R4, [R8]
MOV             R1, #0x51 ; 'Q'
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x12F
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x12E
MOV             R0, R4
BL              sub_52F770
LDR             R0, [R8]
MOV             R1, #0x130
BL              sub_52F770
LDR             R0, [R8]
ADD             R4, R0, #0x68 ; 'h'
ADD             R0, R5, #0x48 ; 'H'
BL              sub_5BD96C
STR             R4, [R5,#0x148]
ADD             R4, R5, #0x48 ; 'H'
MOV             R2, #0
ADR             R1, aMinigameMsbt; "MiniGame.msbt"
ADD             R0, SP, #0x140+var_138
BL              sub_10D1D0
LDR             R0, [R4,#0x100]
MOV             R3, #0; int
ADD             R2, SP, #0x140+var_138; int
STMEA           SP, {R0,R7}
LDR             R0, [R8]
ADD             R1, R4, #0x118; int
ADD             R0, R0, #0x1E0; int
BL              sub_4E2084
LDR             R0, [R4,#0x108]
CMP             R0, #0
BEQ             loc_257F64
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_257F2C
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_257F44
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_257F64
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_257F64
LDR             R1, =0xC2109
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R8]
LDR             R1, [R4,#0x108]
ADD             R0, R0, R9; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x10C]
CMP             R0, #0
BEQ             loc_257FC4
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_257F8C
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_257FA4
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_257FC4
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_257FC4
LDR             R1, =0xC210A
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R8]
LDR             R1, [R4,#0x10C]
ADD             R0, R0, R9; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_258024
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_257FEC
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_258004
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_258024
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_258024
LDR             R1, =0xC2119
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R8]
LDR             R1, [R4,#0x110]
ADD             R0, R0, R9; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x104]
CMP             R0, #0
BEQ             loc_258134
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_25804C
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_258064
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_258134
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_258134
LDR             R1, =dword_6E2378
LDRB            R2, [R1,#(byte_6E2386 - 0x6E2378)]
LDRB            R1, [R1,#(byte_6E238C - 0x6E2378)]
CMP             R2, #0
BEQ             loc_2580AC
CMP             R1, #0
LDREQ           R1, =0xA101F
BEQ             loc_258118
CMP             R1, #1
LDREQ           R1, =0xA1020
BEQ             loc_258118
CMP             R1, #3
LDREQ           R1, =0xA1021
BEQ             loc_258118
CMP             R1, #4
LDREQ           R1, =0xA1022
BEQ             loc_258118
B               def_2580B0; jumptable 002580B0 default case, cases 0,7
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2580B0; jumptable 002580B0 default case, cases 0,7
DCD def_2580B0; jump table for switch statement
LDR             R1, =0xA1018; jumptable 002580B0 case 1
B               loc_258118
LDR             R1, =0xA1019; jumptable 002580B0 case 2
B               loc_258118
LDR             R1, =0xA101A; jumptable 002580B0 case 3
B               loc_258118
LDR             R1, =0xA101B; jumptable 002580B0 case 4
B               loc_258118
LDR             R1, =0xA101C; jumptable 002580B0 case 5
B               loc_258118
LDR             R1, =0xA101D; jumptable 002580B0 case 6
B               loc_258118
LDR             R1, =0xA101E; jumptable 002580B0 case 8
B               loc_258118
MOV             R1, #0; jumptable 002580B0 default case, cases 0,7
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R8]
LDR             R1, [R4,#0x104]
ADD             R0, R0, R9; sub_10640C
BL              sub_1CF9FC
LDR             R0, =off_6CE098
LDR             R1, [R0]
ADD             R0, R5, #0x12400
ADD             R0, R0, #0x2CC
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2780
LDR             R2, [R1]
LDR             R2, [R2,#4]
STR             R2, [R0,#4]
LDR             R2, [R1]
STR             R2, [R0,#8]
LDR             R2, [R1]
LDR             R2, [R2,#4]
STR             R0, [R2,#8]
LDR             R1, [R1]
STR             R0, [R1,#4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
ADD             SP, SP, #0x124
POP             {R4-R9,PC}
