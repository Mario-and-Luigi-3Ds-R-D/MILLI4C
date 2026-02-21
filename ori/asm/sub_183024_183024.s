MOV             R1, R2
PUSH            {R4,LR}
LDR             R2, [R0]
LDR             R3, [R3,#8]
LDR             R12, [R2,#0x9C]
LDR             R2, [R0,#4]
SXTB            R3, R3
BLX             R12
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
LDRSH           R2, [R0,#0xB6]
MOV             R4, R0
CMN             R2, #1
BEQ             loc_183080
LDR             R3, [R0]
LDR             R1, [R0,#0xA4]
LDR             R12, [R3,#0x54]
LDRB            R1, [R1,#0x6C]
MOV             R3, #1
BLX             R12
MOV             R0, #0xFFFFFFFF
STRH            R0, [R4,#0xB6]
MOV             R0, #0
POP             {R4,PC}
