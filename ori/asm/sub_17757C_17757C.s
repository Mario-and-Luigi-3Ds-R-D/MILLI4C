PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R3, #0x800000
MOV             R2, #0
LDRB            R5, [R0,#0x460]
MOV             R0, #0x4C ; 'L'
LDR             R1, =dword_6ED9B8
SMULBB          R0, R5, R0
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_1775B8
LDR             R1, =sub_3DF464
MOV             R3, R5
MOV             R2, #0x4C ; 'L'
BLX             sub_1002F4
STR             R0, [R4,#0x468]
LDRB            R0, [R4,#0x460]
MOV             R3, #0
CMP             R0, #0
BLE             locret_177778
MOV             R7, #0x184
MOV             R6, #0xFFFFFFFF
MOV             R5, #0x1A4
LDR             R0, [R4,#0x458]
LDR             R1, [R0,R3,LSL#2]
CMP             R1, #0
LDRNE           R0, [R1,#4]
CMPNE           R0, #0
BEQ             loc_177768
LDR             R0, [R4,#0x468]
ADD             R12, R3, R3,LSL#1
ADD             R12, R12, R3,LSL#4
LDRH            R2, [R1]
ADD             R0, R0, R12,LSL#2
STRH            R2, [R0]
LDR             R12, [R1,#4]
LDR             R8, [R0,#4]
LDRH            R2, [R12,#0xE]
BIC             R8, R8, #1
AND             R2, R2, #1
ORR             R2, R2, R8
STR             R2, [R0,#4]
LDRH            R8, [R12,#0xE]
BIC             R9, R2, #2
AND             R8, R8, #2
MOV             R8, R8,LSR#1
ORR             R2, R9, R8,LSL#1
STR             R2, [R0,#4]
LDRH            R8, [R12,#0xE]
BIC             R9, R2, #4
AND             R8, R8, #4
MOV             R8, R8,LSR#2
ORR             R2, R9, R8,LSL#2
STR             R2, [R0,#4]
LDRH            R2, [R12,#0xA]
ADD             R8, R0, #0x24 ; '$'
STRH            R2, [R0,#8]
LDRH            R2, [R12,#8]
STRH            R2, [R0,#0xA]
LDR             R2, [R12,#4]
STR             R2, [R0,#0xC]
LDR             R2, [R1,#4]
LDRB            R2, [R2,#0x1CD]
STRB            R2, [R0,#0x20]
LDR             R12, [R1,#4]
CMP             R2, #1
ADD             R12, R12, #0x1D0
VLDM            R12, {S0-S2}
VSTM            R8, {S0-S2}
ADD             R8, R0, #0x30 ; '0'
LDR             R12, [R1,#4]
ADD             R12, R12, #0x1DC
VLDM            R12, {S0-S2}
VSTM            R8, {S0-S2}
ADD             R8, R0, #0x3C ; '<'
LDR             R12, [R1,#4]
ADD             R12, R12, #0x1E8
VLDM            R12, {S0-S2}
VSTM            R8, {S0-S2}
BEQ             loc_1776C8
CMP             R2, #3
BEQ             loc_1776EC
B               loc_177704
LDR             R2, [R1,#4]
LDR             R2, [R2,#0x1F4]
LDRB            R2, [R2,#0xDC]
STRB            R2, [R0,#0x48]
LDR             R2, [R1,#4]
ADD             R2, R2, #0x100
LDRH            R2, [R2,#0xF8]
STRH            R2, [R0,#0x4A]
B               loc_177704
LDRB            R2, [R1,#8]
STRB            R2, [R0,#0x48]
LDRB            R2, [R1,#9]
STRB            R2, [R0,#0x49]
LDRB            R2, [R1,#0xA]
STRB            R2, [R0,#0x4A]
MOV             R2, #0
LDR             R12, [R1,#4]
ADD             R8, R7, R2,LSL#2
LDR             R12, [R12,R8]
CMP             R12, #0
LDRBNE          R8, [R12,#0xDC]
ADD             R12, R0, R2
ADD             R2, R2, #1
STRBEQ          R6, [R12,#0x10]
STRBNE          R8, [R12,#0x10]
CMP             R2, #8
BLT             loc_177708
MOV             R2, #0
LDR             R12, [R1,#4]
ADD             R8, R5, R2,LSL#2
LDR             R12, [R12,R8]
CMP             R12, #0
ADDEQ           R12, R0, R2
ADDNE           R8, R0, R2
STRBEQ          R6, [R12,#0x18]
LDRBNE          R12, [R12,#0xDC]
ADD             R2, R2, #1
STRBNE          R12, [R8,#0x18]
CMP             R2, #8
BLT             loc_177738
LDRB            R0, [R4,#0x460]
ADD             R3, R3, #1
CMP             R3, R0
BLT             loc_1775D8
POP             {R4-R10,PC}
