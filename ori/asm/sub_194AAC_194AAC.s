LDRB            R2, [R0,#0x1C]
LDR             R0, =unk_6731D8
AND             R2, R2, #7
LDRB            R0, [R0,R2]
CMP             R0, #0x10
ANDEQ           R0, R1, #0xF
BEQ             locret_194B70
CMP             R0, #8
BEQ             loc_194AE4
CMP             R0, #4
BEQ             loc_194B1C
CMP             R0, #2
BEQ             loc_194B54
B               loc_194B9C
LDR             R2, =unk_67DE00
AND             R1, R1, #7
MOV             R0, #0
LDRB            R3, [R2,R0]
CMP             R3, R1
BEQ             loc_194B6C
ADD             R3, R2, R0
LDRB            R3, [R3,#1]
CMP             R3, R1
BEQ             loc_194B84
ADD             R0, R0, #2
CMP             R0, #0x10
BLT             loc_194AF0
B               loc_194B9C
LDR             R2, =unk_67DDF0
AND             R1, R1, #3
MOV             R0, #0
LDRB            R3, [R2,R0]
CMP             R3, R1
BEQ             loc_194B6C
ADD             R3, R2, R0
LDRB            R3, [R3,#1]
CMP             R3, R1
BEQ             loc_194B84
ADD             R0, R0, #2
CMP             R0, #0x10
BLT             loc_194B28
B               loc_194B9C
LDR             R2, =unk_67DDE0
AND             R1, R1, #1
MOV             R0, #0
LDRB            R3, [R2,R0]
CMP             R3, R1
BNE             loc_194B74
AND             R0, R0, #0xFF
BX              LR
ADD             R3, R2, R0
LDRB            R3, [R3,#1]
CMP             R3, R1
BNE             loc_194B90
ADD             R0, R0, #1
AND             R0, R0, #0xFF
BX              LR
ADD             R0, R0, #2
CMP             R0, #0x10
BLT             loc_194B60
MOV             R0, #0
BX              LR
