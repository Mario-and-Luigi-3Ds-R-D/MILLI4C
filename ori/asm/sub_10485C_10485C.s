LDR             R0, =dword_6D256C
LDR             R0, [R0]
CMP             R0, #0
BXNE            LR
PUSH            {R3-R5,LR}
BL              sub_119B9C
LDR             R1, =0x8A067F9
CMP             R0, R1
BEQ             loc_10488C
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, =aFsUser; "fs:USER"
BL              sub_300168
MOV             R2, R0
LDR             R1, =aFsUser; "fs:USER"
LDR             R0, =dword_6D256C
MOV             R3, #0
BL              sub_119C04
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, =unk_6D2568
LDR             R0, [R0,#(dword_6D256C - 0x6D2568)]
BL              sub_1071A4
LDR             R0, =unk_6D2568
ADD             R1, R0, #8
STR             R0, [R1]
MOV             R0, R1
BL              sub_107200
MOV             R4, #0
NOP
BL              sub_120CA4
STR             R0, [SP,#0x10+var_10]
MOV             R1, R4
MOV             R0, SP
BL              sub_1071D0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BEQ             locret_104904
POP             {R3-R5,LR}
B               sub_10E1F8
POP             {R3-R5,PC}
