PUSH            {R3-R7,LR}
MOV             R5, R1
MOV             R6, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x4C]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_14B2B4
LDR             R0, [R6]
LDR             R1, [R0,#0x4C]
MOV             R0, R6
BLX             R1
MOV             R4, R0
LDRB            R0, [R5,#1]
CMP             R0, #0
BEQ             loc_14B364
LDRB            R0, [R4,#0x6C]
LDRB            R1, [R5]
CMP             R0, R1
BNE             loc_14B364
LDRH            R0, [R4,#0x1A]
TST             R0, #1
BEQ             loc_14B364
LDRSH           R0, [R5,#4]
LDRSH           R1, [R4,#0x16]
CMP             R1, R0
STRHNE          R0, [R4,#0x16]
LDRSH           R1, [R5,#6]
LDRSH           R0, [R4,#0x14]
CMP             R0, R1
ADDNE           R0, R4, #0x10
BLNE            sub_123CE8
LDRH            R2, [R4,#0x1A]
LDRSB           R1, [R5,#2]
BIC             R2, R2, #2
ORR             R1, R2, R1,LSL#1
STRH            R1, [R4,#0x1A]
LDRH            R2, [R4,#0xCA]
LDRSB           R1, [R5,#2]
BIC             R2, R2, #2
ORR             R1, R2, R1,LSL#1
STRH            R1, [R4,#0xCA]
LDR             R0, [R6]
LDR             R1, [R0,#0x50]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             locret_14B360
LDR             R0, [R6]
LDR             R1, [R0,#0x50]
MOV             R0, R6
BLX             R1
MOV             R7, R0
LDRB            R0, [R5,#1]
CMP             R0, #0
BEQ             loc_14B300
LDRB            R0, [R7,#0x55]
LDRB            R1, [R5]
CMP             R0, R1
MOVEQ           R0, #1
BEQ             loc_14B304
MOV             R0, #0
STR             R0, [SP,#0x18+var_18]
LDRSH           R3, [R5,#6]
LDRSH           R2, [R5,#4]
LDRB            R1, [R5]
MOV             R0, R7
BL              sub_4FDE40
MOV             R6, #0
MOV             R4, #0
MOV             R2, R4
MOV             R1, R6
MOV             R0, R7
BL              sub_4FDE10
LDRSB           R1, [R5,#2]
NOP
BL              sub_5924CC
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #2
BCC             loc_14B324
ADD             R0, R6, #1
AND             R6, R0, #0xFF
CMP             R6, #3
BCC             loc_14B320
POP             {R3-R7,PC}
LDRSH           R3, [R5,#6]
LDRSH           R2, [R5,#4]
LDRB            R1, [R5]
MOV             R0, R4
BL              sub_11DCDC
NOP
NOP
B               loc_14B28C
