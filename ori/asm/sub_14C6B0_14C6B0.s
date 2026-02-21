PUSH            {R3-R5,LR}
CMP             R2, #0
MOV             R4, R0
BEQ             loc_14C6E8
CMP             R2, #1
BEQ             loc_14C6D4
CMP             R2, #2
BNE             loc_14C730
B               loc_14C6FC
LDM             R1, {R0,R2}
LDR             R1, [R1,#8]
STR             R1, [R4,#8]
STM             R4, {R0,R2}
B               loc_14C730
NOP
BL              sub_480160
NOP
NOP
B               loc_14C730
MOV             R0, #1
STR             R0, [SP,#0x10+var_10]
LDR             R0, =off_6CE970
MOV             R3, R1
MOV             R2, #0
MOV             R1, R4
LDR             R0, [R0]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5F12C4
MOV             R1, R4
MOV             R0, R1
BL              sub_480160
MOV             R0, R4
POP             {R3-R5,PC}
