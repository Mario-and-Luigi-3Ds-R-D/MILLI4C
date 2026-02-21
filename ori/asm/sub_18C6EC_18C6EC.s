PUSH            {R3-R9,LR}
MOV             R5, R0
MOV             R1, #0
LDR             R0, [R0]
LDR             R2, [R0,#0xF8]
MOV             R0, R5
BLX             R2
CMP             R0, #0
BNE             locret_18C8E8
LDR             R0, =0x13CFC
ADD             R7, R5, #0x10000
ADD             R7, R7, #0x3D00
LDR             R0, [R0,R5]
LDR             R1, [R0,#0x60]
ADD             R0, R0, R1
STR             R0, [R7,#0x2C]
LDR             R0, [R5]
LDR             R1, [R0,#0x90]
MOV             R0, R5
BLX             R1
ORR             R1, R0, #0x2000000
ADD             R0, R5, #0x13C00
ADD             R0, R0, #0x12C
MOV             R6, R0
BL              sub_62A370
LDR             R0, [R5]
LDR             R1, [R0,#0x90]
MOV             R0, R5
BLX             R1
ORR             R1, R0, #0x2000000
MOV             R0, R6
BL              sub_62A404
LDR             R0, [R5]
LDR             R1, [R0,#0x90]
MOV             R0, R5
BLX             R1
ORR             R1, R0, #0x2000000
MOV             R0, R6
BL              sub_62A5F0
LDR             R0, [R6]
MOV             R4, #0
LDR             R0, [R0,#0x1C]
CMP             R0, #0
MOVGT           R8, #0
BLE             loc_18C7EC
LDR             R0, [R6]
LDR             R1, [R0,#0x20]!
CMP             R1, #0
ADDNE           R0, R0, R1
MOVEQ           R0, R8
CMP             R0, #0
BEQ             loc_18C7D0
ADD             R0, R0, R4,LSL#4
LDR             R1, [R0,#0x28]!
CMP             R1, #0
MOVEQ           R0, R8
ADDNE           R0, R0, R1
NOP
BL              sub_59CEC0
LDR             R0, [R6]
ADD             R4, R4, #1
LDR             R0, [R0,#0x1C]
CMP             R0, R4
BGT             loc_18C7A0
MOV             R0, R6
BL              sub_62A744
ADD             R8, R5, #0x13C00
ADD             R8, R8, #0x138
ADD             R4, R5, #0x13C00
LDR             R0, [R8]
CMP             R0, #0
BEQ             loc_18C868
LDR             R1, [R5]
MOV             R0, R5
LDR             R1, [R1,#0x90]
BLX             R1
CMP             R0, #0x20000
MOVEQ           R0, #0x30000
MOVNE           R0, #0x20000
LDR             R1, [R4,#0x12C]
ORR             R0, R0, #0x2000000
MOV             R3, #1
MOV             R2, R8
BL              sub_146A94
LDR             R2, [R4,#0x12C]
ADD             R1, R5, #0xD0
MOV             R0, R6
BL              sub_4BDC60
LDR             R2, [R4,#0x138]
ADD             R1, R5, #0xD0
MOV             R0, R6
BL              sub_4BDC60
NOP
NOP
B               loc_18C8AC
LDR             R0, [R5]
LDR             R1, [R0,#0x90]
MOV             R0, R5
BLX             R1
LDR             R1, [R7,#0x2C]
CMP             R0, #0x20000
MOVNE           R0, #0x20000
MOVEQ           R0, #0x30000
ORR             R0, R0, #0x2000000
MOV             R3, #1
MOV             R2, SP
STR             R1, [SP,#0x20+var_20]
BL              sub_146A94
LDR             R2, [R4,#0x12C]
ADD             R1, R5, #0xD0
MOV             R0, R6
BL              sub_4BDC60
ADD             R0, R5, #0x14800
ADD             R0, R0, #0x368
LDR             R2, [R0]
CMP             R2, #0
ADDNE           R1, R5, #0xD0
BLNE            sub_4BDC60
LDR             R0, [R5]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DD0C
LDM             R0, {R1,R2}
ADD             SP, SP, #4
MOV             R0, R5
POP             {R4-R9,LR}
BX              R12
POP             {R3-R9,PC}
