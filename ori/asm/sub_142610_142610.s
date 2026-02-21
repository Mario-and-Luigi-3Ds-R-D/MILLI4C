PUSH            {R4-R7,LR}
LDM             R1, {R2-R4}
SMULL           R2, R5, R0, R2
SMULL           R3, R6, R0, R3
SMULL           R4, R7, R0, R4
MOV             R2, R2,LSR#16
ORR             R2, R2, R5,LSL#16
MOV             R3, R3,LSR#16
ORR             R3, R3, R6,LSL#16
MOV             R4, R4,LSR#16
ORR             R4, R4, R7,LSL#16
STM             R1, {R2-R4}
POP             {R4-R7,PC}
