PUSH            {R4,LR}
LDR             R4, =dword_700750
LDR             R1, [R4,#(off_7008B0 - 0x700750)]
CMP             R1, #0
LDRNE           R0, =0x401
BLXNE           R1
LDR             R0, [R4,#(dword_7008A8 - 0x700750)]
MOV             R1, #0x40000001
ADD             R0, R0, #1
SMULL           R2, R1, R1, R0
MOV             R2, R1,ASR#29
SUB             R1, R2, R1,ASR#31
ADD             R1, R1, R1,LSL#31
ADD             R0, R0, R1
STR             R0, [R4,#(dword_7008A8 - 0x700750)]
POP             {R4,PC}
