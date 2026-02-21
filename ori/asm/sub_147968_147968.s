PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #0
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_147974
LDR             R1, [R4]
ADD             R0, R0, #4
LDRB            R2, [R1,R0]
STRB            R2, [R4,#8]
ADD             R2, R0, #2
ADD             R5, R2, #2
LDRH            R0, [R1,R2]
CMP             R0, #0
STRH            R0, [R4,#0xA]
MOVNE           R0, R0,LSL#4
BLNE            sub_145AC0
STR             R0, [R4,#0xC]
LDR             R1, [R4]
ADD             R0, R5, #2
MOV             R2, #0
LDR             R0, [R1,R0]
STR             R0, [R4,#4]
LDRH            R0, [R4,#0xA]
CMP             R0, #0
MOV             R0, #0x20 ; ' '
BLE             locret_147A68
LDR             LR, [R4]
LDR             R1, [R4,#0xC]
ADD             R5, R0, #0x10
MOV             R3, R0
ADD             R0, LR, R5
STR             R0, [R1,R2,LSL#4]!
LDR             R0, [R4]
MOV             R12, R5
ADD             R2, R2, #1
LDRB            LR, [R0,R3]
ADD             R0, R3, #1
STRB            LR, [R1,#4]
LDR             R3, [R4]
LDRB            R3, [R3,R0]
ADD             R0, R0, #1
STRB            R3, [R1,#5]
LDR             R3, [R4]
LDRB            R3, [R3,R0]
ADD             R0, R0, #1
STRB            R3, [R1,#6]
LDR             R3, [R4]
LDRB            R3, [R3,R0]
ADD             R0, R0, #1
STRB            R3, [R1,#7]
LDR             R3, [R4]
LDR             R3, [R3,R0]
ADD             R0, R0, #4
STR             R3, [R1,#8]
ADD             R3, R3, R12
LDR             R12, [R4]
ADD             R3, R3, #0xF
LDRH            R0, [R12,R0]
STRH            R0, [R1,#0xC]
LDRH            R1, [R4,#0xA]
BIC             R0, R3, #0xF
CMP             R1, R2
BGT             loc_1479D4
POP             {R4-R6,PC}
