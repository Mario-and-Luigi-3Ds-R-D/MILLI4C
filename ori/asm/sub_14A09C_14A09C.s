PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R3, #0
LDR             R8, =off_6CE970
ADD             R5, R4, #4
MOV             R2, R3
LDR             R0, [R8]
ADD             R7, R0, #0x68 ; 'h'
LDR             R0, =0x1C98
MOV             R1, R7
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_14A0DC
BL              sub_547B50
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_14A1A0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_14A108
BL              sub_547BD4
NOP
NOP
BL              sub_300FD4
MOV             R3, #0
STR             R6, [R5]
ADD             R5, R4, #0x10
MOV             R2, R3
MOV             R1, R7
MOV             R0, #0x2A0
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_14A138
BL              sub_566798
MOV             R6, R0
LDR             R1, [R5,#8]
ADD             R0, R5, #4
CMP             R1, R0
BNE             loc_14A1BC
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_14A160
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R6, [R5]
LDR             R0, [R4,#4]
MOV             R1, R7
BL              sub_547818
LDR             R0, [R4,#0x10]
LDR             R1, [R4,#4]
BL              sub_566258
LDR             R0, [R4,#0x10]
NOP
BL              sub_5663E8
LDR             R0, [R8]
POP             {R4-R8,LR}
MOV             R3, #0
MOV             R2, #4
MOV             R1, #1
B               sub_52A660
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_14A108
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_14A160
