LDR             R0, [R2,#8]
CMP             R0, #0
BEQ             locret_1F4D58
BIC             R0, R0, #1
ADD             R0, R0, R0,LSR#31
MOV             R0, R0,LSL#15
MOV             R0, R0,LSR#16
STRH            R0, [R1,#0x24]
LDR             R2, [R2,#8]
TST             R2, #1
ADDNE           R0, R0, #1
STRHNE          R0, [R1,#0x24]
MOV             R0, #3
BX              LR
