PUSH            {R4-R6,LR}
MOV             R5, R0
CMP             R1, #1
STRB            R1, [R0,#4]
LDREQ           R0, [R5,#0x68]
MOV             R4, R1
BLEQ            sub_141E68
LDR             R0, [R5,#0x68]
MOV             R1, R4
POP             {R4-R6,LR}
NOP
