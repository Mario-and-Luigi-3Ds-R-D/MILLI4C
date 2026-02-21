PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, R1
MOV             R5, R2
ADD             R1, R2, #8
LDR             R2, [R0]
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
MOV             R1, R0
ADD             R0, R0, #0xB
ADD             R2, R4, #4
BIC             R0, R0, #7
STR             R1, [R4,#0xC]
STM             R2, {R0,R5}
STR             R4, [R0,#-4]
ADD             R0, R4, #0x10
POP             {R4-R6,LR}
B               sub_118998
