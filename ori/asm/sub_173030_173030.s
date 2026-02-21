PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R3, [R0,#0x35C]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             locret_173110
ADD             R5, R4, #0xA00
LDRH            R0, [R5,#0xA8]
TST             R0, #7
BEQ             locret_173110
LDRB            R1, [R4,#0xAB5]
ADD             R3, R1, #1
ADD             R2, R1, R1,LSL#2
ADD             R2, R2, R1,LSL#5
AND             R1, R3, #0xFF
CMP             R1, #6
ADD             R2, R4, R2,LSL#3
STRB            R1, [R4,#0xAB5]
ADD             R6, R2, #0x800
MOVCS           R0, #0
ADD             R6, R6, #0x328
STRBCS          R0, [R4,#0xAB5]
MOV             R1, R4
MOV             R0, R6
BL              sub_2D1AD0
CMP             R0, #0
BEQ             locret_173110
LDR             R0, =0x11A
LDRH            R0, [R0,R6]
TST             R0, #0x8000
BEQ             loc_1730F4
LDRB            R0, [R4,#0xAB4]
SUB             R0, R0, #1
ANDS            R0, R0, #0xFF
STRB            R0, [R4,#0xAB4]
BNE             loc_1730D4
LDRH            R0, [R5,#0xAC]
AND             R0, R0, #1
STRH            R0, [R5,#0xAC]
MOV             R2, #0
LDRH            R0, [R5,#0xB2]
MOV             R1, R2
VLDR            S0, =1.0
BL              sub_145730
NOP
NOP
B               loc_173100
LDRH            R0, [R5,#0xAC]
BIC             R0, R0, #1
STRH            R0, [R5,#0xAC]
ADD             R0, R4, #0x400
LDRH            R1, [R0,#0xB6]
BIC             R1, R1, #1
STRH            R1, [R0,#0xB6]
POP             {R4-R6,PC}
