PUSH            {R3-R7,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
BL              sub_5EC8D8
CMP             R0, #0
BNE             locret_150298
BL              sub_48004C
LDR             R6, =unk_63E868
CMP             R0, #0
MOV             R7, #0
BEQ             loc_15029C
LDR             R5, [R4,#8]
LDRH            R1, [R5,#0x10]
SUB             R0, R1, #0x1000
SUBS            R0, R0, #1
BNE             loc_15029C
LDR             R0, [R5,#0x18]!
CMP             R0, #0
BEQ             loc_150288
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R5]
ADD             R0, R4, #0x24 ; '$'
BL              sub_47D780
LDRD            R0, R1, [R6,#(off_63E8A0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R7,PC}
MOV             R2, #0
STR             R7, [SP,#0x18+var_18]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
NOP
NOP
BL              sub_48004C
CMP             R0, #0
NOP
BEQ             loc_1502DC
LDR             R0, [R4,#8]
LDRH            R0, [R0,#0x10]
CMP             R0, #0x1000
BEQ             loc_1502E8
LDRD            R0, R1, [R6,#(dword_63E8B0 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R3-R7,PC}
ADD             R0, R4, #0x24 ; '$'
BL              sub_47D780
LDRD            R0, R1, [R6,#(off_63E8A0 - 0x63E868)]
NOP
B               loc_1502E0
