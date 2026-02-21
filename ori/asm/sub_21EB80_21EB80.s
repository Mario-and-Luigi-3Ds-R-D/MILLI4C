PUSH            {R3-R9,LR}
MOV             R4, R0
MOV             R7, R2
MOV             R5, R1
LDRB            R2, [R0,#0x113]
MOV             R8, R3
CMP             R2, #0
MOVEQ           R0, #0
BEQ             loc_21EBDC
AND             R0, R2, #1
CMP             R0, #0
MOV             R1, #0
BLE             loc_21EBDC
ADD             R3, R4, R1,LSL#2
LDR             R3, [R3,#0x114]
LDR             R3, [R3,#0x16C]
CMP             R3, R5
BNE             loc_21EBD0
ADD             R0, R4, R1,LSL#2
B               loc_21EBFC
ADD             R1, R1, #1
CMP             R0, R1
BGT             loc_21EBB4
CMP             R0, R2
BGE             loc_21EC2C
ADD             R1, R4, R0,LSL#2
LDR             R3, [R1,#0x114]
LDR             R3, [R3,#0x16C]
CMP             R3, R5
BNE             loc_21EC04
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x114]
POP             {R3-R9,PC}
LDR             R1, [R1,#0x118]
LDR             R1, [R1,#0x16C]
CMP             R1, R5
BNE             loc_21EC20
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x118]
POP             {R3-R9,PC}
ADD             R0, R0, #2
CMP             R2, R0
BGT             loc_21EBE4
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x17C
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_1E9F04
MOV             R6, R0
ADD             R0, R0, #0x100
MOV             R2, #0
STRH            R7, [R0,#0x74]
STR             R8, [SP,#0x20+var_20]
LDR             R1, [R6]
LDR             R0, [R4,#4]
LDR             R12, [R1,#0x2C]
ADD             R3, R0, #0xCC
MOV             R1, R5
MOV             R0, R6
BLX             R12
LDR             R2, [R6,#0xA4]
LDR             R0, [R2,#0xC]
CMP             R0, #0
BEQ             loc_21ED50
LDR             R0, [R4,#4]
LDR             R12, [R0,#0xDC]
ADD             R1, R12, #0x18
LDM             R1, {R1,R3}
MOV             R0, R3
CMP             R1, R0
LDRNE           R5, [R1]
CMPNE           R5, R2
ADDNE           R1, R1, #4
BNE             loc_21ECA0
CMP             R1, R3
MOV             R0, R1
BEQ             loc_21ED18
ADD             R1, R0, #4
SUB             R5, R3, R1
MOV             R3, R5,ASR#2
CMP             R3, #0
BLE             loc_21ED18
MOVS            R3, R5,LSL#29
BPL             loc_21ECEC
LDR             R3, [R1]
ADD             R1, R1, #4
CMP             R3, R2
STRNE           R3, [R0],#4
MOVS            R3, R5,ASR#3
BEQ             loc_21ED18
LDR             R5, [R1]
CMP             R5, R2
STRNE           R5, [R0],#4
LDR             R5, [R1,#4]!
ADD             R1, R1, #4
CMP             R5, R2
STRNE           R5, [R0],#4
SUBS            R3, R3, #1
BNE             loc_21ECF4
LDR             R1, [R12,#0x1C]
STR             R0, [R12,#0x1C]
CMP             R1, R0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R1, #0
MOVNE           R0, #0
STRNE           R0, [R2,#0xC]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
LDRB            R0, [R4,#0x113]
ADD             R0, R4, R0,LSL#2
STR             R6, [R0,#0x114]
LDRB            R0, [R4,#0x113]
ADD             R0, R0, #1
STRB            R0, [R4,#0x113]
MOV             R0, R6
POP             {R3-R9,PC}
