PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R3, #0x10000
LDR             R6, =off_6CE970
MOV             R2, #0
LDR             R0, [R6]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x24 ; '$'
BL              sub_10A358
MOVS            R4, R0
BEQ             loc_145090
MOV             R0, #1
STRB            R0, [R4,#4]
LDR             R0, =off_6ACE7C
MOV             R1, #0
LDR             R7, =unk_63E868
STRB            R1, [R4,#5]
STRH            R1, [R4,#6]
STR             R0, [R4]
ADD             R0, R7, #0xB0
STR             R5, [R4,#8]
LDM             R0, {R0,R2}
ADD             R3, R4, #0xC
STR             R1, [R4,#0x14]
STM             R3, {R0,R2}
STRB            R1, [R4,#0x18]
STR             R1, [R4,#0x20]
LDR             R1, =off_6B2A84
STR             R1, [R4,#0x1C]
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
ADD             R1, R7, #0xB8
MOV             R3, #0
ADD             R0, R0, #0x400
MOV             R2, #0x10000
LDRSB           R0, [R0,#0x95]
LDR             R1, [R1,R0,LSL#2]
MOV             R0, R5
BL              sub_572670
LDR             R0, =sub_10640C
LDR             R2, [R6]
MOV             R1, R5
ADD             R0, R0, R2; sub_10640C
BL              sub_1CF9FC
LDRD            R0, R1, [R7,#(off_63E8B8 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
MOV             R0, R4
POP             {R4-R8,PC}
