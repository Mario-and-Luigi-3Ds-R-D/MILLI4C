PUSH            {R4-R11,LR}
SUB             SP, SP, #0x1C
MOV             R8, R0
ADD             R10, R0, #0x13000
ADD             R10, R10, #0xD20
MOV             R4, #0
LDRB            R0, [R10]
CMP             R0, #0
BLE             loc_164F18
ADD             R0, R8, #0x16800
ADD             R0, R0, #0x264
STR             R0, [SP,#0x40+var_38]
ADD             R0, R8, #0x17000
ADD             R5, R8, #0x13C00
ADD             R0, R0, #0xB8
ADD             R5, R5, #0x108
STR             R0, [SP,#0x40+var_34]
MOV             R0, #0x67 ; 'g'
MOV             R1, #0x17C
MUL             R6, R4, R0
LDR             R0, [R5]
ADD             R7, R1, R6,LSL#2
LDRB            R1, [R0,R7]
CMP             R1, #1
BNE             loc_164CA8
LDR             R1, [R8,#0xDC]
MOV             R2, #0xA4
ADD             R11, R2, R6,LSL#2
ADD             R3, R1, #0x18
LDR             R2, [R0,R11]
LDM             R3, {R0,R3}
ADD             R9, R1, #0x14
CMP             R0, R3
LDRNE           R1, [R0]
CMPNE           R1, R2
ADDNE           R0, R0, #4
BNE             loc_164A84
CMP             R0, R3
BEQ             loc_164AF8
ADD             R1, R0, #4
SUB             R3, R3, R1
MOV             R12, R3,ASR#2
CMP             R12, #0
BLE             loc_164AF8
MOVS            R12, R3,LSL#29
BPL             loc_164ACC
LDR             R12, [R1]
ADD             R1, R1, #4
CMP             R12, R2
STRNE           R12, [R0],#4
MOVS            R3, R3,ASR#3
BEQ             loc_164AF8
LDR             R12, [R1]
CMP             R12, R2
STRNE           R12, [R0],#4
LDR             R12, [R1,#4]!
ADD             R1, R1, #4
CMP             R12, R2
STRNE           R12, [R0],#4
SUBS            R3, R3, #1
BNE             loc_164AD4
LDR             R1, [R9,#8]
STR             R0, [R9,#8]
CMP             R1, R0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R1, #0
MOVNE           R0, #0
STRNE           R0, [R2,#0xC]
LDR             R0, [SP,#0x40+var_38]
LDR             R1, [R5]
LDR             R0, [R0]
LDR             R1, [R1,R11]
MOV             R11, R0
LDR             R0, [R0,#0xC]
MOV             R9, R1
CMP             R0, #0
BEQ             loc_164B54
CMP             R0, R1
BEQ             loc_164CA8
BL              sub_5E8330
CMP             R0, #0
NOP
BNE             loc_164CA8
STR             R9, [SP,#0x40+var_30]
LDR             R0, [R9,#0xC]
ADD             R11, R11, #0x10
CMP             R0, #0
BNE             loc_164CA8
LDR             R2, [R11,#0xC]
LDR             R3, [R11,#8]
LDR             R1, [R11,#0x10]
ADD             R9, R11, #4
SUB             R2, R2, R3
BIC             R3, R1, #0xC0000000
CMP             R3, R2,ASR#2
MOV             R0, #1
BGT             loc_164C78
CMP             R3, #0
MOVEQ           R2, #1
MOVNE           R2, R3,LSL#1
BIC             R1, R1, #0xC0000000
CMP             R1, R2
STR             R2, [SP,#0x40+var_2C]
BGE             loc_164C78
LDR             R0, [R9]
CMP             R0, #0
BEQ             loc_164C94
LDR             R0, [R9,#0xC]
AND             R0, R0, #0xC0000000
CMP             R0, #0x40000000
MOVNE           R0, #0
BNE             loc_164C94
LDR             R0, [R9]
MOV             R1, R2,LSL#2
LDR             R2, [R0]
LDR             R3, [R2,#8]
MOV             R2, #0x20 ; ' '
BLX             R3
ADD             R1, R9, #4
STR             R0, [SP,#0x40+var_40]
LDM             R1, {R1,R2}
MOV             R0, #0
STR             R0, [SP,#0x40+var_3C]
CMP             R1, R2
LDRNE           R0, [SP,#0x40+var_40]
BEQ             loc_164C30
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_164C00
LDR             R0, [R9,#8]
LDR             R1, [R9,#4]
SUB             R0, R0, R1
MOV             R0, R0,ASR#2
STR             R0, [SP,#0x40+var_3C]
LDR             R1, [R9,#4]
CMP             R1, #0
BEQ             loc_164C4C
LDR             R0, [R9]
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BLX             R2
LDR             R0, [SP,#0x40+var_3C]
LDR             R1, [SP,#0x40+var_40]
ADD             R0, R1, R0,LSL#2
STR             R0, [R9,#8]
STR             R1, [R9,#4]
LDR             R1, [R9,#0xC]
LDR             R0, [SP,#0x40+var_2C]
AND             R1, R1, #0xC0000000
ORR             R0, R0, R1
STR             R0, [R9,#0xC]
MOV             R0, #1
LDR             R1, [R9,#8]
CMP             R1, #0
LDRNE           R2, [SP,#0x40+var_30]
STRNE           R2, [R1]
LDR             R1, [R9,#8]
ADD             R1, R1, #4
STR             R1, [R9,#8]
CMP             R0, #0
BEQ             loc_164CA8
LDR             R0, [SP,#0x40+var_30]
LDR             R1, [R11]
STR             R1, [R0,#0xC]
LDR             R0, [R5]
LDRB            R1, [R0,R7]
CMP             R1, #2
BNE             loc_164F08
LDR             R1, [R8,#0xDC]
MOV             R2, #0xA4
ADD             R6, R2, R6,LSL#2
ADD             R12, R1, #0x14
ADD             R1, R1, #0x18
LDR             R2, [R0,R6]
LDM             R1, {R1,R3}
CMP             R1, R3
LDRNE           R0, [R1]
CMPNE           R0, R2
ADDNE           R1, R1, #4
BNE             loc_164CD4
CMP             R1, R3
MOV             R0, R1
BEQ             loc_164D4C
ADD             R1, R0, #4
SUB             R3, R3, R1
MOV             R7, R3,ASR#2
CMP             R7, #0
BLE             loc_164D4C
MOVS            R7, R3,LSL#29
BPL             loc_164D20
LDR             R7, [R1]
ADD             R1, R1, #4
CMP             R7, R2
STRNE           R7, [R0],#4
MOVS            R3, R3,ASR#3
BEQ             loc_164D4C
LDR             R7, [R1]
CMP             R7, R2
STRNE           R7, [R0],#4
LDR             R7, [R1,#4]!
ADD             R1, R1, #4
CMP             R7, R2
STRNE           R7, [R0],#4
SUBS            R3, R3, #1
BNE             loc_164D28
LDR             R1, [R12,#8]
STR             R0, [R12,#8]
CMP             R1, R0
MOVNE           R1, #1
MOVEQ           R1, #0
CMP             R1, #0
MOVNE           R0, #0
STRNE           R0, [R2,#0xC]
LDR             R0, [SP,#0x40+var_38]
LDR             R1, [R5]
LDR             R9, [R0]
LDR             R1, [R1,R6]
LDR             R0, [R9,#0xC]
MOV             R7, R1
CMP             R0, #0
BEQ             loc_164DA4
CMP             R0, R1
BEQ             loc_164EE8
BL              sub_5E8330
CMP             R0, #0
NOP
BNE             loc_164EE8
LDR             R0, [R7,#0xC]
MOV             R11, R7
ADD             R9, R9, #0x10
CMP             R0, #0
BNE             loc_164EE8
ADD             R1, R9, #0xC
LDR             R3, [R9,#8]
LDM             R1, {R1,R2}
ADD             R7, R9, #4
MOV             R0, #1
SUB             R1, R1, R3
BIC             R3, R2, #0xC0000000
CMP             R3, R1,ASR#2
BGT             loc_164EC4
CMP             R3, #0
MOVEQ           R1, #1
MOVNE           R1, R3,LSL#1
BIC             R2, R2, #0xC0000000
CMP             R2, R1
STR             R1, [SP,#0x40+var_30]
BGE             loc_164EC4
LDR             R0, [R7]
CMP             R0, #0
BEQ             loc_164EDC
LDR             R0, [R7,#0xC]
AND             R0, R0, #0xC0000000
CMP             R0, #0x40000000
MOVNE           R0, #0
BNE             loc_164EDC
LDR             R0, [R7]
MOV             R1, R1,LSL#2
LDR             R2, [R0]
LDR             R3, [R2,#8]
MOV             R2, #0x20 ; ' '
BLX             R3
ADD             R2, R7, #4
STR             R0, [SP,#0x40+var_40]
LDM             R2, {R1,R2}
MOV             R0, #0
STR             R0, [SP,#0x40+var_3C]
CMP             R1, R2
LDRNE           R0, [SP,#0x40+var_40]
BEQ             loc_164E80
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_164E50
LDR             R0, [R7,#8]
LDR             R1, [R7,#4]
SUB             R0, R0, R1
MOV             R0, R0,ASR#2
STR             R0, [SP,#0x40+var_3C]
LDR             R1, [R7,#4]
CMP             R1, #0
BEQ             loc_164EA0
LDR             R3, [R7]
LDR             R0, [R3]
LDR             R2, [R0,#0xC]
MOV             R0, R3
BLX             R2
LDRD            R0, R1, [SP,#0x40+var_40]
ADD             R1, R0, R1,LSL#2
STRD            R0, R1, [R7,#4]
LDR             R1, [R7,#0xC]
LDR             R0, [SP,#0x40+var_30]
AND             R1, R1, #0xC0000000
ORR             R0, R0, R1
STR             R0, [R7,#0xC]
MOV             R0, #1
LDR             R1, [R7,#8]
CMP             R1, #0
STRNE           R11, [R1]
LDR             R1, [R7,#8]
ADD             R1, R1, #4
STR             R1, [R7,#8]
CMP             R0, #0
LDRNE           R0, [R9]
STRNE           R0, [R11,#0xC]
MOV             R0, #0x100
STR             R0, [SP,#0x40+var_40]
LDR             R0, [R5]
MOV             R3, #0x100
MOV             R2, #0x20000
LDR             R1, [R0,R6]
LDR             R0, [SP,#0x40+var_34]
BL              sub_234478
LDRB            R0, [R10]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_164A48
ADD             R0, R8, #0xCC
BL              sub_4B1570
ADD             R0, R8, #0x16800
ADD             R0, R0, #0x254
BL              sub_4B1570
LDR             R0, [R8]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E824
LDM             R0, {R1,R2}
ADD             SP, SP, #0x1C
MOV             R0, R8
POP             {R4-R11,LR}
BX              R12
