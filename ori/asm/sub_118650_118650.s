MOV             R2, #0
PUSH            {R4,R5}
MOV             R1, R2
MOV             R3, #0xC
MOV             R4, #0xFFFFFFFF
STR             R2, [R0]
ADD             R5, R0, R1
ADD             R12, R0, R1,LSL#2
STRB            R2, [R5,#4]
STR             R2, [R12,#0x10]!
SUBS            R3, R3, #1
ADD             R1, R1, #1
STR             R4, [R12,#0x30]
BNE             loc_118668
POP             {R4,R5}
BX              LR
