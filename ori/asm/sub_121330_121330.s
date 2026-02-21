PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0]
CMP             R0, #0
LDREQ           R4, =0xD8A103F7
BEQ             loc_121364
SVC             0x23 ; '#'
MOV             R4, R0
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, =dword_69A354
LDR             R0, [R0]
STR             R0, [R5]
MOV             R0, R4
POP             {R4-R6,PC}
