PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6ACE94
STR             R0, [R4]
BL              sub_48004C
CMP             R0, #0
MOV             R6, #0
BEQ             loc_150C50
LDR             R5, [R4,#8]
LDRH            R1, [R5,#0x10]
SUB             R0, R1, #0x1000
SUBS            R0, R0, #1
BNE             loc_150C50
LDR             R0, [R5,#0x18]!
CMP             R0, #0
BEQ             loc_150C30
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x1AC
BL              sub_528B1C
LDR             R0, [R4,#8]
NOP
BL              sub_4F17FC
LDR             R0, [R4,#8]
STR             R6, [R0,#0x1BC]
LDR             R1, =off_6C075C
ADD             R0, R4, #0x28 ; '('
STR             R1, [R4,#0x28]
LDR             R1, [R4,#0x2C]
CMP             R1, #0
STRNE           R6, [R1,#0x184]
STRNE           R6, [R0,#4]
POP             {R4-R6,LR}
SUB             R0, R0, #0x28 ; '('
B               sub_300FD4
