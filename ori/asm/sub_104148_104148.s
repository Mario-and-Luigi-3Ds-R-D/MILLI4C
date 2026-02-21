PUSH            {R4,LR}
MOV             R4, R0
BL              sub_108408
CMP             R0, #0
BNE             loc_104190
LDR             R1, =unk_6D2448
MOV             R0, #1
BIC             R4, R4, #7
STRB            R0, [R1,#(byte_6D244B - 0x6D2448)]
LDR             R0, =dword_7008D0
MOV             R1, #0x100
BL              sub_1080F8
MOV             R2, #0xF
MOV             R1, R4
MOV             R0, #0x300
BL              sub_108578
ANDS            R1, R0, #0x80000000
BMI             locret_104194
MOV             R0, #0
POP             {R4,PC}
