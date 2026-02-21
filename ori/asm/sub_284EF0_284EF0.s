PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R1, [R0]
MOV             R4, R0
MOV             R0, #0
CMP             R1, #2
STR             R0, [R4,#4]
BLS             loc_284F80
STR             R0, [R4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R1, #0x65 ; 'e'
MUL             R0, R0, R1
MOV             R1, R0,LSR#16
LDR             R0, [R4,#0x120]
LDR             R0, [R0,#0x3C]
LDR             R0, [R0,#0x13C]
CMP             R1, R0
MOVLS           R0, #1
MOVHI           R0, #0
MOV             R1, #1
STRB            R0, [R4,#9]
CMP             R0, #0
STRB            R1, [R4,#0x90]
BEQ             loc_284FD4
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4]
AND             R0, R0, #1
CMP             R1, #2
BEQ             loc_284F78
CMP             R0, #0
BEQ             loc_284FD4
B               loc_284FB8
MOV             R0, #1
B               loc_284FB8
LDRB            R0, [R4,#0x90]
CMP             R0, #1
BNE             loc_284FD4
LDRB            R0, [R4,#9]
CMP             R0, #0
BEQ             loc_284FD4
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4]
AND             R0, R0, #1
CMP             R1, #2
BEQ             loc_284F78
CMP             R0, #0
BEQ             loc_284FD4
STRB            R0, [R4,#8]
LDR             R0, =dword_6D1F40
UXTH            R5, R5
BL              sub_546DB0
MUL             R0, R0, R5
MOV             R0, R0,LSR#16
STR             R0, [R4,#0xC]
LDR             R0, [R4]
ADD             R0, R0, #1
STR             R0, [R4]
POP             {R4-R6,PC}
