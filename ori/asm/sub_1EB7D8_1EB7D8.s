PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x10]
MOV             R2, #6
MOV             R1, #0
BL              sub_53708C
MOV             R0, #0
STR             R0, [R4,#0x154]
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E31C - 0x67E18C)]; sub_1EB82C
LDR             R0, [R0,#(dword_67E320 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EB820
LDR             R2, [R0]
LDR             R1, [R2,R1]
POP             {R4,LR}
BX              R1
