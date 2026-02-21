PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R5, =off_6CE970
CMP             R2, #0
MOV             R12, #1
LDR             R0, [R5]
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BEQ             loc_14C7CC
CMP             R2, #1
BEQ             loc_14C774
CMP             R2, #2
BNE             loc_14C86C
B               loc_14C81C
CMP             R3, #0
MOVEQ           R0, R4
BEQ             loc_14C7C4
CMP             R3, #1
BEQ             loc_14C794
CMP             R3, #2
BNE             loc_14C86C
B               loc_14C7A8
LDM             R1, {R0,R2}
LDR             R1, [R1,#8]
STR             R1, [R4,#8]
STM             R4, {R0,R2}
B               loc_14C86C
MOV             R3, R1
MOV             R2, #0
MOV             R1, R4
STR             R12, [SP,#0x10+var_10]
BL              sub_5F12C4
MOV             R1, R4
MOV             R0, R1
BL              sub_480160
B               loc_14C86C
CMP             R3, #0
BEQ             loc_14C794
CMP             R3, #1
BEQ             loc_14C7E8
CMP             R3, #2
BNE             loc_14C86C
B               loc_14C7FC
MOV             R0, R4
BL              sub_4800C0
NOP
NOP
B               loc_14C86C
MOV             R3, R1
MOV             R2, #0
MOV             R1, R4
STR             R12, [SP,#0x10+var_10]
BL              sub_5F12C4
NOP
NOP
B               loc_14C86C
CMP             R3, #0
BEQ             loc_14C85C
CMP             R3, #1
BEQ             loc_14C838
CMP             R3, #2
BNE             loc_14C86C
B               loc_14C794
MOV             R0, R4
BL              sub_4800C0
LDR             R0, [R5]
MOV             R2, R4
MOV             R3, #1
ADD             R0, R0, #0x10C000
MOV             R1, R2
ADD             R0, R0, #0x214
B               loc_14C868
MOV             R2, R1
MOV             R3, #1
MOV             R1, R4
BL              sub_5F1314
MOV             R0, R4
POP             {R3-R5,PC}
