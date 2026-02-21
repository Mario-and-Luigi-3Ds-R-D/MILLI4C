PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x18]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_21BC68
MOV             R0, #0
MOV             R2, #0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
LDR             R1, =off_64E814
LDRD            R0, R1, [R1,#(dword_64E824 - 0x64E814)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R5,PC}
