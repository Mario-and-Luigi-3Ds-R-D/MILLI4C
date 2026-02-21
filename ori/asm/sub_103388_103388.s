PUSH            {R4,LR}
MOVS            R4, R0
LDR             R0, =off_6C3C64
STR             R0, [R4]
LDR             R0, [R4,#4]
BLX             sub_2FF5D4
MOVS            R0, R4
NOP
NOP
POP             {R4,PC}
