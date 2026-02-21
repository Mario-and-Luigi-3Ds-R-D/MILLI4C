PUSH            {R4-R8,LR}
MOV             R4, #0xA000
SUB             SP, SP, #0x108; float
LDR             R7, =off_6CE970
MOV             R6, R0
ADD             R8, R4, #0xD
UXTH            R0, R4
UXTH            R1, R4
ADD             R5, R6, R0,LSL#2
SUB             R5, R5, #0x27000
LDR             R0, [R7]
SUB             R5, R5, #0xFF0
BL              sub_52FACC
ADD             R4, R4, #1
CMP             R4, R8
STR             R0, [R5]
BCC             loc_1FD818
LDR             R0, [R6,#0x14]
LDR             R1, =0xC0076
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6,#0x10]
LDR             R1, =0xC0077
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6,#0x18]
LDR             R1, =0xC0078
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6,#0x1C]
LDR             R1, =0xC1130
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6,#0x20]
LDR             R1, =0xC1132
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6,#0x24]
LDR             R1, =0xC2026
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6,#0x28]
LDR             R1, =0xC2071
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6,#0x2C]
LDR             R1, =0xC20EB
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6,#0x30]
LDR             R1, =0xC0007
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6,#0x34]
LDR             R1, =0xC000A
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6,#0x38]
LDR             R1, =0xC20FA
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6,#0x3C]
LDR             R1, =0xC0046
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6,#0x40]
LDR             R1, =0xC0045
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R8, =sub_10640C
ADD             R4, R6, #0x10
MOV             R5, #0
LDR             R0, [R7]
LDR             R1, [R4]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
ADD             R5, R5, #1
CMP             R5, #0xD
ADD             R4, R4, #4
BCC             loc_1FD954
LDR             R1, =unk_63ECEC
LDR             R0, [R7]
MOV             R2, #0x15
BL              sub_529204
LDR             R0, [R7]
MOV             R5, #0
ADD             R4, R0, #0x68 ; 'h'
ADD             R0, R6, #0x44 ; 'D'
BL              sub_5BD96C
STR             R4, [R6,#0x144]
ADD             R4, R6, #0x44 ; 'D'
MOV             R2, #0
ADR             R1, aMinigameMsbt_7; "MiniGame.msbt"
ADD             R0, SP, #0x120+var_118
BL              sub_10D1D0
LDR             R0, [R4,#0x100]
MOV             R3, #0; int
ADD             R2, SP, #0x120+var_118; int
STMEA           SP, {R0,R5}
LDR             R0, [R7]
ADD             R1, R4, #0x118; int
ADD             R0, R0, #0x1E0; int
BL              sub_4E2084
LDR             R0, [R4,#0x108]
CMP             R0, #0
BEQ             loc_1FDA30
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_1FD9F8
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_1FDA10
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_1FDA30
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_1FDA30
LDR             R1, =0xC2109
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R7]
LDR             R1, [R4,#0x108]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x10C]
CMP             R0, #0
BEQ             loc_1FDA90
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_1FDA58
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_1FDA70
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_1FDA90
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_1FDA90
LDR             R1, =0xC210A
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R7]
LDR             R1, [R4,#0x10C]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_1FDAF0
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_1FDAB8
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_1FDAD0
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_1FDAF0
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_1FDAF0
LDR             R1, =0xC2119
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R7]
LDR             R1, [R4,#0x110]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#0x104]
CMP             R0, #0
BEQ             loc_1FDC00
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_1FDB18
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_1FDB30
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_1FDC00
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_1FDC00
LDR             R1, =dword_6E2378
LDRB            R2, [R1,#(byte_6E2386 - 0x6E2378)]
LDRB            R1, [R1,#(byte_6E238C - 0x6E2378)]
CMP             R2, #0
BEQ             loc_1FDB78
CMP             R1, #0
LDREQ           R1, =0xA101F
BEQ             loc_1FDBE4
CMP             R1, #1
LDREQ           R1, =0xA1020
BEQ             loc_1FDBE4
CMP             R1, #3
LDREQ           R1, =0xA1021
BEQ             loc_1FDBE4
CMP             R1, #4
LDREQ           R1, =0xA1022
BEQ             loc_1FDBE4
B               def_1FDB7C; jumptable 001FDB7C default case, cases 0,7
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1FDB7C; jumptable 001FDB7C default case, cases 0,7
DCD def_1FDB7C; jump table for switch statement
LDR             R1, =0xA1018; jumptable 001FDB7C case 1
B               loc_1FDBE4
LDR             R1, =0xA1019; jumptable 001FDB7C case 2
B               loc_1FDBE4
LDR             R1, =0xA101A; jumptable 001FDB7C case 3
B               loc_1FDBE4
LDR             R1, =0xA101B; jumptable 001FDB7C case 4
B               loc_1FDBE4
LDR             R1, =0xA101C; jumptable 001FDB7C case 5
B               loc_1FDBE4
LDR             R1, =0xA101D; jumptable 001FDB7C case 6
B               loc_1FDBE4
LDR             R1, =0xA101E; jumptable 001FDB7C case 8
B               loc_1FDBE4
MOV             R1, #0; jumptable 001FDB7C default case, cases 0,7
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R7]
LDR             R1, [R4,#0x104]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
ADD             SP, SP, #0x108
POP             {R4-R8,PC}
