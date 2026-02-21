PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x18]
BL              sub_5C5820
CMP             R0, #0
BNE             locret_150218
MOV             R0, #0
MOV             R2, #0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
BL              sub_48004C
CMP             R0, #0
LDR             R0, =unk_63E868
BEQ             loc_150210
LDR             R1, [R4,#8]
LDRH            R1, [R1,#0x10]
CMP             R1, #0x1000
BEQ             loc_15021C
LDRD            R0, R1, [R0,#(dword_63E8B0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R5,PC}
LDRD            R0, R1, [R0,#(off_63E8A0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R5,PC}
