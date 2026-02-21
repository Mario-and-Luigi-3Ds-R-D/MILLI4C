PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R0, [R0,#0x18]
BL              sub_5C5820
CMP             R0, #0
LDREQ           R0, =off_6CE970
LDREQ           R5, [R0]
BNE             locret_152000
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_151FCC
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]
CMP             R0, #0
BEQ             loc_151FD8
MOV             R0, R4
POP             {R3-R5,LR}
B               sub_15230C
MOV             R0, #0
MOV             R2, #0
STR             R0, [SP,#0x10+var_10]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
LDR             R1, =unk_63FC24
LDRD            R0, R1, [R1,#(off_63FCD8 - 0x63FC24)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R5,PC}
