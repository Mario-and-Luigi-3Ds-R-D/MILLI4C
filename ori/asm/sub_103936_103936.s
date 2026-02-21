PUSH            {R3-R5,LR}
MOVS            R5, R1
LDR             R1, [R0]
MOVS            R3, R2
LDR             R4, [R1,#0x10]
MOVS            R2, R5
MOVS            R1, R0
MOV             R0, SP
BLX             R4
LDR             R0, [SP,#0x10+var_10]
MOVS            R1, R0
SUBS            R1, #0xC
LDR             R1, [R1,#8]
ADDS            R2, R1, R0
MOVS            R4, #0
B               loc_10396C
LDRB            R3, [R0]
LSLS            R1, R4, #4
ADDS            R4, R1, R3
LSRS            R1, R4, #0x1C
LSLS            R1, R1, #0x1C
BEQ             loc_10396A
ASRS            R1, R1, #0x18
EORS            R1, R4
LSLS            R4, R1, #4
LSRS            R4, R4, #4
ADDS            R0, R0, #1
CMP             R0, R2
BNE             loc_103956
MOV             R0, SP
BL              sub_3015EC
MOVS            R0, R4
POP             {R3-R5,PC}
