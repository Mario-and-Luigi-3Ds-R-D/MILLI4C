PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC0]
SUB             SP, SP, #0x1C
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             loc_1ECAF0
LDR             R0, =unk_6E8CD0
LDRB            R0, [R0,#(byte_6E8E74 - 0x6E8CD0)]
TST             R0, #4
BNE             loc_1EC9BC
LDR             R0, [R4,#0xC8]
TST             R0, #8
TSTEQ           R0, #0x40
BEQ             loc_1EC9CC
LDR             R0, [R4,#0xC0]
LDR             R1, [R0,#0x94]
ADD             R0, R0, #0x14400
STR             R1, [R0,#0x20]
LDR             R5, [R4,#0xA0]
MOV             R0, SP
MOV             R1, R5
BL              loc_106CBC
ADD             R1, R5, #0x8C
MOV             R0, SP
BL              loc_106CBC
LDRB            R0, [R5,#0x84]
LDR             R1, =dword_6E9820
MOV             R2, #0x20000
STRB            R0, [R5,#0x119]
LDRB            R0, [R5,#0x110]
STRB            R0, [R5,#0x118]
MOV             R0, SP
BL              sub_106C88
LDR             R1, =dword_6E9820
MOV             R2, #0x30000
MOV             R0, SP
BL              sub_106C88
LDR             R5, =word_6EBB64
LDR             R0, [R5,#(dword_6EBB68 - 0x6EBB64)]
TST             R0, #1
BEQ             loc_1ECABC
LDR             R0, [R4,#0xC4]
MOV             R3, #0xFFFFFFFF
MOV             R12, #0
LDR             R1, [R0,#4]
LDR             R0, [R1,#0x14]
ORR             R0, R0, #0x10000
STR             R0, [R1,#0x14]
LDR             R2, [R4,#0xC4]
ORR             R1, R0, #0x4000
LDR             R0, [R2,#4]
MOV             R2, #1
STR             R1, [R0,#0x14]
LDR             R0, [R4,#0xC4]
ORR             R1, R1, #0x8000
LDR             R0, [R0,#4]
STR             R1, [R0,#0x14]
STRD            R2, R3, [SP,#0x28+var_18]
STR             R12, [SP,#0x28+var_1C]
STR             R2, [SP,#0x28+var_10]
LDR             R1, [R5,#(dword_6EBB68 - 0x6EBB64)]
LDR             R2, [R5,#(dword_6EBB74 - 0x6EBB64)]
LDRSH           R0, [R5,#(word_6EBB6E - 0x6EBB64)]
AND             R1, R1, #4
ADD             R3, SP, #0x28+var_24
MOV             R1, R1,LSR#2
STR             R1, [SP,#0x28+var_28]
STM             R3, {R0,R2}
LDR             R0, [R4,#0xBC]
LDRB            R3, [R5,#(byte_6EBB70 - 0x6EBB64)]
LDRSH           R1, [R5,#(word_6EBB6C - 0x6EBB64)]
LDR             R2, [R0]
LDR             R12, [R2,#0x288]
ADD             R2, R5, #0x14
BLX             R12
LDR             R0, [R5,#(dword_6EBB68 - 0x6EBB64)]
BIC             R0, R0, #1
STR             R0, [R5,#(dword_6EBB68 - 0x6EBB64)]
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R1, [R1,#0x40]
BLX             R1
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E36C
LDM             R0, {R1,R2}
ADD             SP, SP, #0x1C
MOV             R0, R4
POP             {R4,R5,LR}
BX              R12
LDR             R0, [R4,#0x9C]
BL              sub_32156C
LDR             R0, [R4,#0xA0]
NOP
BL              sub_221A40
LDR             R0, [R4,#0xA0]
ADD             SP, SP, #0x1C
POP             {R4,R5,LR}
B               sub_2D4074
