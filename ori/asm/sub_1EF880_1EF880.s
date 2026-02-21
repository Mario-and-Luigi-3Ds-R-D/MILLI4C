PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R1, [R0,#0x15C]
LDR             R0, [R0,#0x68]
SUB             SP, SP, #0xC
ADD             R3, SP, #0x18+var_14
UXTH            R5, R1
LDR             R1, [R4,#0x160]
ADD             R2, R4, #0x154
STR             R5, [SP,#0x18+var_18]
STM             R3, {R0,R2}
MOV             R2, #0
LDR             R0, [R4]
LDR             R3, [R4,#0x154]
LDR             R12, [R0,#0x74]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
CMP             R5, R0
BGT             loc_1EF904
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E2E4 - 0x67E18C)]; sub_1EF910
LDR             R0, [R0,#(dword_67E2E8 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EF8F8
LDR             R2, [R0]
LDR             R1, [R2,R1]
ADD             SP, SP, #0xC
POP             {R4,R5,LR}
BX              R1
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
