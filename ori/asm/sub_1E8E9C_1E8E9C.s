ADD             R0, R0, R1,LSL#4
PUSH            {R4-R6,LR}
LDR             R5, [R0,#0x12C]
CMP             R5, #0
BEQ             locret_1E8EDC
LDR             R0, [R5,#8]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x10]
SUBS            R4, R0, #1
BMI             locret_1E8EDC
MOV             R1, R4
MOV             R0, R5
BL              sub_4B438C
SUBS            R4, R4, #1
NOP
BPL             loc_1E8EC4
POP             {R4-R6,PC}
