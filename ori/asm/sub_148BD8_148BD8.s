PUSH            {R4-R6,LR}
LDR             R5, =off_6D1648
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
CMP             R0, #0
BEQ             locret_148CC8
LDR             R0, [R0,#0xC]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
LDR             R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_148C18
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
LDR             R0, [R0,#0x10]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_148C48
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
LDR             R0, [R0,#0x14]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
LDR             R0, [R0,#0x14]
CMP             R0, #0
BEQ             loc_148C78
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
NOP
BL              sub_3213EC
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
MOV             R6, #0
LDR             R4, [R0]
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_148CA0
BL              sub_2FF5D4
STR             R6, [R4]
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
LDR             R0, [R0]
BL              sub_300FD4
NOP
NOP
BL              sub_59B788
LDR             R0, [R5,#(off_6D164C - 0x6D1648)]
NOP
BL              sub_300FD4
STR             R6, [R5,#(off_6D164C - 0x6D1648)]
POP             {R4-R6,PC}
