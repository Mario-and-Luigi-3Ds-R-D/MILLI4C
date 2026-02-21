PUSH            {R4-R12,LR}
MOV             R6, R0
SUBS            R7, R1, #0
MOV             R4, #0
VPUSH           {D8}
BLS             loc_151124
LDR             R10, =off_6CE970
LDR             R8, =off_6B6610
LDR             R11, =off_6B2A84
VLDR            S16, =0.0
VLDR            S17, =24.0
MOV             R9, #0
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x80C
BL              sub_10A358
CMP             R0, #0
MOVEQ           R5, #0
BEQ             loc_1510F8
BL              sub_14F198
LDR             R3, =unk_63FC24
STR             R8, [R0]
ADD             R5, R0, #0x3F4
MOV             R1, #0xFE
LDRD            R2, R3, [R3,#(dword_63FD00 - 0x63FC24)]
STM             R5, {R2,R3}
STRB            R9, [R0,#0x3FC]
STRB            R1, [R0,#0x3FD]
STR             R11, [R0,#0x400]!
STR             R9, [R0,#4]!
ADD             R0, R0, #4
BL              sub_14F198
SUB             R5, R0, #0x400
SUB             R5, R5, #8
BL              sub_4635D8
LDM             R0, {R0-R2}
ADD             R12, R5, #0x400
ADD             R12, R12, #0x3FC
ADD             R3, R5, #0x800
STM             R12, {R0-R2}
MOV             R1, #1
VSTR            S16, [R3,#8]
MOV             R0, R5
BL              sub_14C450
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDR             R1, =0xA001
LDR             R0, [R10]
BL              sub_52FACC
MOV             R1, R0
LDR             R0, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
STRB            R9, [R5,#0xF2]
ADD             R1, R5, #0x50 ; 'P'
STRB            R9, [R5,#0xF6]
VSTM            R1, {S16-S17}
ADD             R1, R6, R4,LSL#2
MOV             R0, R5
STR             R5, [R1,#0x160]
LDRSB           R3, [R6,#0x14]
MOV             R2, R7
MOV             R1, R4
BL              sub_311DF4
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, R7
BCC             loc_151030
MOV             R0, #1
STRB            R0, [R6,#0x19]
VPOP            {D8}
POP             {R4-R12,PC}
