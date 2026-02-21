PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
STRB            R1, [R0,#0x6C]
LDR             R0, [R0,#4]
MOV             R1, #0x60 ; '`'
ADD             R1, R1, R5,LSL#3
ADD             R1, R1, R0
MOV             R6, R2
LDRH            R2, [R1]
LDRH            R1, [R1,#2]
MOV             R7, R3
ADD             R1, R1, R2
LDR             R2, [R0,#0xC]
SUB             R1, R1, #1
ADD             R0, R0, R2
ADD             R0, R0, R1,LSL#3
LDRH            R1, [R0,#4]
ADD             R0, R4, #0x10
BL              sub_123C70
MOV             R1, R7
ADD             R0, R4, #0x10
STRH            R6, [R4,#0x16]
BL              sub_123CE8
LDRH            R1, [R4,#0x1A]
MOV             R2, #0
BIC             R1, R1, #2
STRH            R1, [R4,#0x1A]
LDR             R0, [R4,#0x10]
STR             R0, [R4,#0x1C]
LDRB            R0, [R4,#0x72]
CMP             R0, #0
LDRNE           R0, [R4,#0xC]
CMPNE           R0, #0
BEQ             loc_11DDD8
LDRH            R1, [R0]
AND             R3, R1, #0xFF
CMP             R3, R5
BLS             loc_11DDD8
CMP             R5, #0
CMPGE           R1, R5
BLE             loc_11DDD8
ADD             R0, R0, R5,LSL#3
LDR             R1, [R0,#4]!
CMP             R1, #0
CMPNE           R0, #0
BEQ             loc_11DDD8
STR             R0, [R4,#0xBC]!
LDRH            R1, [R0,#4]
MOV             R5, #0xFF
ADD             R0, R4, #4
BL              sub_123C70
MOV             R1, R7
ADD             R0, R4, #4
STRH            R6, [R4,#0xA]
BL              sub_123CE8
LDRH            R1, [R4,#0xE]
BIC             R1, R1, #2
STRH            R1, [R4,#0xE]
LDR             R0, [R4,#4]
STR             R0, [R4,#0x10]
STRB            R5, [R4,#0x14]
POP             {R4-R8,PC}
MOV             R0, #0xFF
STR             R2, [R4,#0xBC]
STRB            R0, [R4,#0xD0]
POP             {R4-R8,PC}
