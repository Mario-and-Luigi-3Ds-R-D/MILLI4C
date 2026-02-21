PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R1, #0xA000
LDR             R6, =off_6CE970
LDR             R0, [R6]
BL              sub_52FACC
LDR             R2, [R4,#8]
LDR             R7, =0xC004E
MOV             R5, R0
MOV             R3, #0
LDRB            R2, [R2,#0x495]
SUB             R0, R7, #1
MOV             R1, R7
CMP             R2, #0
MOVEQ           R1, R0
MOV             R2, #0x20000
MOV             R0, R5
BL              sub_572670
LDR             R8, =sub_10640C
LDR             R0, [R6]
MOV             R1, R5
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R1, =unk_63FED0
LDR             R0, [R6]
MOV             R2, #7
BL              sub_529204
LDR             R5, [R6]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_154750
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_154750
LDR             R1, =0xA002
LDR             R0, [R6]
BL              sub_52FACC
LDR             R1, =0xC0042
MOV             R5, R0
MOV             R3, #0
MOV             R2, #0x20000
BL              sub_572670
LDR             R0, [R6]
MOV             R1, R5
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R1, =0xA001
LDR             R0, [R6]
BL              sub_52FACC
MOV             R5, R0
MOV             R3, #0
MOV             R2, #0x20000
MOV             R1, R7
BL              sub_572670
LDR             R0, [R6]
MOV             R1, R5
ADD             R0, R0, R8; sub_10640C
BL              sub_1CF9FC
LDR             R1, =unk_63FEDE
LDR             R0, [R6]
MOV             R2, #6
BL              sub_529204
LDR             R0, [R6]
BL              sub_52FC34
LDR             R0, [R0,#0x18]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
ADD             R1, R4, #0x20 ; ' '
BLX             R3
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE10 - 0x63FDB0)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R8,PC}
