PUSH            {R4-R6,LR}
ADD             R4, R0, #0x1000
MOV             R5, #0
LDR             R0, [R4,#0x1E0]
CMP             R0, #0
BEQ             loc_1BF5A4
BL              sub_533330
STR             R5, [R4,#0x1E0]
LDR             R0, [R4,#0x1E4]
CMP             R0, #0
BEQ             loc_1BF5BC
MOV             R1, #0
BL              sub_234A48
STR             R5, [R4,#0x1E4]
LDR             R0, [R4,#0x1EC]
CMP             R0, #0
BEQ             loc_1BF5D0
BL              sub_533330
STR             R5, [R4,#0x1EC]
LDR             R0, [R4,#0x1E8]
CMP             R0, #0
BEQ             loc_1BF5E8
MOV             R1, #0
BL              sub_234A48
STR             R5, [R4,#0x1E8]
LDR             R0, [R4,#0x1F0]
CMP             R0, #0
BEQ             locret_1BF5FC
BL              sub_533330
STR             R5, [R4,#0x1F0]
POP             {R4-R6,PC}
