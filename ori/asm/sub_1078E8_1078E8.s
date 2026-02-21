LDR             R0, =0x1FF80000
LDRB            R0, [R0,#0x14]
TST             R0, #1
MOVNE           R0, #0
BXNE            LR
PUSH            {LR}
SUB             SP, SP, #0xC
ADD             R0, SP, #0x10+var_C
BL              sub_10E0F4
ANDS            R1, R0, #0x80000000
BPL             loc_107920
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
MOV             R0, SP
MOV             R2, #0x130000
MOV             R1, #4
BL              sub_1191B8
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDRB            R0, [SP,#0x10+var_C]
NOP
BL              sub_10E05C
LDRB            R0, [SP,#0x10+var_E]
ADD             SP, SP, #0xC
POP             {PC}
