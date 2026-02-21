PUSH            {R4,LR}
MOVS            R4, R2
MOVS            R0, R3
SUBS            R2, R2, R1
BLX             sub_2FF3D8
MOVS            R0, R4
POP             {R4,PC}
