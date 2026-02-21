ADD             R2, R2, #0xF00
ADD             R2, R2, #0xFF
PUSH            {R4,R5}
MOV             R4, R2,LSR#12
STR             R1, [R0,#0x14]
MOV             R4, R4,LSL#12
MOV             R1, R4
POP             {R4,R5}
MOV             R2, R3
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
MOV             R5, R2
CMP             R0, #0
LDRNE           R0, =0x8A01BF9
BNE             locret_1283B0
MOVS            R0, R1,LSL#20
LDRNE           R0, =0xE0E01BF2
BNE             locret_1283B0
MOV             R2, R1
LDR             R0, =unk_70E648
MOV             R3, #0x1000
MOV             R1, R4
BL              sub_1327DC
MOVS            R1, R0
LDREQ           R0, =0xD8601837
BEQ             locret_1283B0
CMP             R5, #0
STRB            R5, [R4,#0x10]
LDR             R0, [R4,#0x14]
MOVNE           R2, #1
MOVEQ           R2, #3
MOV             R3, #0x10000000
SVC             0x1F
MOVS            R1, R0,LSR#31
MOVEQ           R1, #1
STRBEQ          R1, [R4,#0x18]
POP             {R4-R6,PC}
