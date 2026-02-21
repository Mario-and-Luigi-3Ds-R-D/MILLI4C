PUSH            {R4,R5}
LDR             R5, =dword_65B104
LDRH            R12, [R3]
LDR             R4, =unk_6D03A8
LDR             R5, [R5]
SUB             R12, R12, R5
ADD             R12, R4, R12,LSL#3
LDM             R12, {R4,R12}
CMP             R4, #0
BNE             loc_182A00
TST             R12, #1
BEQ             loc_182A20
CMP             R12, #0
BEQ             loc_182A20
TST             R12, #1
ADD             R0, R0, R12,ASR#1
BEQ             loc_182A14
LDR             R12, [R0]
LDR             R4, [R12,R4]
MOV             R12, R4
POP             {R4,R5}
BX              R12
LDR             R12, [R0]
LDR             R12, [R12,#0x88]
POP             {R4,R5}
BX              R12
