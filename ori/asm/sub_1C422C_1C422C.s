PUSH            {R4-R8,LR}
MOV             R1, #1
MOV             R4, R0
LDR             R6, =off_6CE970
STRB            R1, [R0,#0x24]
LDR             R1, =unk_63EDBC
MOV             R2, #5
LDR             R0, [R6]
BL              sub_529204
LDR             R0, [R4,#0x10]
LDR             R1, =0xC00A6
ADD             R5, R4, #0x28000
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
ADD             R4, R4, #0xC
LDR             R1, =0xC00A0
LDR             R0, [R4,#0x10]
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R7, =sub_10640C
LDR             R0, [R6]
SUB             R1, R5, #0x28000
LDR             R1, [R1,#0x10]
ADD             R0, R0, R7; sub_10640C
BL              sub_1CF9FC
LDR             R0, [R6]
LDR             R1, [R4,#0x10]
ADD             R0, R0, R7; sub_10640C
POP             {R4-R8,LR}
B               sub_1CF9FC
