PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, =dword_6D1F68
LDR             R0, [R0,#(dword_6D1F70 - 0x6D1F68)]
TST             R0, #1
BNE             loc_104F6C
LDR             R0, =dword_6D1F70
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_104F6C
BL              sub_107B48
MOV             R1, R0
LDR             R0, =unk_6EDA20
BL              sub_107DD0
LDR             R2, =sub_100000
LDR             R1, =sub_107E58
NOP
LDR             R0, =dword_6D1F70
NOP
LDR             R5, =unk_6EDA20
MOV             R1, R4
MOV             R0, R5
BL              sub_107C90
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0x10+var_10]
MOV             R3, R4
MOV             R2, #1
ADD             R1, R4, #8
MOV             R0, R5
BL              sub_107D54
POP             {R3-R5,PC}
