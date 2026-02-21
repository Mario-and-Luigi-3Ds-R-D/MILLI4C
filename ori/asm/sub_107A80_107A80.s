PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =byte_6D25B0
LDRB            R0, [R6]
CMP             R0, #0
BEQ             locret_107B2C
LDR             R0, [R4]
MOV             R5, #0
STR             R5, [R4]
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, [R4,#8]
STR             R5, [R4,#8]
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, [R4,#0x10]
STR             R5, [R4,#0x10]
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, [R4,#0x1C]
STR             R5, [R4,#0x1C]
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, [R4,#0x24]
STR             R5, [R4,#0x24]
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
BLNE            sub_128434
ADD             R0, R4, #0x2C ; ','
BL              sub_121010
LDR             R4, =dword_6D4AC0
LDR             R0, [R4]
SVC             0x23 ; '#'
LDR             R1, =dword_697134
MOVS            R0, R0,LSR#31
LDR             R1, [R1]
STR             R1, [R4]
BLNE            sub_128434
STRB            R5, [R6]
POP             {R4-R6,PC}
