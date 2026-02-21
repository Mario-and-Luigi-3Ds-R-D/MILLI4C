PUSH            {R4,R5,LR}
SUB             SP, SP, #0x34
MOV             R4, R0
ADD             R0, SP, #0x40+var_30
BL              sub_129DD4
LDR             R5, =byte_6D2498
MOV             R0, R4
LDRD            R2, R3, [R5,#(dword_6D2528 - 0x6D2498)]
BL              sub_129E38
LDR             R0, =unk_7008E0
LDR             R1, [SP,#0x40+var_28]
ADD             R3, SP, #0x40+var_30
STR             R1, [R0,#(dword_7008F0 - 0x7008E0)]
LDR             R1, [SP,#0x40+var_18]
STR             R1, [R0,#(dword_7008FC - 0x7008E0)]
LDM             R3, {R1,R2}
CMP             R1, R2
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#(byte_7008E4 - 0x7008E0)]
LDR             R0, =unk_7008E0
BL              sub_12A184
ADD             R5, R5, #0x90
ADD             LR, SP, #0x40+var_38
LDM             R5, {R3,R12}
MOV             R0, R4
LDR             R2, =unk_7008E0
MOV             R1, #0x10
STM             LR, {R3,R12}
LDR             R3, =dword_6D2450
LDR             R3, [R3]
STR             R3, [SP,#0x40+var_40]
MOV             R3, #0x20 ; ' '
BL              sub_12364C
MOV             R1, #0
MOV             R0, R4
BL              sub_129FD0
LDR             R0, =unk_7008E0
MOV             R1, #0x20 ; ' '
BL              sub_12A2CC
ADD             SP, SP, #0x34 ; '4'
MOV             R0, #0
POP             {R4,R5,PC}
