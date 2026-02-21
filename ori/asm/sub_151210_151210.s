PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x10
LDR             R6, =off_6CE970
MOV             R1, #0xA000
LDR             R0, [R6]
BL              sub_52FACC
LDR             R2, [R4,#8]
LDR             R7, =0xC0050
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
LDR             R1, =unk_63FC28
LDR             R0, [R6]
MOV             R2, #2
BL              sub_529204
LDR             R1, =unk_63FC2C
LDR             R0, [R6]
MOV             R2, #2
BL              sub_529204
LDR             R5, [R6]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_1512B4
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R6]
BEQ             loc_1512D0
LDR             R1, =unk_63FD08
LDR             R0, [R6]
MOV             R2, #8
BL              sub_529204
NOP
NOP
B               loc_151334
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_151334
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_151334
LDR             R1, =aDijklompnqv; "dijklompnqv"
LDR             R0, [R6]
MOV             R2, #0xB
BL              sub_529204
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
MOV             R0, #0
STR             R0, [SP,#0x28+var_20]
STR             R0, [SP,#0x28+var_1C]
LDR             R1, [R4,#8]
LDR             R0, [R6]
ADD             R3, SP, #0x28+var_20
MOV             R2, #1
STRD            R2, R3, [SP,#0x28+var_28]
LDRB            R1, [R1,#0x495]
MOV             R3, #0xB
MOV             R2, #2
BL              sub_5EEA48
CMP             R0, #0
NOP
BEQ             loc_151384
LDR             R2, =dword_6D1F40
LDR             R0, [SP,#0x28+var_20]
MOV             R1, #0x64 ; 'd'
BL              sub_480134
STRB            R0, [R4,#0x17]
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FC78 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
