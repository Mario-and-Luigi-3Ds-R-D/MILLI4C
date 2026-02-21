PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R1, R0, #0x1E0; int
ADD             R0, R0, #0x24000
SUB             SP, SP, #0x14
ADD             R0, R0, #0xED0; int
BL              sub_1CF120
CMP             R0, #0
BEQ             loc_1D5EB8
LDR             R4, =0xB013
MOV             R0, R5
MOV             R1, R4
BL              sub_52FACC
ADD             R2, R5, #0x108
ADD             R1, R5, #0xE4
STMEA           SP, {R1,R2}
MOV             R3, #0x10000
ADD             R2, R5, #0x48 ; 'H'
MOV             R1, R4
BL              sub_572CA0
LDR             R0, =sub_197BBC
MOV             R3, #0x10000
ADD             R2, R5, #8
ADD             R0, R0, R5
MOV             R1, #0
STR             R0, [SP,#0x38+var_30]
BL              sub_218238
LDR             R0, =0x197BF8
LDR             R2, [R5,#0xC8]
MOV             R3, #0x10000
MOV             R1, #0
ADD             R0, R0, R5
BL              sub_21825C
LDR             R11, =unk_654296
MOV             R8, #0
MOV             R9, R8
SUB             R10, R11, #0xDA
MOV             R4, #0
ADD             R6, R11, R8,LSL#2
ADD             R0, R6, R4,LSL#1
LDRH            R7, [R0]
MOV             R0, R5
MOV             R1, R7
BL              sub_52FACC
STR             R9, [SP,#0x38+var_38]
STR             R9, [SP,#0x38+var_34]
LDR             R3, [R10,R4,LSL#2]
ADD             R2, R5, #0x28 ; '('
MOV             R1, R7
BL              sub_572CA0
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1D5878
ADD             R8, R8, #1
CMP             R8, #5
BLT             loc_1D5870
LDR             R0, =0x106E30
ADD             R7, R5, #0x108000
ADD             R7, R7, #0x16C0
ADD             R4, R5, R0
CMP             R4, R7
MOV             R6, #0xC000
ADDNE           R8, R5, #0x1BC
BEQ             loc_1D592C
LDRB            R0, [R4,#0x13]
CMP             R0, #0
LDREQ           R0, [R4,#0x18]
CMPEQ           R0, #0
BNE             loc_1D5918
MOV             R3, #0x10000
ADD             R2, R5, #8
MOV             R1, R6
MOV             R0, R4
STR             R8, [SP,#0x38+var_38]
STR             R8, [SP,#0x38+var_34]
BL              sub_572CA0
ADD             R1, R5, #0xCC
MOV             R0, R4
STR             R1, [R0,#0x64]
ADD             R0, R6, #1
ADD             R4, R4, #0xEC
UXTH            R6, R0
CMP             R4, R7
BNE             loc_1D58DC
LDR             R0, =0x10A930
MOV             R4, R7
MOV             R6, #0xB000
ADD             R8, R5, R0
CMP             R7, R8
ADDNE           R7, R5, #0x150
ADDNE           R10, R5, #0x12C
BEQ             loc_1D599C
LDRB            R0, [R4,#0x13]
CMP             R0, #0
LDREQ           R0, [R4,#0x18]
CMPEQ           R0, #0
BNE             loc_1D5988
MOV             R3, #0x10000
ADD             R2, R5, #0x48 ; 'H'
MOV             R1, R6
MOV             R0, R4
STR             R7, [SP,#0x38+var_34]
STR             R10, [SP,#0x38+var_38]
BL              sub_572CA0
ADD             R1, R5, #0xCC
MOV             R0, R4
STR             R1, [R0,#0x64]
ADD             R0, R6, #1
ADD             R4, R4, #0xEC
UXTH            R6, R0
CMP             R4, R8
BNE             loc_1D594C
LDR             R0, =dword_10BBA0
MOV             R4, R8
MOV             R6, #0xA000
ADD             R7, R5, R0
CMP             R8, R7
ADDNE           R8, R5, #0x198
ADDNE           R10, R5, #0x174
BEQ             loc_1D59F8
MOV             R3, #0x10000
ADD             R2, R5, #0x68 ; 'h'
MOV             R1, R6
MOV             R0, R4
STR             R8, [SP,#0x38+var_34]
STR             R10, [SP,#0x38+var_38]
BL              sub_572CA0
ADD             R1, R5, #0xCC
MOV             R0, R4
STR             R1, [R0,#0x64]
ADD             R0, R6, #1
ADD             R4, R4, #0xEC
UXTH            R6, R0
CMP             R4, R7
BNE             loc_1D59BC
ADD             R8, R5, #0x10C000
ADD             R8, R8, #0xA0
CMP             R7, R8
MOV             R6, #0xB000
MOV             R4, R7
BEQ             loc_1D5A38
MOV             R3, #0x10000
ADD             R2, R5, #0x48 ; 'H'
MOV             R1, R6
MOV             R0, R4
BL              sub_218238
ADD             R0, R6, #1
ADD             R4, R4, #0x40 ; '@'
UXTH            R6, R0
CMP             R4, R8
BNE             loc_1D5A10
LDR             R0, =0x138F24
MOV             R3, #0x10000
ADD             R2, R5, #8
ADD             R0, R0, R5
MOV             R1, #0
STR             R0, [SP,#0x38+var_2C]
BL              sub_218238
ADD             R0, R5, #0x138000
MOV             R3, #0x10000
ADD             R2, R5, #0x48 ; 'H'
MOV             R1, #0
ADD             R0, R0, #0xF60
BL              sub_218238
LDR             R0, =0x138F9C
MOV             R3, #0x10000
ADD             R2, R5, #8
ADD             R0, R0, R5
MOV             R1, #0
STR             R0, [SP,#0x38+var_28]
BL              sub_218238
LDR             R0, =0x138FD8
MOV             R3, #0x10000
ADD             R2, R5, #8
ADD             R0, R0, R5
MOV             R1, #0
MOV             R11, R0
BL              sub_218238
LDR             R6, =0x1064EC
MOV             R4, #0
ORR             R1, R4, #0xE000
ADD             R0, R4, R4,LSL#3
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, R6
BL              sub_4FA7C4
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R4, #0x20 ; ' '
BCC             loc_1D5AAC
LDR             R0, =dword_6E2378
MOV             R6, #0
LDRB            R0, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1D5AE0; jumptable 001D5AE0 default case
DCD loc_1D5AFC; jump table for switch statement
MOV             R6, #1; jumptable 001D5AE0 case 0
B               def_1D5AE0; jumptable 001D5AE0 default case
MOV             R6, #2; jumptable 001D5AE0 case 1
B               def_1D5AE0; jumptable 001D5AE0 default case
MOV             R6, #8; jumptable 001D5AE0 case 4
B               def_1D5AE0; jumptable 001D5AE0 default case
MOV             R6, #4; jumptable 001D5AE0 cases 2,3
LDR             R4, =unk_6542AC; jumptable 001D5AE0 default case
LDR             R0, =sub_10640C
ADD             R8, R4, #0x198
ADD             R7, R5, R0
LDR             R0, [R4,#8]
TST             R0, R6
BEQ             loc_1D5BB8
LDRH            R1, [R4]
MOV             R0, R5
BL              sub_52FACC
MOV             R10, R0
LDR             R0, [R4,#8]
ANDS            R1, R0, #0x100
BEQ             loc_1D5B5C
CMP             R1, #0x100
BEQ             loc_1D5B90
B               loc_1D5BB8
TST             R0, #0x1000
LDR             R1, [R4,#4]
MOVEQ           R2, #0x20000
MOVNE           R2, #0x10000
MOV             R3, #0
MOV             R0, R10
BL              sub_572670
MOV             R0, R7
MOV             R1, R10
BL              sub_1CF9FC
NOP
NOP
B               loc_1D5BB8
STR             R9, [SP,#0x38+var_38]
STR             R9, [SP,#0x38+var_34]
LDR             R1, [R4,#4]
MOV             R3, #0x30000
MOV             R2, #0x20000
MOV             R0, R10
BL              sub_57162C
MOV             R0, R7
MOV             R1, R10
BL              sub_1CF9FC
ADD             R4, R4, #0xC
CMP             R4, R8
BNE             loc_1D5B28
LDR             R6, =dword_6E2378
MOV             R3, #0
LDR             R0, [SP,#0x38+var_30]
MOV             R2, R3
LDR             R1, [R6]
BL              sub_33798C
LDR             R1, [SP,#0x38+var_30]
MOV             R0, R7
BL              sub_1CF9FC
NOP
NOP
BL              sub_48004C
ADD             R4, R5, #0x190000
CMP             R0, #0
ADD             R4, R4, #0xD600
BNE             loc_1D5C1C
LDRB            R0, [R6,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D5C1C
LDRB            R0, [R6,#(byte_6E2384 - 0x6E2378)]
CMP             R0, #0
BNE             loc_1D5CBC
MOV             R1, #0xC000
MOV             R0, R5
BL              sub_52FACC
LDR             R1, =0xC0041
MOV             R8, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
MOV             R1, R8
MOV             R0, R7
BL              sub_1CF9FC
MOV             R0, #0xC000
STRH            R0, [R4,#0x9A]
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1D5CBC
LDRB            R0, [R6,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
LDRBNE          R0, [R6,#(byte_6E2384 - 0x6E2378)]
CMPNE           R0, #1
BNE             loc_1D5CBC
LDRB            R0, [R6,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
CMPNE           R0, #2
CMPNE           R0, #3
BEQ             loc_1D5CBC
LDR             R8, =0xC002
MOV             R0, R5
MOV             R1, R8
BL              sub_52FACC
LDR             R1, =0xC0043
MOV             R9, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
MOV             R1, R9
MOV             R0, R7
BL              sub_1CF9FC
STRH            R8, [R4,#0x9A]
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BEQ             loc_1D5D8C
LDRB            R0, [R6,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
LDRBNE          R0, [R6,#(byte_6E2384 - 0x6E2378)]
CMPNE           R0, #1
BNE             loc_1D5D8C
LDR             R8, =0xC001
MOV             R0, R5
MOV             R1, R8
BL              sub_52FACC
LDR             R1, =0xC0042
MOV             R9, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
MOV             R1, R9
MOV             R0, R7
BL              sub_1CF9FC
STRH            R8, [R4,#0x9A]
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BNE             loc_1D5D44
LDRB            R0, [R6,#(byte_6E2385 - 0x6E2378)]
CMP             R0, #0
BEQ             loc_1D5D44
LDRB            R0, [R6,#(byte_6E2384 - 0x6E2378)]
CMP             R0, #0
BNE             loc_1D5D8C
LDRB            R0, [R6,#(byte_6E238B - 0x6E2378)]
CMP             R0, #1
CMPNE           R0, #2
CMPNE           R0, #3
BEQ             loc_1D5D8C
LDR             R8, =0xC003
MOV             R0, R5
MOV             R1, R8
BL              sub_52FACC
LDR             R1, =0xC0044
MOV             R9, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
MOV             R1, R9
MOV             R0, R7
BL              sub_1CF9FC
STRH            R8, [R4,#0x9A]
LDR             R1, =unk_654212
MOV             R0, R5
MOV             R2, #0x21 ; '!'
BL              sub_529204
NOP
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1D5DC4
LDR             R1, =unk_653FC4
MOV             R0, R5
MOV             R2, #2
BL              sub_529204
MOV             R0, #0
BL              sub_1CC9C4
MOV             R4, R0
MOV             R0, #0
BL              sub_1CC964
MOV             R1, R0
MOV             R2, R4
MOV             R0, R5
BL              sub_529204
MOV             R3, #0
LDR             R1, =0x60019
MOV             R2, R3
MOV             R0, R11
BL              sub_33798C
MOV             R1, R11
MOV             R0, R7
BL              sub_1CF9FC
MOV             R3, #0
LDR             R1, =0x60018
LDR             R0, [SP,#0x38+var_28]
MOV             R2, R3
BL              sub_33798C
LDR             R1, [SP,#0x38+var_28]
MOV             R0, R7
BL              sub_1CF9FC
MOV             R3, #0
LDR             R1, =0x60002
LDR             R0, [SP,#0x38+var_2C]
MOV             R2, R3
BL              sub_33798C
LDR             R1, [SP,#0x38+var_2C]
MOV             R0, R7
BL              sub_1CF9FC
LDR             R0, =0xFFE683CC
LDR             R1, =0x2000014
MOV             R3, #0
SUB             R0, R5, R0
MOV             R2, #2
MOV             R4, R0
BL              sub_503688
NOP
NOP
BL              sub_47FFCC
CMP             R0, #0
LDRNE           R1, =0x2000015
LDREQ           R1, =0x2000016
MOV             R3, #0
MOV             R2, #2
MOV             R0, R4
BL              sub_503688
LDR             R0, =dword_6CF970
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_1D5EA8
LDR             R1, [R6,#(dword_6E2380 - 0x6E2378)]
MOV             R0, R4
BL              sub_5035A0
LDR             R1, =unk_653FC0
ADD             R2, R5, #0x1A0000
LDRD            R0, R1, [R1,#(off_654004 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
