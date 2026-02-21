PUSH            {R4-R8,LR}
LDM             R1, {R3-R5}
SMULL           R3, R6, R0, R3
SMULL           R4, R7, R0, R4
SMULL           R5, R8, R0, R5
MOV             R3, R3,LSR#16
ORR             R3, R3, R6,LSL#16
MOV             R4, R4,LSR#16
ORR             R4, R4, R7,LSL#16
MOV             R5, R5,LSR#16
ORR             R5, R5, R8,LSL#16
LDM             R2, {R6-R8}
ADD             R3, R3, R6
ADD             R4, R4, R7
ADD             R5, R5, R8
STM             R2, {R3-R5}
POP             {R4-R8,PC}
