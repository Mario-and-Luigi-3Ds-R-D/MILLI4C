PUSH            {R4-R8,LR}
MOV             R4, #0xA000
SUB             SP, SP, #0x138; float
LDR             R7, =off_6CE970
MOV             R5, R0
ADD             R8, R4, #0xE
UXTH            R0, R4
UXTH            R1, R4
ADD             R6, R5, R0,LSL#2
SUB             R6, R6, #0x27000
LDR             R0, [R7]
SUB             R6, R6, #0xFF0
BL              sub_52FACC
ADD             R4, R4, #1
CMP             R4, R8
STR             R0, [R6]
BCC             loc_2805CC
LDR             R0, [R5,#0x14]
LDR             R1, =0xC00A1
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x10]
LDR             R1, =0xC00A2
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x18]
LDR             R1, =0xC112E
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x1C]
LDR             R1, =0xC0009
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x20]
LDR             R1, =0xC0042
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x24]
LDR             R1, =0xC2026
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R5,#0x28]
LDR             R1, =0xC00A0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x2C]
LDR             R1, =0xC2071
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x30]
LDR             R1, =0xC20EB
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x34]
LDR             R1, =0xC0007
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x38]
LDR             R1, =0xC000A
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x3C]
LDR             R1, =0xC001A
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x40]
LDR             R1, =0xC004D
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R5,#0x44]
LDR             R1, =0xC20FA
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R8, =sub_10640C
ADD             R4, R5, #0x10
MOV             R6, #0
LDR             R0, [R7]
LDR             R1, [R4]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
ADD             R6, R6, #1
CMP             R6, #0xE
ADD             R4, R4, #4
BCC             loc_28071C
LDR             R0, =unk_63EF1C
ADD             R1, R0, #0x18
VLDM            R1, {S0-S7}
ADD             R1, SP, #0x150+var_48
VSTM            R1, {S0-S7}
LDR             R1, [R0,#(dword_63EF5C - 0x63EF1C)]
LDRD            R2, R3, [R0,#(dword_63EF54 - 0x63EF1C)]
LDR             R0, [R0,#(dword_63EF60 - 0x63EF1C)]
STR             R1, [SP,#0x150+var_20]
ADD             R1, SP, #0x150+var_48
STR             R0, [SP,#0x150+var_1C]
ADD             R0, SP, #0x150+var_28
STM             R0, {R2,R3}
MOV             R2, #0x17
LDR             R0, [R7]
BL              sub_529204
LDR             R0, [R7]
MOV             R6, #0
ADD             R4, R0, #0x68 ; 'h'
ADD             R0, R5, #0x48 ; 'H'
BL              sub_5BD96C
STR             R4, [R5,#0x148]
ADD             R4, R5, #0x48 ; 'H'
MOV             R2, #0
ADR             R1, aMinigameMsbt_1; "MiniGame.msbt"
ADD             R0, SP, #0x150+var_148
BL              sub_10D1D0
LDR             R0, [R4,#0x100]
MOV             R3, #0; int
ADD             R2, SP, #0x150+var_148; int
STMEA           SP, {R0,R6}
LDR             R0, [R7]
ADD             R1, R4, #0x118; int
ADD             R0, R0, #0x1E0; int
BL              sub_4E2084
LDR             R0, [R4,#0x108]
CMP             R0, #0
BEQ             loc_280828
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_2807F0
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_280808
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_280828
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_280828
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
BEQ             loc_280888
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_280850
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_280868
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_280888
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_280888
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
BEQ             loc_2808E8
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_2808B0
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_2808C8
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_2808E8
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_2808E8
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
BEQ             loc_2809F8
LDRB            R1, [R0,#0x13]
CMP             R1, #0
BEQ             loc_280910
LDRB            R1, [R0,#0x12]
CMP             R1, #0
CMPNE           R1, #0xFF
BEQ             loc_280928
LDR             R1, [R0,#0x18]
CMP             R1, #0
BEQ             loc_2809F8
LDRB            R1, [R0,#0x12]
CMP             R1, #0
BNE             loc_2809F8
LDR             R1, =dword_6E2378
LDRB            R2, [R1,#(byte_6E2386 - 0x6E2378)]
LDRB            R1, [R1,#(byte_6E238C - 0x6E2378)]
CMP             R2, #0
BEQ             loc_280970
CMP             R1, #0
LDREQ           R1, =0xA101F
BEQ             loc_2809DC
CMP             R1, #1
LDREQ           R1, =0xA1020
BEQ             loc_2809DC
CMP             R1, #3
LDREQ           R1, =0xA1021
BEQ             loc_2809DC
CMP             R1, #4
LDREQ           R1, =0xA1022
BEQ             loc_2809DC
B               def_280974; jumptable 00280974 default case, cases 0,7
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_280974; jumptable 00280974 default case, cases 0,7
DCD def_280974; jump table for switch statement
LDR             R1, =0xA1018; jumptable 00280974 case 1
B               loc_2809DC
LDR             R1, =0xA1019; jumptable 00280974 case 2
B               loc_2809DC
LDR             R1, =0xA101A; jumptable 00280974 case 3
B               loc_2809DC
LDR             R1, =0xA101B; jumptable 00280974 case 4
B               loc_2809DC
LDR             R1, =0xA101C; jumptable 00280974 case 5
B               loc_2809DC
LDR             R1, =0xA101D; jumptable 00280974 case 6
B               loc_2809DC
LDR             R1, =0xA101E; jumptable 00280974 case 8
B               loc_2809DC
MOV             R1, #0; jumptable 00280974 default case, cases 0,7
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R7]
LDR             R1, [R4,#0x104]
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R4, [R7]
MOV             R1, #0x51 ; 'Q'
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x12F
MOV             R0, R4
BL              sub_52F770
LDR             R1, =0x12E
MOV             R0, R4
BL              sub_52F770
LDR             R0, [R7]
MOV             R1, #0x130
BL              sub_52F770
ADD             SP, SP, #0x138
POP             {R4-R8,PC}
