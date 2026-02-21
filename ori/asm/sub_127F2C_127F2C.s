PUSH            {R4,R5}
MOV             R12, R0
ADD             R3, R3, #4
ADD             R4, R1, R2
STR             R1, [R0,#4]
MOV             R0, R1
STR             R12, [R1],R3
CMP             R1, R4
STRCC           R1, [R0,#4]
BCC             loc_127F40
MOV             R1, #0
STR             R1, [R0,#4]
POP             {R4,R5}
MOV             R1, R3
MOV             R0, R2
NOP
