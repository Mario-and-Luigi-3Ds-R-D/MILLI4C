PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, [R0,#0x18]
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
BNE             locret_1575A8
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_1575A8
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FC34
LDR             R1, [R4,#8]
MOV             R2, #1
BL              sub_50080C
MOV             R0, R4
BL              sub_156908
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_15542C
POP             {R4-R6,PC}
