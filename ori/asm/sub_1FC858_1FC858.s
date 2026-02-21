PUSH            {R4-R10,LR}
MOV             R4, R0
MOV             R5, R1
MOV             R3, #0x100
MOV             R2, #0
VPUSH           {D8}
SUB             SP, SP, #0x20
MOV             R1, #1
ADD             R0, R0, #4
BL              sub_14C430
MOV             R10, #1
STRB            R10, [R4,#0x3F8]
LDR             R7, =off_6CDC90
LDRB            R0, [R5,#0xC]
CMP             R0, #0
LDR             R0, [R7]
ADDEQ           R0, R0, #0x12400
ADDEQ           R0, R0, #0x2DC
ADDNE           R0, R0, #0x12400
ADDNE           R0, R0, #0x2D8
LDR             R0, [R0]
STR             R0, [R4]
LDR             R0, [R7]
BL              sub_5C88BC
STRB            R0, [R4,#0x424]
LDR             R0, [R7]
BL              sub_1FABEC
LDR             R0, [R7]
BL              sub_1FA0A4
ADD             R1, SP, #0x48+var_40
VSTM            R1, {S0-S2}
LDR             R0, [R7]
BL              sub_5C89C0
LDRB            R0, [R0,#4]
LDR             R5, =0x300C7
LDR             R8, =off_6CE970
CMP             R0, #0
BEQ             loc_1FCA88
LDR             R0, [R7]
BL              sub_5C89C0
LDR             R0, [R0,#0x14]
LDRB            R1, [R4,#0x424]
VLDR            S16, =0.0
VLDR            S17, =-1.0
LDR             R0, [R0,#0x3F4]
CMP             R1, #0
MOV             R9, #0x15
MOV             R6, #0
BNE             loc_1FC990
CMP             R0, #1
BEQ             loc_1FC990
LDR             R1, [R7]
ADD             R1, R1, #0x10000
ADD             R1, R1, #0x2700
LDR             R1, [R1]
LDR             R2, [R1,#0x1BC]
CMP             R2, R0
BCC             loc_1FCA30
BNE             loc_1FC988
LDR             R0, [R4,#0x420]
CMP             R0, #0
BEQ             loc_1FC958
BL              sub_533330
STR             R6, [R4,#0x420]
VSTR            S16, [SP,#0x48+var_34]
ADD             R0, SP, #0x48+var_30
ADD             R3, SP, #0x48+var_34
VSTM            R0, {S16-S17}
ADD             R2, R4, #4
LDR             R0, [R8]
MOV             R1, #0x75 ; 'u'
STR             R6, [SP,#0x48+var_44]
STR             R9, [SP,#0x48+var_48]
BL              sub_52C764
STR             R0, [R4,#0x420]
STRH            R6, [R0,#0xA]
LDR             R5, =0x300C9
B               loc_1FCA88
LDR             R0, [R4,#0x420]
LDR             R5, =0x300CA
CMP             R0, #0
BEQ             loc_1FC9A8
BL              sub_533330
STR             R6, [R4,#0x420]
LDR             R0, [R4,#0x418]
CMP             R0, #0
BEQ             loc_1FC9BC
BL              sub_533330
STR             R6, [R4,#0x418]
LDR             R0, [R4,#0x41C]
CMP             R0, #0
BEQ             loc_1FC9D0
BL              sub_533330
STR             R6, [R4,#0x41C]
VSTR            S16, [SP,#0x48+var_34]
ADD             R0, SP, #0x48+var_30
ADD             R3, SP, #0x48+var_34
VSTM            R0, {S16-S17}
ADD             R2, R4, #4
LDR             R0, [R8]
MOV             R1, #0x35 ; '5'
STR             R6, [SP,#0x48+var_44]
STR             R10, [SP,#0x48+var_48]
BL              sub_52C764
STR             R0, [R4,#0x418]
STRH            R6, [R0,#0xA]
LDR             R0, [R8]
ADD             R3, SP, #0x48+var_34
ADD             R2, R4, #4
MOV             R1, #0x37 ; '7'
STR             R6, [SP,#0x48+var_44]
STR             R9, [SP,#0x48+var_48]
BL              sub_52C764
VLDR            S0, =26.0
STR             R0, [R4,#0x41C]
STRH            R6, [R0,#0xA]
VSTR            S0, [SP,#0x48+var_3C]
B               loc_1FCA88
LDR             R1, [R1,#0x1B8]
CMP             R1, R0
BCC             loc_1FCA88
BNE             loc_1FCA84
LDR             R0, [R4,#0x420]
CMP             R0, #0
BEQ             loc_1FCA54
BL              sub_533330
STR             R6, [R4,#0x420]
VSTR            S16, [SP,#0x48+var_34]
ADD             R0, SP, #0x48+var_30
ADD             R3, SP, #0x48+var_34
VSTM            R0, {S16-S17}
ADD             R2, R4, #4
LDR             R0, [R8]
MOV             R1, #0x74 ; 't'
STR             R6, [SP,#0x48+var_44]
STR             R9, [SP,#0x48+var_48]
BL              sub_52C764
STR             R0, [R4,#0x420]
STRH            R6, [R0,#0xA]
LDR             R5, =0x300C8
LDR             R0, [R8]
LDR             R12, =0xFFE683CC
MOV             R3, #0
MOV             R2, R5
ADD             R1, R4, #4
SUB             R0, R0, R12
BL              sub_503720
ADD             R5, R4, #0x400
LDR             R3, [R4,#0x428]
LDR             R0, [R7]
ADD             R5, R5, #0x28 ; '('
ADD             R2, SP, #0x48+var_40
ADD             R1, R4, #0x28 ; '('
BL              sub_1FAB58
LDR             R0, [R5]
ADD             R2, SP, #0x48+var_40
MOV             R1, #0
ADD             R0, R0, #1
STR             R0, [R5]
LDR             R0, [R7]
ADD             R0, R0, #0x12400
VLDR            S0, [R0,#0x328]
ADD             R0, R4, #0x1E0
BL              sub_5A2074
LDRB            R0, [R4,#0xF7]
CMP             R0, #0
MOVEQ           R0, #1
MOVNE           R0, #0
STRB            R0, [R4,#0xF7]
ADD             SP, SP, #0x20 ; ' '
VPOP            {D8}
POP             {R4-R10,PC}
