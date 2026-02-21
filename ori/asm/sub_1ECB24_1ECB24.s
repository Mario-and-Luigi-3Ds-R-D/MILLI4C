PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xBC]
SUB             SP, SP, #8
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1ECDEC
LDR             R0, [R4,#0xC4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
ADD             R0, R0, #0xC
LDM             R0, {R5,R6}
AND             R1, R1, #0x4000
MOV             R1, R1,LSR#14
LDR             R0, [R5]
LDR             R2, [R0,#0x84]
MOV             R0, R5
BLX             R2
LDR             R0, [R4,#0xC4]
MOV             R3, #1
MOV             R2, #0xFFFFFFFF
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x14]
TST             R0, #0x10000
LDR             R0, [R5]
MOVNE           R1, #4
LDR             R12, [R0,#0x34C]
MOVNE           R0, R5
BNE             loc_1ECBE4
MOV             R1, #5
MOV             R0, R5
BLX             R12
LDR             R0, [R6]
MOV             R3, #1
MOV             R2, #0xFFFFFFFF
MOV             R1, #6
LDR             R12, [R0,#0x34C]
MOV             R0, R6
BLX             R12
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x100]
BLX             R1
LDR             R2, [R6]
MOV             R1, R0
MOV             R0, R6
LDR             R2, [R2,#0x84]
BLX             R2
LDR             R0, =off_6CED48
MOV             R2, #0x20000
LDR             R0, [R0]
LDRB            R1, [R0,#0x98]
STRB            R1, [R4,#0x176]
LDRB            R0, [R0,#0x124]
LDR             R1, =dword_6E9820
STRB            R0, [R4,#0x177]
MOV             R0, SP
BL              sub_106C88
LDR             R1, =dword_6E9820
MOV             R2, #0x30000
MOV             R0, SP
BL              sub_106C88
LDR             R0, [R4,#0xC8]
LDR             R5, =off_67E18C
TST             R0, #7
BEQ             loc_1ECC60
TST             R0, #4
BEQ             loc_1ECD4C
LDRB            R0, [R4,#0xB8]
TST             R0, #1
BEQ             loc_1ECCB4
MOV             R1, #4
AND             R2, R1, R0,LSR#1
ADD             R3, R2, R4
LDRB            R1, [R4,#0xBA]
LDR             R3, [R3,#0xBC]
LDRB            R2, [R4,#0xBB]
MOV             R0, R0,LSL#27
ADD             R3, R3, #0x13C00
ADD             R3, R3, #0x24 ; '$'
LDR             R12, [R3]
STMEA           SP, {R1,R2}
LDRB            R1, [R4,#0xB8]
MOV             R2, R0,LSR#31
LDRB            R3, [R4,#0xB9]
MOV             R0, R12
MOV             R1, R1,LSL#29
MOV             R1, R1,ASR#30
BL              sub_1849C0
LDR             R0, [R4,#0xC8]
LDR             R1, =unk_6E8CD0
BIC             R0, R0, #0xF
STR             R0, [R4,#0xC8]
LDRB            R0, [R1,#(byte_6E8E74 - 0x6E8CD0)]
BIC             R0, R0, #4
STRB            R0, [R1,#(byte_6E8E74 - 0x6E8CD0)]
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x44]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x44]
BLX             R1
LDR             R0, [R4,#0x44]
ADR             R1, sub_1ECB24
CMP             R0, R1
LDREQ           R0, [R4,#0x48]
CMPEQ           R0, #0
BNE             loc_1ECE10
LDR             R0, [R4]
ADD             R5, R5, #0x1F0
MOV             R3, #0
LDM             R5, {R1,R2}
LDR             R12, [R0,#0x28]
ADD             SP, SP, #8
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
TST             R0, #2
BNE             loc_1ECD84
MOV             R0, #0x100000
MOV             R3, R0
MOV             R2, R0
STR             R0, [SP,#0x18+var_18]
MOV             R1, #0x800000
MOV             R0, #0
BL              sub_321378
MOV             R3, #0
LDR             R0, [R4,#0x9C]
LDR             R1, [R4,#0x148]
MOV             R2, R3
BL              sub_3215BC
LDR             R0, =0x422C
LDRH            R0, [R0,R4]
BL              sub_2AF718
LDR             R0, [R0]
TST             R0, #1
LDR             R0, [R4,#0x9C]
LDREQ           R1, =0x200000B
LDRNE           R1, =0x200000C
BL              sub_3214D0
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x1D0]
BLX             R1
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x1D0]
BLX             R1
LDR             R0, [R4]
ADD             R5, R5, #0x1E8
MOV             R3, #0
LDM             R5, {R1,R2}
LDR             R12, [R0,#0x28]
ADD             SP, SP, #8
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
LDR             R0, [R4,#0x9C]
BL              sub_32156C
LDR             R0, [R4,#0xA0]
NOP
BL              sub_221A40
LDR             R0, [R4,#0xA0]
ADD             SP, SP, #8
POP             {R4-R6,LR}
B               sub_2D4074
ADD             SP, SP, #8
POP             {R4-R6,PC}
