PUSH            {R4-R8,LR}
MOV             R4, R1
LDRD            R0, R1, [R2,#8]
LDR             R8, =off_6CE970
LDR             R5, [R2,#0x10]
AND             R6, R1, #0xFF
UXTH            R7, R0
LDR             R0, [R8]
CMP             R6, #6; switch 6 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_2062EC; jumptable 002062EC default case
DCD loc_20630C; jump table for switch statement
MOV             R1, R7; jumptable 002062EC case 0
BL              sub_52F480
MOV             R6, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x28]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             def_2062EC; jumptable 002062EC default case
MOV             R0, R6
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             def_2062EC; jumptable 002062EC default case
B               loc_206458
MOV             R1, R7; jumptable 002062EC case 1
BL              sub_52F480
MOV             R6, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x28]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_206380
MOV             R0, R6
BL              sub_5EC344
CMP             R0, #0
NOP
BEQ             loc_206458
LDR             R0, [R6]
LDR             R1, [R0,#0x28]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BNE             def_2062EC; jumptable 002062EC default case
B               loc_206458
CMP             R6, #2; jumptable 002062EC cases 2,3
MOVEQ           R6, #1
MOVNE           R6, #0
MOV             R0, R7
BL              sub_47FF28
CMP             R0, #0
NOP
BNE             loc_2063D0
MOV             R0, R7
BL              sub_47FF54
CMP             R0, #0
NOP
BEQ             loc_206410
LDR             R0, [R8]
MOV             R1, R7
BL              sub_52F480
MOV             R7, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x28]
MOV             R0, R7
BLX             R1
CMP             R0, #0
LDRNE           R0, [R7,#0x18]
CMPNE           R0, #0
MOVEQ           R0, #0
MOVNE           R0, #1
CMP             R0, R6
BNE             def_2062EC; jumptable 002062EC default case
B               loc_206458
LDR             R0, [R8]
MOV             R1, R7
BL              sub_528EB0
CMP             R0, #0
MOVNE           R0, #1
CMP             R0, R6
BNE             def_2062EC; jumptable 002062EC default case
B               loc_206458
MOV             R1, R7; jumptable 002062EC cases 4,5
BL              sub_52F480
LDR             R1, [R0]
CMP             R6, #4
MOVEQ           R6, #1
MOVNE           R6, #0
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, R6
BNE             def_2062EC; jumptable 002062EC default case
LDR             R0, [R4,#4]
ADD             R0, R0, R5
STR             R0, [R4,#4]
MOV             R0, #0; jumptable 002062EC default case
POP             {R4-R8,PC}
