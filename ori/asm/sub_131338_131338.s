LDR             R2, =dword_6D2418
LDR             R12, =dword_6D241C
PUSH            {R4,R5}
MOV             R3, #1
LDR             R1, [R2]
LDR             R0, [R12]
CMP             R1, R0
BCS             loc_131368
LDR             R4, =0xF0111
ADD             R5, R1, #8
STM             R1, {R3,R4}
STR             R5, [R2]
LDR             R0, [R12]
LDR             R1, [R2]
CMP             R1, R0
BCS             loc_131388
LDR             R12, =0xF0110
ADD             R4, R1, #8
STM             R1, {R3,R12}
STR             R4, [R2]
POP             {R4,R5}
BX              LR
