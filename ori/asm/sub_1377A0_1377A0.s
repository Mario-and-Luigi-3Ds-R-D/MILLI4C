LDR             R2, =dword_6D2418
PUSH            {R4-R6}
LDR             R12, [R2]
LDR             R3, [R2,#(dword_6D241C - 0x6D2418)]
ADD             R4, R12, R1,LSL#2
ADD             R4, R4, #8
CMP             R4, R3
STRCS           R3, [R2]
BCS             loc_1377F4
CMP             R1, #0
BEQ             loc_1377F4
SUB             R1, R1, #1
MOV             R4, #0
ORR             R6, R0, R1,LSL#20
TST             R1, #1
STM             R12, {R4,R6}
ADD             R0, R12, #8
ADDNE           R1, R1, #1
STR             R0, [R2]
ADD             R0, R0, R1,LSL#2
STR             R0, [R2]
POP             {R4-R6}
BX              LR
