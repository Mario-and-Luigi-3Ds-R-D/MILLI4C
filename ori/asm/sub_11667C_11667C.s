PUSH            {R4-R8,LR}
MOV             R7, R0
LDR             R4, =dword_700750
ADD             R5, R4, #0x154
LDM             R5, {R5,R6}
CMP             R7, #0x400
BEQ             loc_1166B0
SUB             R0, R7, #0x400
SUBS            R0, R0, #1
BEQ             loc_1166C0
CMP             R0, #1
BNE             loc_1166E8
B               loc_1166D0
LDR             R0, [R4,#(dword_7008A4 - 0x700750)]
CMP             R5, R0
BNE             locret_1166FC
B               loc_1166E8
LDR             R0, [R4,#(dword_7008A8 - 0x700750)]
CMP             R6, R0
BNE             locret_1166FC
B               loc_1166E8
LDR             R0, [R4,#(dword_7008A4 - 0x700750)]
CMP             R5, R0
BEQ             loc_1166E8
LDR             R0, [R4,#(dword_7008A8 - 0x700750)]
CMP             R6, R0
BNE             locret_1166FC
NOP
BL              sub_119F50
NOP
NOP
B               loc_116690
POP             {R4-R8,PC}
