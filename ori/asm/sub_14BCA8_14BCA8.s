PUSH            {R4,LR}
MOV             R4, R0
STRB            R1, [R0,#0xFC]
LDR             R0, [R0]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BEQ             locret_14BD1C
LDR             R0, [R4]
LDR             R1, [R0,#0x4C]
MOV             R0, R4
BLX             R1
LDRB            R1, [R4,#0xFC]
CMP             R1, #0
BNE             locret_14BD1C
LDRB            R1, [R0,#0x64]
ORR             R2, R1, #1
MOV             R1, #1
STRB            R1, [R0,#0x65]
AND             R1, R2, #0xFF
ORR             R1, R1, #0x70 ; 'p'
STRB            R1, [R0,#0x64]
LDRB            R1, [R0,#0x5C]
BIC             R1, R1, #1
STRB            R1, [R0,#0x5C]
MOV             R1, #1
STRB            R1, [R0,#0x70]
STRB            R1, [R0,#0x71]
POP             {R4,PC}
