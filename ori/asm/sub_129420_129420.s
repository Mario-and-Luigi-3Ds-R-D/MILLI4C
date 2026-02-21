PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_12951C
ADD             R5, R4, #0x1300
LDRB            R0, [R5,#0x18]
CMP             R0, #0
BEQ             locret_12951C
LDRH            R0, [R5,#0x1A]
MOV             R1, #1
BIC             R0, R1, R0
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0x98]
LDRH            R0, [R0]
CMP             R0, #0
BEQ             locret_12951C
ADD             R0, R0, #1
MOV             R6, #0
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
MOVEQ           R1, #2
STRH            R0, [R5,#0x1A]
STRHEQ          R1, [R5,#0x1A]
LDRH            R0, [R5,#0x1A]
AND             R1, R0, #1
STRH            R1, [R5,#0x1C]
LDRH            R0, [R5,#0x1C]
ADD             R1, R0, R0,LSL#1
AND             R0, R6, #0xFF
ADD             R1, R4, R1,LSL#5
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x1000
MOV             R1, R6
LDR             R2, [R0,#0x170]
LDR             R0, =dword_710418
BL              sub_13EDD4
ADD             R6, R6, #1
CMP             R6, #0x18
BLT             loc_129490
LDRH            R0, [R5,#0x1C]
MOV             R2, #0x260
ADD             R0, R4, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R1, [R0,#0x310]
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x324
BL              sub_127EB8
LDR             R0, [R4,#0x14]
CMP             R0, #0
LDRBNE          R1, [R0,#0x10]
CMPNE           R1, #0
BEQ             loc_129510
LDRH            R1, [R5,#0x1C]
MOV             R2, #0xA0
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x1000
LDR             R1, [R1,#0x300]
BL              sub_13317C
POP             {R4-R6,LR}
LDR             R0, =byte_70EE18
B               sub_133150
POP             {R4-R6,PC}
