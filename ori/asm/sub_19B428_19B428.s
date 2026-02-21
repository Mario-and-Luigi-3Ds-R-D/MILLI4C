PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0x24
LDR             R0, [R0,#0x1B4]
TST             R0, #0x200
BNE             loc_19B51C
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x13C00
ADD             R5, R5, #0x108
MOV             R0, #0
LDRB            R2, [R5,#0x18]
MOV             R1, R0
CMP             R2, #0
LDRGT           R3, [R5]
MOVGT           R6, SP
BLE             loc_19B524
MOV             R7, #0x67 ; 'g'
AND             R12, R1, #0xFF
SMULBB          R12, R12, R7
ADD             R12, R3, R12,LSL#2
LDRB            R12, [R12,#0x17C]
CMP             R12, #4
BNE             loc_19B49C
ADD             R12, R0, #1
ADD             R0, R6, R0,LSL#1
STRH            R1, [R0]
UXTH            R0, R12
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_19B470
CMP             R0, #0
BEQ             loc_19B524
STRH            R0, [R4,#0xDC]
LDR             R1, =dword_6ED9B8
MOV             R0, R0,LSL#2
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_1143B4
STR             R0, [R4,#0xD4]
LDRH            R0, [R4,#0xDC]
CMP             R0, #0
MOV             R0, #0
BLE             loc_19B510
ADD             R1, R6, R0,LSL#1
MOV             R2, #0x67 ; 'g'
LDRH            R1, [R1]
LDR             R12, [R5]
LDR             R3, [R4,#0xD4]
AND             R1, R1, #0xFF
SMULBB          R1, R1, R2
ADD             R1, R12, R1,LSL#2
STR             R1, [R3,R0,LSL#2]
LDRH            R1, [R4,#0xDC]
ADD             R0, R0, #1
CMP             R1, R0
BGT             loc_19B4DC
LDR             R0, [R4,#0x1B4]
ORR             R0, R0, #0x200
STR             R0, [R4,#0x1B4]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
MOV             R0, #0
STRH            R0, [R4,#0xDC]
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
