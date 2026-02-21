LDR             R0, =dword_698248
PUSH            {R4,LR}
LDR             R4, [R0,#(off_69824C - 0x698248)]; "ptm:u"
LDR             R0, =dword_6D4B30
LDR             R0, [R0]
CMP             R0, #0
BNE             loc_104A00
MOV             R0, R4
BL              sub_300168
MOV             R2, R0
LDR             R0, =dword_6D4B30
MOV             R3, #0
MOV             R1, R4
BL              sub_119C04
MOVS            R1, R0,LSR#31
BNE             locret_104A04
MOV             R0, #0
POP             {R4,PC}
