MOVS            R0, #0x88
PUSH            {R4,LR}
BLX             sub_2FEF68
CMP             R0, #0
BEQ             locret_100588
MOVS            R1, #0
STRB            R1, [R0]
POP             {R4,PC}
