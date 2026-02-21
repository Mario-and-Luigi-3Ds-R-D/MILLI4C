PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_10934C
ADD             R0, R4, #0x14
BL              sub_10934C
ADD             R0, R4, #0x2C ; ','
BL              loc_1092E0
LDR             R0, =off_6B90CC
STR             R0, [R4,#0x2C]!
MOV             R0, R4
BL              loc_1092E0
MOV             R0, R4
NOP
LDR             R5, =off_6B90FC
SUB             R0, R0, #0x18
MOV             R4, R0
STR             R5, [R0]
BL              sub_10934C
MOV             R0, R4
NOP
SUB             R0, R0, #0x14
MOV             R4, R0
STR             R5, [R0]
BL              sub_10934C
MOV             R0, R4
POP             {R4-R6,LR}
B               nullsub_294
