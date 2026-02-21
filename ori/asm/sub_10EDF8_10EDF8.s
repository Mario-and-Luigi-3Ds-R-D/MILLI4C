PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R4, =0x3FA
LDR             R0, =dword_6D4B9C
MOV             R1, R5
BL              sub_120200
TST             R0, #0x80000000
MOVNE           R1, R0,LSR#27
SUBNE           R2, R1, #0x20 ; ' '
MOVEQ           R2, R0,LSR#27
CMN             R2, #5
MOV             R3, R0
BNE             loc_10EE48
AND             R1, R0, #0x7E00000
MOV             R2, R1,LSR#21
CMP             R2, #4
MOVEQ           R1, R3,LSL#22
MOVEQ           R1, R1,LSR#22
CMPEQ           R1, R4
BEQ             loc_10EE70
ANDS            R0, R3, #0x80000000
BMI             loc_10EE68
BL              sub_119C38
MOV             R3, R0
LDR             R0, =dword_6D4B88
LDR             R1, [R0]
ADD             R1, R1, #1
STR             R1, [R0]
MOV             R0, R3
POP             {R4-R6,PC}
LDR             R0, =0x7A120
MOV             R1, #0
BL              sub_121140
NOP
NOP
B               loc_10EE04
