PUSH            {R3-R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x154
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4]
LDR             R1, [R4,#0x90]
LDR             R2, [R4,#0x154]
LDR             R3, [R4,#0x74]
LDR             R12, [R0,#0x88]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
LDR             R1, [R4,#0x74]
CMP             R1, R0
BHI             locret_1EF01C
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E284 - 0x67E18C)]; sub_1EF024
LDR             R0, [R0,#(dword_67E288 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EF010
LDR             R2, [R0]
LDR             R1, [R2,R1]
ADD             SP, SP, #4
POP             {R4,R5,LR}
BX              R1
POP             {R3-R5,PC}
