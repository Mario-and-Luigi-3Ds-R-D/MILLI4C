PUSH            {R4-R8,LR}
MOV             R4, R0
BL              sub_48004C
LDR             R6, =off_6CE970
LDR             R7, =sub_10640C
CMP             R0, #0
BEQ             loc_150124
LDR             R0, [R4,#8]
LDRH            R1, [R0,#0x10]
SUB             R2, R1, #0x1000
SUBS            R2, R2, #1
BNE             loc_150124
MOV             R2, #1
BL              sub_4F1EF0
LDR             R2, [R6]
LDR             R1, [R4,#8]
ADD             R0, R7, #0x50 ; 'P'
ADD             R0, R0, R2; loc_10645C
ADD             R1, R1, #0x1AC
BL              sub_1CF9FC
LDR             R2, [R6]
ADD             R0, R7, #0x70 ; 'p'
LDR             R1, [R4,#8]
ADD             R0, R0, R2; loc_10647C
BL              sub_58E500
LDR             R1, =dword_6E197C
LDR             R0, [R4,#8]
LDR             R2, [R1,#(dword_6E1998 - 0x6E197C)]
ADD             R3, R0, #0x1C
STR             R2, [R0,#0x1C]
LDR             R0, [R1,#(dword_6E199C - 0x6E197C)]
STR             R0, [R3,#4]
LDR             R0, [R1,#(dword_6E19A0 - 0x6E197C)]
STR             R0, [R3,#8]
LDRB            R0, [R4,#0x20]
CMP             R0, #0
BEQ             loc_150124
LDR             R1, =0xC004
LDR             R0, [R6]
BL              sub_52FACC
LDR             R1, =0xC0042
MOV             R5, R0
MOV             R3, #0
MOV             R2, #0x10000
BL              sub_572670
LDR             R0, [R6]
MOV             R1, R5
ADD             R0, R0, R7; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#8]
STR             R5, [R0,#0x1BC]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRSB           R0, [R0,#0x95]
ADD             R0, R0, #0xC000
ADD             R0, R0, #4
UXTH            R1, R0
LDR             R0, [R6]
BL              sub_52FACC
MOV             R5, R0
LDR             R0, [R4,#8]
LDR             R1, =unk_63E910
MOV             R3, #0
ADD             R0, R0, #0x400
MOV             R2, #0x10000
LDRSB           R0, [R0,#0x95]
LDR             R1, [R1,R0,LSL#2]
MOV             R0, R5
BL              sub_572670
LDR             R0, [R6]
MOV             R1, R5
ADD             R0, R0, R7; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R4,#8]
MOV             R1, #0
LDR             R0, [R0,#0x18]
STRB            R1, [R0,#0xF2]
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E870 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R8,PC}
