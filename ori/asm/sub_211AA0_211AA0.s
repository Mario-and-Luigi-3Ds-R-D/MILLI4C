PUSH            {R4-R6,LR}
MOV             R5, R2
MOV             R6, R0
MOV             R4, R1
LDRD            R0, R1, [R5,#8]
AND             R1, R1, #0xFF
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
MOVEQ           R0, #0x1A4
LDRHEQ          R0, [R0,R4]
CMP             R1, #0
LDRBEQ          R1, [R4,#0x1A6]
BL              sub_20FED4
CMP             R0, #0
LDRNE           R0, [R0,#4]
CMPNE           R0, #0
MOVEQ           R0, #0
BEQ             locret_211B04
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R2, R5
MOV             R0, R6
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
