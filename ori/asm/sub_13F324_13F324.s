LDR             R3, [R0,#0x478]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x78 ; 'x'
ADD             R1, R1, R3
STR             R1, [R0,#0x478]
LDR             R3, [R0,#8]
CMP             R3, #0
BEQ             locret_13F394
LDR             R3, [R3,#0x10]
CMP             R3, #0x12C
LDRCS           R12, =0x12E
CMPCS           R12, R3
BCC             locret_13F394
LDR             R0, [R0,#0x40]
LDRSB           R3, [R0,#0x1F]
CMP             R3, #0
BLE             locret_13F394
LDR             R3, [R0,#0x10]
CMP             R3, R1
BGT             locret_13F394
LDRSB           R3, [R0,#0x1E]
ADD             R0, R0, #0x24 ; '$'
ADD             R0, R0, R3,LSL#3
LDR             R3, [R0,#0xC]
LDR             R0, [R0,#4]
SUB             R0, R3, R0
SUB             R0, R1, R0
STR             R0, [R2]
BX              LR
