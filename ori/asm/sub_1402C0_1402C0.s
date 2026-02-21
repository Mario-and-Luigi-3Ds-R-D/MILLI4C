PUSH            {R4-R12,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R8, R2
MOV             R7, R3
BL              sub_13FED4
MOV             R6, R0
BL              sub_13273C
CMP             R5, #0
ADDEQ           R0, R4, #0x10
LDRDNE          R2, R3, [R4,#0x10]
LDMEQ           R0, {R0,R12}
MOV             R9, #0
MOVNE           R1, R3
MOVNE           R0, R5
MOVEQ           R1, #0
BEQ             loc_1403DC
CMP             R2, R1
BEQ             loc_140328
LDR             R12, [R2]
LDR             LR, [R12]
CMP             LR, R0
LDRNE           R12, [R12,#4]
CMPNE           R12, R0
ADDNE           R2, R2, #4
BNE             loc_140304
CMP             R3, R2
BEQ             loc_140538
LDR             R0, [R2]
MOV             R3, #0
LDR             R5, [R0,#4]
STR             R9, [R0,#8]
STR             R3, [R0]
STR             R9, [R0,#0xC]
STR             R3, [R0,#4]
ADD             R0, R4, #0x10
LDM             R0, {R0,R12}
CMP             R0, R12
BEQ             loc_140538
ADD             R0, R2, #4
CMP             R12, R0
BEQ             loc_14052C
MOV             R3, R0
SUB             LR, R12, R3
MOV             R0, LR,ASR#2
CMP             R0, #0
BLE             loc_14052C
CMP             R12, R3
MOV             R1, #0
MOVLS           R0, #0
BLS             loc_1403A8
MOV             R0, LR,LSL#29
MOV             R0, R0,LSR#31
CMP             R0, #1
BNE             loc_1403A8
LDR             R7, [R3]
MOV             R1, #1
STR             R7, [R2]
CMP             R0, LR,ASR#2
SUBLT           R12, R12, R3
BGE             loc_14052C
LDR             LR, [R3,R1,LSL#2]
ADD             R0, R0, #2
CMP             R0, R12,ASR#2
STR             LR, [R2,R1,LSL#2]
ADD             R1, R1, #1
LDR             LR, [R3,R1,LSL#2]
STR             LR, [R2,R1,LSL#2]
ADD             R1, R1, #1
BLT             loc_1403B4
B               loc_14052C
CMP             R0, R12
BEQ             loc_140414
LDR             R2, [R0]
LDR             R2, [R2,#4]
LDR             R3, [R2,#0x10]
CMP             R3, R8
BNE             loc_14040C
LDR             R3, [R2,#0x14]
CMP             R3, R7
LDRHEQ          R2, [R2,#0x1C]
CMPEQ           R2, R1
BEQ             loc_140414
ADD             R0, R0, #4
B               loc_1403DC
CMP             R0, R12
BEQ             loc_14047C
ADD             R3, R0, #4
SUB             R10, R12, R3
MOV             LR, #1
ADD             R10, LR, R10,ASR#2
CMP             R10, #1
SUBGT           R12, R12, R3
MOV             R2, R0
MOV             R0, LR
ADDGT           R10, LR, R12,ASR#2
BLE             loc_140478
LDR             R12, [R3]
ADD             R0, R0, #1
ADD             R3, R3, #4
LDR             LR, [R12,#4]
LDR             R11, [LR,#0x10]
CMP             R11, R8
LDREQ           R11, [LR,#0x14]
CMPEQ           R11, R7
LDRHEQ          LR, [LR,#0x1C]
CMPEQ           LR, R1
STRNE           R12, [R2],#4
CMP             R10, R0
BGT             loc_140444
MOV             R0, R2
LDR             R1, [R4,#0x14]
CMP             R1, R0
BEQ             loc_140538
LDR             R1, [R0]
MOV             R3, #0
LDR             R5, [R1,#4]
STR             R9, [R1,#8]
STR             R3, [R1]
STR             R9, [R1,#0xC]
STR             R3, [R1,#4]
ADD             R1, R4, #0x10
LDM             R1, {R1,R2}
CMP             R1, R2
BEQ             loc_140538
ADD             R1, R0, #4
CMP             R2, R1
BEQ             loc_14052C
MOV             R3, R1
SUB             R12, R2, R3
MOV             R1, R12,ASR#2
CMP             R1, #0
BLE             loc_14052C
CMP             R2, R3
MOV             R1, #0
MOVLS           R2, #0
BLS             loc_140500
MOV             R2, R12,LSL#29
MOV             R2, R2,LSR#31
CMP             R2, #1
BNE             loc_140500
LDR             LR, [R3]
MOV             R1, #1
STR             LR, [R0]
CMP             R2, R12,ASR#2
BGE             loc_14052C
LDR             LR, [R3,R1,LSL#2]
ADD             R2, R2, #2
CMP             R2, R12,ASR#2
STR             LR, [R0,R1,LSL#2]
ADD             R1, R1, #1
LDR             LR, [R3,R1,LSL#2]
STR             LR, [R0,R1,LSL#2]
ADD             R1, R1, #1
BLT             loc_140508
LDR             R0, [R4,#0x14]
SUB             R0, R0, #4
STR             R0, [R4,#0x14]
MOV             R0, R6
BL              sub_1327BC
MOV             R0, R5
POP             {R4-R12,PC}
