PUSH            {R4-R6,LR}
SUB             SP, SP, #0x218
MOV             R5, R0
BL              sub_1D44A4
LDR             R0, =0x19DFE8
LDR             R0, [R5,R0]
BL              sub_1CC8A8
ADD             R4, R5, #0x1A0000
ADD             R4, R4, #0x64 ; 'd'
MOV             R0, #0
LDR             R1, [R4]
STR             R0, [R1]
LDR             R1, [R4]
STR             R0, [R1,#4]
MOV             R0, R5
BL              sub_528E64
ADD             R0, R0, #0x400
LDRH            R6, [R0,#0x9C]
MOV             R0, R6
BL              sub_50F020
LDR             R2, =aRomBattleAtkke; "rom:/Battle/AtkKeyLog/%4X.dat"
LDR             R1, =0x105
MOV             R3, R6
ADD             R0, SP, #0x228+var_220
BL              sub_10F1F4
LDR             R0, =off_6CE970
LDR             R3, =0x80007F
LDR             R1, [R4]; int
LDR             R0, [R0]
ADD             R2, R0, #0x48 ; 'H'
STRD            R2, R3, [SP,#0x228+var_228]; float
MOV             R3, #0; int
ADD             R2, SP, #0x228+var_220; int
ADD             R0, R0, #0x1E0; int
BL              sub_4E2084
ADD             R0, R5, #0x1A0000
LDR             R3, =sub_1D3298
LDR             R2, [R0,#0x5C]
LDR             R1, =unk_653FC0
CMP             R2, R3
LDREQ           R3, [R0,#0x60]
CMPEQ           R3, #0
BEQ             loc_1D258C
LDR             R3, =sub_1D499C
CMP             R2, R3
LDREQ           R2, [R0,#0x60]
CMPEQ           R2, #0
BEQ             loc_1D258C
LDRD            R2, R3, [R1,#(off_65408C - 0x653FC0)]
STRD            R2, R3, [R0,#0x5C]
LDR             R0, [R4]
LDR             R2, [R1,#(dword_654098 - 0x653FC0)]
LDR             R1, [R1,#(off_654094 - 0x653FC0)]; sub_1D4840
STR             R1, [R0,#8]
STR             R2, [R0,#0xC]
ADD             SP, SP, #0x218
POP             {R4-R6,PC}
LDR             R2, [R1,#(dword_654098 - 0x653FC0)]
LDR             R1, [R1,#(off_654094 - 0x653FC0)]; sub_1D4840
STR             R1, [R0,#0x5C]
STR             R2, [R0,#0x60]
ADD             SP, SP, #0x218
POP             {R4-R6,PC}
