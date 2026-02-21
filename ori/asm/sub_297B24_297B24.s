PUSH            {R4-R8,LR}
MOV             R5, R0
SUB             SP, SP, #0x110; float
LDR             R0, [R0,#0x10]
LDR             R1, =0xC00A5
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#4]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC00A6
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC0042
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#8]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC00A0
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#0xC]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC112D
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#0x10]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC112E
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x14]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC0005
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x18]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC2026
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x1C]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC1114
MOV             R3, #0
MOV             R2, #0x20000
LDR             R0, [R0,#0x20]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC2071
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x24]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC20EB
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x28]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC0007
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x2C]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC000A
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x30]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC001A
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x34]
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC20FA
MOV             R3, #0
MOV             R2, #0x10000
LDR             R0, [R0,#0x38]
BL              sub_572670
LDR             R6, =off_6CE970
LDR             R8, [R5,#0x10]
MOV             R7, #0
LDR             R0, [R6]
ADD             R4, R0, #0x68 ; 'h'
ADD             R0, R8, #0x3C ; '<'
BL              sub_5BD96C
STR             R4, [R8,#0x13C]
LDR             R0, [R5,#0x10]
MOV             R2, #0
ADR             R1, aMinigameMsbt_2; "MiniGame.msbt"
ADD             R4, R0, #0x3C ; '<'
ADD             R0, SP, #0x128+var_120
BL              sub_10D1D0
LDR             R0, [R4,#0x100]
MOV             R3, #0; int
ADD             R2, SP, #0x128+var_120; int
STMEA           SP, {R0,R7}
LDR             R0, [R6]
ADD             R1, R4, #0x118; int
ADD             R0, R0, #0x1E0; int
BL              sub_4E2084
LDR             R0, [R4,#0x108]
LDR             R8, =sub_10640C
CMP             R0, #0
BEQ             loc_297D54
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_297D1C
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_297D34
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_297D54
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_297D54
LDR             R1, =0xC2109
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6]
LDR             R1, [R4,#0x108]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x10C]
CMP             R0, #0
BEQ             loc_297DB4
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_297D7C
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_297D94
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_297DB4
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_297DB4
LDR             R1, =0xC210A
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6]
LDR             R1, [R4,#0x10C]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_297E14
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_297DDC
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_297DF4
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_297E14
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_297E14
LDR             R1, =0xC2119
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6]
LDR             R1, [R4,#0x110]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x104]
CMP             R0, #0
BEQ             loc_297F24
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_297E3C
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_297E54
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_297F24
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_297F24
LDR             R1, =dword_6E2378
LDRB            R2, [R1,#(byte_6E2386 - 0x6E2378)]
LDRB            R1, [R1,#(byte_6E238C - 0x6E2378)]
CMP             R2, #0
BEQ             loc_297E9C
CMP             R1, #0
LDREQ           R1, =0xA101F
BEQ             loc_297F08
CMP             R1, #1
LDREQ           R1, =0xA1020
BEQ             loc_297F08
CMP             R1, #3
LDREQ           R1, =0xA1021
BEQ             loc_297F08
CMP             R1, #4
LDREQ           R1, =0xA1022
BEQ             loc_297F08
B               def_297EA0; jumptable 00297EA0 default case, cases 0,7
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_297EA0; jumptable 00297EA0 default case, cases 0,7
DCD def_297EA0; jump table for switch statement
LDR             R1, =0xA1018; jumptable 00297EA0 case 1
B               loc_297F08
LDR             R1, =0xA1019; jumptable 00297EA0 case 2
B               loc_297F08
LDR             R1, =0xA101A; jumptable 00297EA0 case 3
B               loc_297F08
LDR             R1, =0xA101B; jumptable 00297EA0 case 4
B               loc_297F08
LDR             R1, =0xA101C; jumptable 00297EA0 case 5
B               loc_297F08
LDR             R1, =0xA101D; jumptable 00297EA0 case 6
B               loc_297F08
LDR             R1, =0xA101E; jumptable 00297EA0 case 8
B               loc_297F08
MOV             R1, #0; jumptable 00297EA0 default case, cases 0,7
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6]
LDR             R1, [R4,#0x104]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R4, [R5,#0x10]
LDR             R0, [R6]
LDR             R1, [R4]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R5,#0x10]
ADD             R4, R4, #4
ADD             R0, R0, #0x3C ; '<'
CMP             R0, R4
BNE             loc_297F28
LDR             R1, =dword_6C3E28
MOV             R0, #1
STRB            R0, [R5,#0x22]
STRB            R0, [R5,#0x21]
STRB            R7, [R5,#0x20]
LDRD            R0, R1, [R1]
ADD             R2, SP, #0x128+var_20
STM             R2, {R0,R1}
ADD             R1, SP, #0x128+var_20
LDR             R0, [R6]
MOV             R2, #4
BL              sub_529204
LDR             R4, [R6]
MOV             R1, #0x51 ; 'Q'
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x12F
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x12E
MOV             R0, R4
BL              sub_52F770
LDR             R0, [R6]
MOV             R1, #0x130
BL              sub_52F770
LDR             R0, [R6]
NOP
BL              sub_283F70
LDR             R0, [R6]
NOP
BL              sub_289BF8
LDR             R0, [R6]
NOP
BL              sub_28F720
LDR             R0, [R6]
NOP
BL              sub_282A24
LDR             R0, [R6]
NOP
BL              sub_2864EC
ADD             SP, SP, #0x110
POP             {R4-R8,PC}
