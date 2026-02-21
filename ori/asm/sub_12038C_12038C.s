MOV             R2, #0
CMP             R1, #4
BCC             loc_1203B8
ANDS            R12, R0, #3
BEQ             loc_2FFE90
RSB             R12, R12, #4
CMP             R12, #2
STRBNE          R2, [R0],#1
SUB             R1, R1, R12
STRHGE          R2, [R0],#2
B               loc_2FFE90
MOVS            R12, R1,LSL#31
STRBCS          R2, [R0],#1
STRBCS          R2, [R0],#1
STRBMI          R2, [R0],#1
BX              LR
