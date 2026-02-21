PUSH            {R4-R7,LR}
SUB             SP, SP, #0xC
MOV             R7, R0
LDR             R0, =off_6CED78; "iPos" ...
MOV             R4, R1
MOV             R5, R2
MOV             R6, R3
LDR             R0, [R0,#(dword_6CEDA4 - 0x6CED78)]
TST             R0, #1
BNE             loc_111B8C
LDR             R0, =dword_6CEDA4
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_111B8C
LDR             R0, =unk_6E9B20
LDR             R1, =sub_10DCA0
MOV             R3, #0xC
MOV             R2, #0x70 ; 'p'
BLX             sub_1002F4
LDR             R1, =sub_10DC94
MOV             R3, #0xC
MOV             R2, #0x14
ADD             R0, R0, #0x540
BLX             sub_1002F4
SUB             R0, R0, #0x6A0
BL              sub_1185E0
LDR             R0, =dword_6CEDA4
NOP
LDR             R0, =unk_6E99C0
STRD            R4, R5, [SP,#0x20+var_20]
MOV             R2, SP
MOV             R1, R7
STRB            R6, [SP,#0x20+var_18]
BL              sub_11E710
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
