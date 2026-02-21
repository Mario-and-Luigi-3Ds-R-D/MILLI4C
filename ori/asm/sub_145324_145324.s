CMP             R0, #0
CMPNE           R1, #0
CMPNE           R2, #0
PUSH            {R4,R5}
BEQ             loc_1453C0
CMP             R3, #0
LDRHGE          R12, [R2,#6]
CMPGE           R12, R3
BLE             loc_1453C0
ADD             R3, R2, R3,LSL#5
ADDS            R12, R3, #0x20 ; ' '
BEQ             loc_1453C0
LDR             R5, [R12,#0x18]
LDRB            R3, [R12,#0x14]
CMP             R3, #0
ADD             R4, R2, R5,LSL#2
STR             R3, [R0]
BLE             loc_1453A8
TST             R3, #1
SUB             R3, R4, #4
SUB             R1, R1, #4
BEQ             loc_145384
LDR             R4, [R3,#4]!
STR             R4, [R1,#4]!
LDR             R0, [R0]
MOVS            R0, R0,ASR#1
BEQ             loc_1453A8
LDR             R4, [R3,#4]
SUBS            R0, R0, #1
STR             R4, [R1,#4]
LDR             R4, [R3,#8]!
STR             R4, [R1,#8]!
BNE             loc_145390
LDR             R0, [R2,#8]
LDR             R1, [R12,#8]
POP             {R4,R5}
ADD             R0, R0, R1
ADD             R0, R0, R2
BX              LR
POP             {R4,R5}
MOV             R0, #0
BX              LR
