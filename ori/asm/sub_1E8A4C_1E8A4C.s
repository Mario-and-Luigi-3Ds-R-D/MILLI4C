CMP             R1, #0
PUSH            {R4}
LDRB            R1, [R0,#0x4C]
MOV             R12, #0x11C
BEQ             loc_1E8AC4
CMP             R1, #0
MOV             R2, #3
BEQ             loc_1E8A7C
AND             R1, R1, #1
CMP             R1, #1
LDREQ           R3, [R0,#0x38]
STRBEQ          R2, [R3,#0x6F]
LDRB            R3, [R0,#0x4C]
CMP             R3, R1
BLE             loc_1E8ABC
LDR             R4, [R0,#0x38]
RSB             R3, R1, R1,LSL#3
ADD             R3, R3, R1,LSL#6
ADD             R1, R1, #2
ADD             R4, R4, R3,LSL#2
ADD             R3, R12, R3,LSL#2
STRB            R2, [R4,#0x6F]
LDR             R4, [R0,#0x38]
ADD             R3, R3, R4
STRB            R2, [R3,#0x6F]
LDRB            R3, [R0,#0x4C]
CMP             R3, R1
BGT             loc_1E8A88
POP             {R4}
BX              LR
CMP             R1, #0
MOV             R2, #0
BEQ             loc_1E8AE0
AND             R1, R1, #1
CMP             R1, #1
LDREQ           R3, [R0,#0x38]
STRBEQ          R2, [R3,#0x6F]
LDRB            R3, [R0,#0x4C]
CMP             R3, R1
BLE             loc_1E8ABC
LDR             R4, [R0,#0x38]
RSB             R3, R1, R1,LSL#3
ADD             R3, R3, R1,LSL#6
ADD             R1, R1, #2
ADD             R4, R4, R3,LSL#2
ADD             R3, R12, R3,LSL#2
STRB            R2, [R4,#0x6F]
LDR             R4, [R0,#0x38]
ADD             R3, R3, R4
STRB            R2, [R3,#0x6F]
LDRB            R3, [R0,#0x4C]
CMP             R3, R1
BGT             loc_1E8AEC
POP             {R4}
BX              LR
