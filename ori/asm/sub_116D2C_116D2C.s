CMP             R2, #0
MOVLE           R3, #0
PUSH            {R4,R5}
BLE             loc_116D68
AND             R3, R2, #1
CMP             R3, #0
MOV             R12, #0
BLE             loc_116D68
LDRSB           R4, [R0,R12]
LDRSB           R5, [R1,R12]
CMP             R4, R5
BNE             loc_116D98
ADD             R12, R12, #1
CMP             R12, R3
BLT             loc_116D4C
CMP             R3, R2
BGE             loc_116DB0
LDRSB           R12, [R0,R3]
LDRSB           R4, [R1,R3]
CMP             R12, R4
BNE             loc_116D98
ADD             R12, R0, R3
ADD             R4, R1, R3
LDRSB           R12, [R12,#1]
LDRSB           R4, [R4,#1]
CMP             R12, R4
BEQ             loc_116DA4
POP             {R4,R5}
MOV             R0, #0
BX              LR
ADD             R3, R3, #2
CMP             R3, R2
BLT             loc_116D70
POP             {R4,R5}
MOV             R0, #1
BX              LR
