PUSH            {R4-R9,LR}
MOV             R0, R0,LSL#18
MOV             R1, R1,LSL#18
LDM             R2, {R4-R6}
MOV             R4, R4,LSL#2
MOV             R5, R5,LSL#2
MOV             R6, R6,LSL#2
LDM             R3, {R7-R9}
MOV             R7, R7,LSL#2
MOV             R8, R8,LSL#2
MOV             R9, R9,LSL#2
SMULL           R12, R7, R1, R7
SMULL           R12, R8, R1, R8
SMULL           R12, R9, R1, R9
MOV             R12, #0
SMLAL           R12, R7, R0, R4
MOV             R12, #0
SMLAL           R12, R8, R0, R5
MOV             R12, #0
SMLAL           R12, R9, R0, R6
STM             R2, {R7-R9}
RSB             R1, R1, #0
LDM             R3, {R7-R9}
MOV             R7, R7,LSL#2
MOV             R8, R8,LSL#2
MOV             R9, R9,LSL#2
SMULL           R12, R7, R0, R7
SMULL           R12, R8, R0, R8
SMULL           R12, R9, R0, R9
MOV             R12, #0
SMLAL           R12, R7, R1, R4
MOV             R12, #0
SMLAL           R12, R8, R1, R5
MOV             R12, #0
SMLAL           R12, R9, R1, R6
MOV             R12, #0
STM             R3, {R7-R9}
POP             {R4-R9,PC}
