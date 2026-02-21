PUSH            {R4}
LDRB            R1, [R0,#5]
LDR             R2, [R0]
LDRB            R3, [R0,#4]
MOV             R12, R1
ADD             R1, R1, #1
AND             R1, R1, #0xFF
CMP             R1, R3
MOVEQ           R1, #0
LDRB            R4, [R2,R1]
CMP             R4, #0
BEQ             loc_2221B4
CMP             R1, R12
BNE             loc_222184
POP             {R4}
MOV             R0, #0
BX              LR
STRB            R1, [R0,#5]
ADD             R2, R1, #4
POP             {R4}
AND             R0, R2, #0xFF
BX              LR
