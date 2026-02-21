PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
BL              sub_5CDAD8
CMP             R0, #2
BCS             loc_293008
LDR             R0, [R4,#8]
LDRB            R1, [R4,#4]
ADD             R0, R0, #0x12800
ADD             R0, R0, #4
LDR             R0, [R0]
BL              sub_5CDA5C
CMP             R0, #1
LDREQ           R0, [R4,#8]
BLEQ            sub_292EC0
MOV             R0, #1
STRB            R0, [R4,#0x400]
POP             {R4,PC}
