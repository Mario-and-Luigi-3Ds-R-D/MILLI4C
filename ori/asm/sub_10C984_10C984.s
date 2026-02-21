PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R4, =dword_700750
MOV             R6, R5
LDR             R0, [R4,#(dword_7008CC - 0x700750)]
LDR             R1, [R4,#(dword_7008C8 - 0x700750)]
ORRS            R0, R0, R1
BEQ             loc_10C9B0
BL              sub_116AB4
MOV             R5, R0
MOV             R6, R1
LDRB            R0, [R4,#(byte_700761 - 0x700750)]
CMP             R0, #0
BEQ             locret_10CA18
ADD             R0, R4, #0x178
LDM             R0, {R0,R1}
ORRS            R0, R0, R1
BEQ             loc_10CA04
BL              sub_116AB4
MOV             R3, R0
LDR             R2, [R4,#(dword_7008C8 - 0x700750)]
LDR             R0, [R4,#(dword_7008CC - 0x700750)]
SUBS            R3, R3, R5
SBC             R1, R1, R6
SUBS            R2, R2, R3
SBCS            R0, R0, R1
BGE             loc_10CA04
LDR             R0, [R4,#(off_7008C0 - 0x700750)]
CMP             R0, #0
BEQ             locret_10CA18
POP             {R4-R6,LR}
BX              R0
NOP
BL              sub_119F50
NOP
NOP
B               loc_10C9B0
POP             {R4-R6,PC}
