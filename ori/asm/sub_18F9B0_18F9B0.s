PUSH            {R3-R9,LR}
ADD             R4, R0, #0x14800
ADD             R4, R4, #0x364
MOV             R6, R0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_18FAF8
LDR             R0, [R6,#4]
MOV             R8, #0
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_18FB1C
LDR             R0, [R6,#4]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [R4]
ADD             R7, R6, #0x10000
ADD             R7, R7, #0x4B00
STR             R0, [R7,#0x68]
LDR             R0, [R6]
LDR             R1, [R0,#0x90]
MOV             R0, R6
BLX             R1
ORR             R1, R0, #0x2000000
ADD             R0, R6, #0x14800
ADD             R0, R0, #0x368
MOV             R5, R0
BL              sub_62A370
LDR             R0, [R6]
LDR             R1, [R0,#0x90]
MOV             R0, R6
BLX             R1
ORR             R1, R0, #0x2000000
MOV             R0, R5
BL              sub_62A404
LDR             R0, [R6]
LDR             R1, [R0,#0x90]
MOV             R0, R6
BLX             R1
ORR             R1, R0, #0x2000000
MOV             R0, R5
BL              sub_62A5F0
LDR             R0, [R5]
MOV             R4, #0
LDR             R0, [R0,#0x1C]
CMP             R0, #0
BLE             loc_18FABC
LDR             R0, [R5]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
BEQ             loc_18FAA0
ADD             R0, R0, R4,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
NOP
BL              sub_59CEC0
LDR             R0, [R5]
ADD             R4, R4, #1
LDR             R0, [R0,#0x1C]
CMP             R0, R4
BGT             loc_18FA70
MOV             R0, R5
BL              sub_62A744
LDR             R1, [R6]
MOV             R0, R6
LDR             R1, [R1,#0x90]
BLX             R1
LDR             R1, [R7,#0x68]
CMP             R0, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
ORR             R0, R0, #0x2000000
MOV             R3, #1
MOV             R2, SP
STR             R1, [SP,#0x20+var_20]
BL              sub_146A94
LDR             R0, [R6]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DCC4
LDM             R0, {R1,R2}
ADD             SP, SP, #4
MOV             R0, R6
POP             {R4-R9,LR}
BX              R12
POP             {R3-R9,PC}
