PUSH            {R4-R10,LR}
MOV             R5, R0
SUB             SP, SP, #0x40
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R7, R0, #0x13C00
ADD             R7, R7, #0x108
MOV             R1, #0
LDRB            R2, [R7,#0x18]
MOV             R6, R1
MOV             R9, SP
CMP             R2, #0
LDRGT           R12, [R7]
ADD             R8, SP, #0x60+var_40
MOV             R0, R1
MOVGT           R3, #0x17C
BLE             loc_1975E8
MOV             R10, #0x67 ; 'g'
AND             R4, R0, #0xFF
SMULBB          R4, R4, R10
ADD             R4, R3, R4,LSL#2
LDRB            R4, [R12,R4]
CMP             R4, #6
CMPNE           R4, #8
BEQ             loc_1975B8
CMP             R4, #5
CMPNE           R4, #7
BEQ             loc_1975CC
B               loc_1975DC
ADD             R4, R6, #1
ADD             R6, R8, R6,LSL#1
STRH            R0, [R6]
UXTH            R6, R4
B               loc_1975DC
ADD             R4, R1, #1
ADD             R1, R9, R1,LSL#1
STRH            R0, [R1]
UXTH            R1, R4
ADD             R0, R0, #1
CMP             R0, R2
BLT             loc_197588
ANDS            R4, R1, #0xFF
MOV             R10, #8
STRB            R4, [R5,#0x1A8]
BEQ             loc_197680
MOV             R3, #0
LDR             R1, =dword_6ED9B8
ADD             R0, R10, R4,LSL#3
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_197634
ADD             R0, R0, #8
LDR             R1, =sub_29AD68
STR             R4, [R0,#-4]
MOV             R3, R4
MOV             R2, #8
STR             R10, [R0,#-8]
BLX             sub_1002F4
STR             R0, [R5,#0x1A0]
LDRB            R0, [R5,#0x1A8]
MOV             R4, #0
CMP             R0, #0
BLE             loc_197680
ADD             R0, R9, R4,LSL#1
MOV             R1, #0x67 ; 'g'
LDRH            R0, [R0]
LDR             R2, [R7]
AND             R0, R0, #0xFF
SMULBB          R0, R0, R1
ADD             R1, R2, R0,LSL#2
LDR             R0, [R5,#0x1A0]
ADD             R0, R0, R4,LSL#3
BL              sub_29A868
LDRB            R0, [R5,#0x1A8]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_197648
ANDS            R4, R6, #0xFF
STRB            R4, [R5,#0x1A9]
BEQ             loc_197714
MOV             R3, #0
LDR             R1, =dword_6ED9B8
ADD             R0, R10, R4,LSL#3
MOV             R2, R3
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_1976C8
ADD             R0, R0, #8
LDR             R1, =sub_29AD68
STR             R4, [R0,#-4]
MOV             R3, R4
MOV             R2, #8
STR             R10, [R0,#-8]
BLX             sub_1002F4
STR             R0, [R5,#0x1A4]
LDRB            R0, [R5,#0x1A9]
MOV             R4, #0
CMP             R0, #0
BLE             loc_197714
ADD             R0, R8, R4,LSL#1
MOV             R1, #0x67 ; 'g'
LDRH            R0, [R0]
LDR             R2, [R7]
AND             R0, R0, #0xFF
SMULBB          R0, R0, R1
ADD             R1, R2, R0,LSL#2
LDR             R0, [R5,#0x1A4]
ADD             R0, R0, R4,LSL#3
BL              sub_29A868
LDRB            R0, [R5,#0x1A9]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1976DC
ADD             SP, SP, #0x40 ; '@'
POP             {R4-R10,PC}
