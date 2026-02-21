PUSH            {R0,R1,R4-R12,LR}
MOV             R4, R1
MOV             R5, R1
LDR             R0, [SP,#0x30+var_30]
LDR             R0, [R0,#4]
CMP             R0, #0
BNE             loc_10F0F4
LDR             R0, [R4]
LDR             R6, =0x554E4643
CMP             R0, R6
BNE             loc_10EFBC
LDRH            R1, [R4,#0x10]
LDRH            R0, [R4,#6]
MOV             R2, #0
CMP             R1, #0
LDRGT           R3, =0x464E4946
ADD             R0, R0, R4
BLE             loc_10F0F4
LDR             R12, [R0]
CMP             R12, R3
BNE             loc_10EFA4
ADD             R2, R0, #8
B               loc_10F0D4
LDR             R12, [R0,#4]
ADD             R2, R2, #1
CMP             R1, R2
ADD             R0, R0, R12
BGT             loc_10EF90
B               loc_10F0F4
LDR             R1, =0x544E4643
MOV             R3, #2
MOV             R2, #0x3000000
MOV             R0, R5
BL              sub_119D70
CMP             R0, #0
NOP
BEQ             loc_10F0EC
LDRH            R0, [R4,#6]
LDRH            R1, [R4,#0x10]
MOV             R2, #0
MOV             R3, R2
CMP             R1, #0
ADD             R0, R0, R4
BLE             loc_10F0D0
LDR             R7, =0x50414D43
LDR             R8, =0xB9B1B6BA
LDR             R10, =0x1F60DFD
LDR             R9, =0xFFF505EF
LDR             R11, =0x1FB04F3
LDR             R1, [R0]
CMP             R1, R7
SUB             R12, R1, R7
BEQ             loc_10F0A4
BGE             loc_10F034
ADDS            R1, R1, R8
BEQ             loc_10F048
SUBS            R1, R1, R10
BNE             loc_10F0F4
B               loc_10F08C
ADDS            R1, R12, R9
BEQ             loc_10F07C
SUBS            R1, R1, R11
BNE             loc_10F0F4
B               loc_10F0B8
LDR             R1, [R0,#0x10]
ADD             R2, R0, #8
ADD             R1, R1, R4
STR             R1, [R0,#0x10]
LDR             R1, [R0,#0x14]
CMP             R1, #0
ADDNE           R1, R1, R4
STRNE           R1, [R2,#0xC]
LDR             R1, [R2,#0x10]
CMP             R1, #0
ADDNE           R1, R1, R4
STRNE           R1, [R2,#0x10]
B               loc_10F0B8
LDR             R12, [R0,#0x1C]
ADD             R12, R12, R4
STR             R12, [R0,#0x1C]
B               loc_10F0B8
LDR             R12, [R0,#0xC]
ADD             R1, R0, #8
CMP             R12, #0
ADDNE           R12, R12, R4
STRNE           R12, [R1,#4]
B               loc_10F0B8
LDR             R1, [R0,#0x10]
ADD             R12, R0, #8
CMP             R1, #0
ADDNE           R1, R1, R4
STRNE           R1, [R12,#8]
LDRH            R12, [R4,#0x10]
LDR             R1, [R0,#4]
ADD             R3, R3, #1
CMP             R12, R3
ADD             R0, R0, R1
BGT             loc_10F00C
STR             R6, [R4]
CMP             R2, #0
BEQ             loc_10F0F4
LDR             R0, [SP,#0x30+var_30]
MOV             R1, R5
BL              sub_119D0C
MOV             R0, #1
ADD             SP, SP, #8
POP             {R4-R12,PC}
ADD             SP, SP, #8
MOV             R0, #0
POP             {R4-R12,PC}
