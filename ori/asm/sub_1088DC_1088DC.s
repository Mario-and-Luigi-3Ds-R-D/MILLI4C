PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =aData; "data:"
BL              sub_11713C
ANDS            R2, R0, #0x80000000
BMI             loc_108900
LDRH            R2, [R4,#0x26]
ORR             R2, R2, #2
STRH            R2, [R4,#0x26]
MOV             R1, R0
MOV             R0, R4
POP             {R4,LR}
B               sub_11C858
