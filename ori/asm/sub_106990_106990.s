ADD             R1, R0, #4
PUSH            {R4,LR}
LDM             R1, {R1,R2}
MOV             R12, R0
CMP             R1, R2
MOV             LR, R2
BEQ             loc_1069E8
CMP             R1, R2
MOV             R0, R1
MOV             R3, R2
BEQ             loc_1069C8
ADD             R0, R0, #0xC
CMP             R0, R3
BNE             loc_1069BC
LDR             R3, =0x2AAAAAAB
SUB             R0, LR, R1
SMULL           R3, R0, R3, R0
MOV             R3, R0,ASR#1
SUB             R0, R3, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R0, R2, R0,LSL#2
STR             R0, [R12,#8]
LDR             R0, [R12,#8]
MOV             LR, R1
CMP             R1, R0
BEQ             loc_106A04
ADD             R1, R1, #0xC
CMP             R1, R0
BNE             loc_1069F8
CMP             LR, #0
BEQ             locret_106A18
MOV             R0, LR
POP             {R4,LR}
B               sub_110D10
POP             {R4,PC}
