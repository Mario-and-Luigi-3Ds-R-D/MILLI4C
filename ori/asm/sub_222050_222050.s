LDR             R3, [R0,#8]
CMP             R3, #0
LDRHNE          R12, [R3]
CMPNE           R12, R2
BLS             loc_2220AC
MOV             R12, #2
ADD             R2, R12, R2,LSL#3
ADDS            R2, R2, R3
BEQ             loc_2220AC
LDR             R0, [R0]
LDR             R3, [R2]
ADD             R0, R0, R3
STR             R0, [R1]
LDRB            R0, [R2,#4]
STRB            R0, [R1,#4]
LDRB            R0, [R2,#5]
STRB            R0, [R1,#5]
LDRB            R0, [R2,#6]
STRB            R0, [R1,#6]
LDRB            R0, [R2,#7]
STRB            R0, [R1,#7]
MOV             R0, #1
BX              LR
MOV             R0, #0
BX              LR
