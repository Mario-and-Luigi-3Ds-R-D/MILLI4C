PUSH            {R4,LR}
LDRH            R1, [R3],#8
SUB             R1, R1, #0x100
SUBS            R1, R1, #0xA
BEQ             loc_17E4C0
CMP             R1, #1
BNE             loc_17E4F0
B               loc_17E4D8
LDR             R0, [R0,#4]
LDR             R1, [R3]
LDR             R2, [R0]
AND             R1, R1, #0xFF
LDR             R2, [R2,#0x204]
B               loc_17E4EC
LDR             R0, [R0,#4]
LDR             R1, [R3]
LDR             R2, [R0]
AND             R1, R1, #0xFF
LDR             R2, [R2,#0x208]
BLX             R2
MOV             R0, #0
POP             {R4,PC}
