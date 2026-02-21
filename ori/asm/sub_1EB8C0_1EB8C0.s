PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x74]
SUB             SP, SP, #8
ADD             R1, R4, #0x154
STRD            R0, R1, [SP,#0x10+var_10]
LDR             R0, [R4]
LDR             R1, [R4,#0x70]
LDR             R2, [R4,#0x90]
LDR             R3, [R4,#0x154]
LDR             R12, [R0,#0x90]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x154]
LDR             R1, [R4,#0x74]
CMP             R1, R0
BHI             loc_1EB938
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E334 - 0x67E18C)]; sub_1EB944
LDR             R0, [R0,#(dword_67E338 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EB92C
LDR             R2, [R0]
LDR             R1, [R2,R1]
ADD             SP, SP, #8
POP             {R4,LR}
BX              R1
ADD             SP, SP, #8
POP             {R4,PC}
