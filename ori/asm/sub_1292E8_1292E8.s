PUSH            {R4-R10,LR}
MOV             R4, R0
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_129410
LDR             R7, =byte_70EE18
LDR             R8, =dword_710418
BL              sub_129050
ADD             R5, R4, #0x1300
MOV             R9, R0
LDRH            R0, [R5,#0x1C]
LDR             R1, =0x12F0
ADD             R0, R4, R0,LSL#3
LDR             R6, [R1,R0]
ADD             R0, R0, #0x1000
ADD             R0, R0, #4
LDR             R10, [R0,#0x2F0]
ADD             R0, R1, #0x2BC
LDRB            R0, [R0,R4]
CMP             R0, #0
BEQ             loc_12935C
MOV             R2, R6
MOV             R1, #0
MOV             R0, R7
BL              sub_133134
MOV             R2, R10
MOV             R1, #1
MOV             R0, R7
BL              sub_133134
MOV             R2, R6
MOV             R1, #0
MOV             R0, R7
BL              sub_1330C0
MOV             R2, R10
MOV             R1, #1
MOV             R0, R7
BL              sub_1330C0
MOV             R0, R8
NOP
BL              sub_132E60
MOV             R0, R8
NOP
BL              sub_13300C
ADD             R6, R4, #0x1000
MOV             R0, R7
LDR             R10, [R6,#0x320]
BL              sub_133040
SUB             R7, R10, R0
MOV             R0, R9
BL              sub_132DCC
SUB             R1, R7, R0
LDR             R2, [R6,#0x324]
MOV             R0, R8
BL              sub_132E94
LDRH            R1, [R5,#0x1E]
LDRH            R0, [R5,#0x1A]
ADD             R1, R4, R1,LSL#2
ADD             R1, R1, #0x1000
LDR             R1, [R1,#0x98]
STRH            R0, [R1]
LDRH            R0, [R5,#0x1A]
ADD             R0, R0, #1
STRH            R0, [R5,#0x1A]
LDR             R0, [R4,#4]
SVC             0x18
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
LDRH            R0, [R5,#0x1A]
AND             R0, R0, #1
STRH            R0, [R5,#0x1E]
LDRB            R0, [R5,#0x19]
ADD             R0, R0, #1
STRB            R0, [R6,#0x319]
POP             {R4-R10,PC}
