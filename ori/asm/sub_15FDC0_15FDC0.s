PUSH            {R4-R11,LR}
SUB             SP, SP, #0x14
MOV             R5, R0
BL              sub_186CEC
LDR             R0, =0x14418
LDR             R0, [R0,R5]
BL              sub_3D8DB0
LDR             R0, =0x1416C
ADD             R7, R5, #0x14400
MOV             R11, #1
ADD             R7, R7, #0xEC
LDR             R4, [R0,R5]
CMP             R4, #0
ADDNE           R8, R5, #0x3C000
BEQ             loc_1600C4
LDR             R0, [R4]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_1600B8
LDR             R6, [R4,#0x7FC]
CMP             R6, #0
BEQ             loc_1600B8
ADD             R0, R8, #0x178
LDRB            R2, [R4,#0xDC]
LDM             R0, {R0,R1}
BL              sub_14351C
LDR             R1, [R6,#0xC]
LDR             R2, [R5,#0xDC]
AND             R0, R0, #1
CMP             R2, R1
MOVEQ           R1, #0
MOVNE           R1, R11
CMP             R1, R0
BEQ             loc_1600B8
CMP             R1, #0
ADDEQ           R9, R5, #0xCC
MOVNE           R9, R7
CMP             R0, #0
LDR             R0, [R9,#0x10]
ADDEQ           R10, R5, #0xCC
MOVNE           R10, R7
ADD             R12, R0, #0x14
ADD             R0, R0, #0x18
LDM             R0, {R0,R2}
CMP             R0, R2
LDRNE           R1, [R0]
CMPNE           R1, R6
ADDNE           R0, R0, #4
BNE             loc_15FE78
CMP             R0, R2
BEQ             loc_15FEEC
ADD             R1, R0, #4
SUB             R3, R2, R1
MOV             R2, R3,ASR#2
CMP             R2, #0
BLE             loc_15FEEC
MOVS            R2, R3,LSL#29
BPL             loc_15FEC0
LDR             R2, [R1]
ADD             R1, R1, #4
CMP             R2, R6
STRNE           R2, [R0],#4
MOVS            R2, R3,ASR#3
BEQ             loc_15FEEC
LDR             R3, [R1]
CMP             R3, R6
STRNE           R3, [R0],#4
LDR             R3, [R1,#4]!
ADD             R1, R1, #4
CMP             R3, R6
STRNE           R3, [R0],#4
SUBS            R2, R2, #1
BNE             loc_15FEC8
LDR             R1, [R12,#8]
STR             R0, [R12,#8]
CMP             R1, R0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R1, #0
MOVNE           R0, #0
STRNE           R0, [R6,#0xC]
LDR             R0, [R10,#0x10]
LDR             R1, [R4,#0x7FC]
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R0,#0xC]
MOV             R6, R1
CMP             R0, #0
BEQ             loc_15FF40
CMP             R0, R1
BEQ             loc_1600A4
BL              sub_5E8330
CMP             R0, #0
NOP
BNE             loc_1600A4
LDR             R0, [SP,#0x38+var_38]
STR             R6, [SP,#0x38+var_30]
LDR             R1, [R6,#0xC]
ADD             R0, R0, #0x10
STR             R0, [SP,#0x38+var_28]
CMP             R1, #0
BNE             loc_1600A4
LDR             R1, [R0,#0xC]
LDR             R2, [R0,#8]
ADD             R6, R0, #4
LDR             R0, [R0,#0x10]
SUB             R1, R1, R2
MOV             R3, #1
BIC             R2, R0, #0xC0000000
CMP             R2, R1,ASR#2
BGT             loc_160070
CMP             R2, #0
MOVEQ           R1, #1
MOVNE           R1, R2,LSL#1
BIC             R0, R0, #0xC0000000
CMP             R0, R1
STR             R1, [SP,#0x38+var_2C]
BGE             loc_160070
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_15FFB8
LDR             R0, [R6,#0xC]
AND             R0, R0, #0xC0000000
CMP             R0, #0x40000000
BEQ             loc_15FFC0
MOV             R3, #0
B               loc_16008C
LDR             R0, [R6]
MOV             R1, R1,LSL#2
LDR             R2, [R0]
LDR             R3, [R2,#8]
MOV             R2, #0x20 ; ' '
BLX             R3
ADD             R2, R6, #4
STR             R0, [SP,#0x38+var_38]
LDM             R2, {R1,R2}
MOV             R0, #0
STR             R0, [SP,#0x38+var_34]
CMP             R1, R2
LDRNE           R0, [SP,#0x38+var_38]
BEQ             loc_160028
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_15FFF8
LDR             R0, [R6,#8]
LDR             R1, [R6,#4]
SUB             R0, R0, R1
MOV             R0, R0,ASR#2
STR             R0, [SP,#0x38+var_34]
LDR             R1, [R6,#4]
CMP             R1, #0
BEQ             loc_160044
LDR             R0, [R6]
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BLX             R2
LDR             R0, [SP,#0x38+var_34]
LDR             R1, [SP,#0x38+var_38]
MOV             R3, R11
ADD             R0, R1, R0,LSL#2
STR             R0, [R6,#8]
STR             R1, [R6,#4]
LDR             R0, [R6,#0xC]
LDR             R1, [SP,#0x38+var_2C]
AND             R0, R0, #0xC0000000
ORR             R0, R0, R1
STR             R0, [R6,#0xC]
LDR             R0, [R6,#8]
CMP             R0, #0
LDRNE           R1, [SP,#0x38+var_30]
STRNE           R1, [R0]
LDR             R0, [R6,#8]
ADD             R0, R0, #4
STR             R0, [R6,#8]
CMP             R3, #0
BEQ             loc_1600A4
LDR             R0, [SP,#0x38+var_28]
LDR             R1, [R0]
LDR             R0, [SP,#0x38+var_30]
STR             R1, [R0,#0xC]
MOV             R0, R9
BL              sub_4B1570
MOV             R0, R10
NOP
BL              sub_4B1570
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_15FDFC
MOV             R4, #0
SUBS            R1, R4, #5
MOV             R0, R4,ASR#31
SBCS            R0, R0, #0
BGE             loc_160358
ADD             R0, R5, R4,LSL#2
ADD             R0, R0, #0x14400
ADD             R0, R0, #0x1B8
LDR             R6, [R0]
LDR             R2, [R6,#0x7FC]
CMP             R2, #0
BEQ             loc_160344
LDR             R1, [R2,#0xC]
LDR             R0, [R5,#0xDC]
CMP             R0, R1
BNE             loc_160344
ADD             R1, R5, #0xCC
STR             R1, [SP,#0x38+var_30]
ADD             R1, R0, #0x18
MOV             R11, #0
LDM             R1, {R1,R3}
MOV             R8, R7
ADD             R12, R0, #0x14
CMP             R1, R3
LDRNE           R0, [R1]
CMPNE           R0, R2
ADDNE           R1, R1, #4
BNE             loc_160120
CMP             R1, R3
BEQ             loc_16019C
MOV             R0, R1
ADD             R1, R1, #4
SUB             R3, R3, R1
MOV             R9, R3,ASR#2
CMP             R9, #0
BLE             loc_160198
MOVS            R9, R3,LSL#29
BPL             loc_16016C
LDR             R9, [R1]
ADD             R1, R1, #4
CMP             R9, R2
STRNE           R9, [R0],#4
MOVS            R3, R3,ASR#3
BEQ             loc_160198
LDR             R9, [R1]
CMP             R9, R2
STRNE           R9, [R0],#4
LDR             R9, [R1,#4]!
ADD             R1, R1, #4
CMP             R9, R2
STRNE           R9, [R0],#4
SUBS            R3, R3, #1
BNE             loc_160174
MOV             R1, R0
LDR             R0, [R12,#8]
STR             R1, [R12,#8]
CMP             R0, R1
MOVNE           R0, #1
MOVEQ           R0, #0
CMP             R0, #0
STRNE           R11, [R2,#0xC]
LDR             R9, [R8,#0x10]
LDR             R1, [R6,#0x7FC]
LDR             R0, [R9,#0xC]
MOV             R6, R1
CMP             R0, #0
BEQ             loc_1601E8
CMP             R0, R1
BEQ             loc_160330
BL              sub_5E8330
CMP             R0, #0
NOP
BNE             loc_160330
LDR             R0, [R6,#0xC]
MOV             R10, R6
ADD             R9, R9, #0x10
CMP             R0, #0
BNE             loc_160330
ADD             R0, R9, #0xC
LDR             R3, [R9,#8]
LDM             R0, {R0,R2}
ADD             R6, R9, #4
MOV             R1, #1
SUB             R3, R0, R3
BIC             R0, R2, #0xC0000000
CMP             R0, R3,ASR#2
BGT             loc_16030C
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, R0,LSL#1
BIC             R2, R2, #0xC0000000
CMP             R2, R0
STR             R0, [SP,#0x38+var_38]
BGE             loc_16030C
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_160258
LDR             R0, [R6,#0xC]
AND             R0, R0, #0xC0000000
CMP             R0, #0x40000000
BEQ             loc_160260
MOV             R1, R11
B               loc_160324
LDR             R0, [R6]
LDR             R1, [SP,#0x38+var_38]
LDR             R2, [R0]
MOV             R1, R1,LSL#2
LDR             R3, [R2,#8]
MOV             R2, #0x20 ; ' '
BLX             R3
MOV             R11, R0
LDRD            R0, R1, [R6,#4]
MOV             R2, #0
STR             R2, [SP,#0x38+var_34]
CMP             R0, R1
MOVNE           R2, R11
BEQ             loc_1602C8
CMP             R2, #0
VLDRNE          S0, [R0]
ADD             R0, R0, #4
VSTRNE          S0, [R2]
CMP             R0, R1
ADD             R2, R2, #4
BNE             loc_160298
LDR             R0, [R6,#8]
LDR             R1, [R6,#4]
SUB             R0, R0, R1
MOV             R0, R0,ASR#2
STR             R0, [SP,#0x38+var_34]
LDR             R1, [R6,#4]
CMP             R1, #0
BEQ             loc_1602E4
LDR             R0, [R6]
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BLX             R2
LDR             R0, [SP,#0x38+var_34]
ADD             R0, R11, R0,LSL#2
STR             R0, [R6,#8]
STR             R11, [R6,#4]
LDR             R1, [R6,#0xC]
LDR             R0, [SP,#0x38+var_38]
AND             R1, R1, #0xC0000000
ORR             R0, R0, R1
MOV             R1, #1
STR             R0, [R6,#0xC]
LDR             R0, [R6,#8]
CMP             R0, #0
STRNE           R10, [R0]
LDR             R0, [R6,#8]
ADD             R0, R0, #4
STR             R0, [R6,#8]
CMP             R1, #0
LDRNE           R0, [R9]
STRNE           R0, [R10,#0xC]
LDR             R0, [SP,#0x38+var_30]
BL              sub_4B1570
MOV             R0, R8
NOP
BL              sub_4B1570
ADD             R4, R4, #1
SUBS            R1, R4, #5
MOV             R0, R4,ASR#31
SBCS            R0, R0, #0
BLT             loc_1600D8
ADD             R0, R5, #0xCC
BL              sub_59C598
MOV             R0, R7
NOP
BL              sub_59C598
ADD             R0, R5, #0x14400
ADD             R0, R0, #0x174
MOV             R4, R0
BL              sub_504690
ADD             R0, R5, #0x15000
LDRB            R1, [R0,#0xA3]
CMP             R1, #0
LDRBEQ          R0, [R0,#0xA1]
CMPEQ           R0, #1
BNE             loc_1603A4
ADD             SP, SP, #0x14
MOV             R0, R4
POP             {R4-R11,LR}
B               sub_5080B0
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
