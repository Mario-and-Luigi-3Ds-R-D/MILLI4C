PUSH            {R4-R12,LR}
MOV             R4, R1
MOV             R7, R0
MOV             R8, R2
MOV             R9, R3
LDRD            R10, R11, [SP,#0x28+arg_0]
LDRB            R0, [R1,#0xDC]
LDRB            R1, [R7,#0xDC]
CMP             R0, R1
BEQ             loc_16BD58
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_16BD58
TST             R0, #4
BNE             loc_16BD58
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
ADD             R2, R0, R0,LSL#1
ADD             R0, R7, #0x640
LDM             R0, {R0,R1}
BL              sub_14351C
AND             R5, R0, #7
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
ADD             R2, R0, R0,LSL#1
ADD             R0, R4, #0x640
LDM             R0, {R0,R1}
BL              sub_14351C
CMP             R5, #0
AND             R0, R0, #7
CMPNE           R0, #0
BEQ             loc_16BD58
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
ADD             R5, R4, #0x400
ADD             R6, R7, #0x400
CMP             R0, #0
ADD             R5, R5, #0x248
ADD             R6, R6, #0x248
BEQ             loc_16BD60
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #1
BEQ             loc_16BD60
LDR             R0, [R7,#0x648]
LDR             R1, [R4,#0x648]
MOV             R0, R0,LSL#28
AND             R0, R1, R0,LSR#31
STRB            R0, [R8]
LDR             R0, [R6]
LDR             R1, [R5]
MOV             R0, R0,LSL#25
AND             R0, R0, R1,LSL#29
MOV             R0, R0,LSR#31
STRB            R0, [R9]
LDR             R0, [R5]
LDR             R1, [R6]
MOV             R0, R0,LSL#26
AND             R0, R0, R1,LSL#27
MOV             R0, R0,LSR#31
STRB            R0, [R10]
LDR             R0, [R5]
LDR             R1, [R6]
MOV             R0, R0,LSL#30
AND             R0, R0, R1,LSL#24
MOV             R0, R0,LSR#31
STRB            R0, [R11]
LDRB            R0, [R8]
CMP             R0, #0
LDRBEQ          R0, [R9]
CMPEQ           R0, #0
MOVNE           R0, #1
POP             {R4-R12,PC}
MOV             R0, #0
POP             {R4-R12,PC}
LDR             R0, [R7,#0x648]
LDR             R1, [R4,#0x648]
MOV             R0, R0,LSL#26
AND             R0, R1, R0,LSR#31
STRB            R0, [R8]
LDR             R0, [R6]
LDR             R1, [R5]
MOV             R0, R0,LSL#30
AND             R0, R0, R1,LSL#29
MOV             R0, R0,LSR#31
STRB            R0, [R9]
LDR             R1, [R5]
LDR             R0, [R6]
MOV             R1, R1,LSL#26
AND             R0, R0, R1,LSR#31
STRB            R0, [R10]
LDR             R0, [R5]
LDR             R1, [R6]
MOV             R0, R0,LSL#30
AND             R0, R0, R1,LSL#29
MOV             R0, R0,LSR#31
STRB            R0, [R11]
B               loc_16BD40
