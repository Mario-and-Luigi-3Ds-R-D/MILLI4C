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
LDR             R12, [R0,#0x80]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
CMP             R5, R0
BGT             loc_1EFB5C
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E314 - 0x67E18C)]; sub_1EFB68
LDR             R0, [R0,#(dword_67E318 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EFB50
LDR             R2, [R0]
LDR             R1, [R2,R1]
ADD             SP, SP, #0xC
POP             {R4,R5,LR}
BX              R1
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
