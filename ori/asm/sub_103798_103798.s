PUSH            {R4-R6,LR}
CMP             R0, #0
BEQ             loc_1037B8
CMP             R0, #1
BEQ             loc_1037CC
MOVS            R4, R1
MOVS            R5, R2
MOVS            R0, #0x34 ; '4'
BL              sub_300F9C
MOVS            R6, R0
MOVS            R2, R5
MOVS            R1, R4
BL              sub_10318C
POP             {R4-R6,PC}
MOVS            R0, #0x34 ; '4'
BL              sub_300F9C
MOVS            R3, #0
MOVS            R4, R0
MOVS            R2, R3
MOVS            R1, R3
BL              sub_301BA4
POP             {R4-R6,PC}
MOVS            R0, #0x34 ; '4'
BL              sub_300F9C
MOVS            R2, #0
MOVS            R4, R0
MOVS            R3, #1
MOVS            R1, R2
BL              sub_301BA4
POP             {R4-R6,PC}
