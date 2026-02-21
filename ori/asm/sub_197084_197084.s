PUSH            {R4-R7,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
LDR             R1, [R0,#0xE8]
MOV             R0, R4
BLX             R1
LDRH            R0, [R4,#0xE2]
TST             R0, #1
BEQ             loc_1971D4
ADD             R0, SP, #0x38+var_28
VLDR            S0, =1.0
VLDR            S1, =0.0
VSTR            S0, [SP,#0x38+var_30]
VSTR            S0, [SP,#0x38+var_2C]
VSTM            R0, {S0-S1}
LDR             R0, [R4]
LDR             R1, [R0,#0xB0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S16, S0
LDR             R1, [R0,#0xAC]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0x254]
ADD             R5, R4, #0x220
VMOV.F32        S1, S16
ADD             R1, SP, #0x38+var_30
LDRB            R0, [R0,R5]
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x234
BL              sub_5A0868
LDR             R0, [R4]
LDR             R1, [R0,#0xB0]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S16, S0
LDR             R1, [R0,#0xA8]
MOV             R0, R4
BLX             R1
LDRB            R0, [R4,#0x254]
MOV             R6, #1
VMOV.F32        S1, S16
BIC             R0, R6, R0
ADD             R0, R0, R4
ADD             R1, SP, #0x38+var_30
LDRB            R0, [R0,#0x220]
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x234
BL              sub_5A0868
MOV             R0, R4
BL              sub_4857C0
LDRH            R0, [R4,#0xE2]
TST             R0, #1
BNE             loc_1971D4
LDRB            R0, [R4,#0x254]
LDRB            R0, [R0,R5]
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x234
BL              sub_5A0DA0
LDRB            R0, [R4,#0x254]
BIC             R0, R6, R0
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
LDR             R1, [R0]
LDR             R2, [R1,#0x144]
MOV             R1, #0
BLX             R2
LDRB            R0, [R4,#0x254]
LDR             R7, =off_6D1648
MOV             R6, #0
LDRB            R0, [R0,R5]
CMP             R0, #1
BEQ             loc_1971E0
CMP             R0, #3
BEQ             loc_197270
CMP             R0, #2
BNE             loc_1971D4
MOV             R1, #0
MOV             R0, R4
BL              sub_196A40
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
LDRB            R1, [R4,#0x3CA]
LDR             R0, [R4,#0x214]
BL              sub_4BD5C4
STR             R0, [SP,#0x38+var_34]
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R5, [R0,#0x218]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R5]
MOV             R3, #1
ADD             R1, SP, #0x38+var_34
LDR             R12, [R0,#0x34]
MOV             R0, R5
BLX             R12
LDRB            R0, [R4,#0x254]
MOV             R1, #0
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0x100
BL              sub_485780
LDRB            R0, [R4,#0x254]
MOV             R1, #0x200
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0x100
BL              sub_123CE8
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0x100
STRH            R6, [R0,#6]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
LDRB            R1, [R4,#0x3C9]
LDR             R0, [R4,#0x214]
BL              sub_4BD5C4
STR             R0, [SP,#0x38+var_34]
LDRB            R0, [R4,#0x254]
ADD             R0, R4, R0,LSL#2
LDR             R5, [R0,#0x218]
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R5]
MOV             R3, #1
ADD             R1, SP, #0x38+var_34
LDR             R12, [R0,#0x34]
MOV             R0, R5
BLX             R12
LDRB            R0, [R4,#0x254]
MOV             R1, #0
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0x100
BL              sub_485780
LDRB            R0, [R4,#0x254]
MOV             R1, #0x200
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0x100
BL              sub_123CE8
LDRB            R0, [R4,#0x254]
MOV             R1, #1
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x218]
ADD             R0, R0, #0x100
STRH            R6, [R0,#6]
MOV             R0, R4
BL              sub_196A40
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R7,PC}
