PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_129224
LDR             R0, =0x131E
LDRH            R0, [R0,R4]
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
STRH            R5, [R0,#0xBC]
LDR             R1, [R0,#0xC0]
ORR             R1, R1, #0x10000
STR             R1, [R0,#0xC0]
POP             {R4-R6,PC}
