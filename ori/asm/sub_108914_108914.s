PUSH            {R4,LR}
MOV             R4, R0
LDRH            R0, [R0,#0x26]
TST             R0, #2
MOVEQ           R0, #1
BEQ             locret_108980
TST             R0, #4
BEQ             loc_10895C
LDR             R0, =aData; "data:"
BL              sub_10D5C8
MOV             R1, R0
MOV             R0, R4
BL              sub_11C858
CMP             R0, #0
BEQ             locret_108980
LDRH            R0, [R4,#0x26]
BIC             R0, R0, #4
STRH            R0, [R4,#0x26]
LDRH            R0, [R4,#0x26]
BIC             R0, R0, #2
STRH            R0, [R4,#0x26]
LDR             R0, =aData; "data:"
BL              sub_107210
MOV             R1, R0
MOV             R0, R4
POP             {R4,LR}
B               sub_11C858
POP             {R4,PC}
