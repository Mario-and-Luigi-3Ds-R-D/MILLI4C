PUSH            {R4,LR}
LDR             R2, [R0,#0xC]
MOVS            R1, R0
LSLS            R0, R2, #0x1E
BEQ             loc_10273E
LSLS            R0, R2, #0x1A
BPL             loc_10274A
LDR             R0, [R1,#0x28]
B               loc_102754
BLX             sub_2FF1F8
MOVS            R1, #1
STR             R1, [R0]
SUBS            R0, R1, #2
POP             {R4,PC}
LDR             R3, [R1,#0x18]
LDR             R0, [R1,#4]
ADDS            R0, R0, R3
LDR             R3, [R1,#0x10]
SUBS            R0, R0, R3
ADDS            R1, #0x40 ; '@'
LDRB            R3, [R1,#4]
CMP             R3, #0
BEQ             loc_102762
LDRB            R1, [R1,#5]
SUBS            R0, R0, R1
POP             {R4,PC}
LSLS            R1, R2, #0xC
BPL             locret_102760
CMP             R0, #0
BLE             locret_102760
SUBS            R0, R0, #1
POP             {R4,PC}
