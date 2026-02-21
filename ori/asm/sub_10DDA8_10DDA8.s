PUSH            {R4-R8,LR}
MOV             R4, R0
BL              sub_118E60
MOV             R0, R4
BL              sub_118DB0
MOV             R2, #1
MOV             R1, #0
MOV             R0, R4
BL              sub_121170
LDR             R0, [R4,#0x80]
LDR             R1, =0x304F5243
MOV             R5, #0
MOV             R6, R5
CMP             R0, R1
MOV             R8, R5
BNE             loc_10DE48
ADD             R2, R4, #0xC8
MOV             R1, #0
LDM             R2, {R2,R12}
CMP             R12, #0
BLE             loc_10DE48
ADD             R0, R1, R1,LSL#1
ADD             R0, R2, R0,LSL#2
LDRB            R3, [R0,#8]
CMP             R3, #2
BEQ             loc_10DE20
ADD             R1, R1, #1
CMP             R12, R1
BGT             loc_10DDFC
B               loc_10DE48
LDR             R5, [R0]
CMP             R5, #0
BEQ             loc_10DE48
MOV             R0, R4
BL              sub_118E34
LDR             R2, [R4,#0xB8]
SUB             R1, R2, R4
ADD             R6, R1, R0
CMP             R6, R5
LDRNE           R8, [R4,#0xBC]
MOV             R0, R4
BL              sub_118E34
MOV             R3, R0
LDR             R0, =dword_6982B0
MOV             R2, #0
MOV             R1, R4
LDR             R0, [R0]
BL              sub_118D6C
MOV             R7, R0
ANDS            R0, R0, #0x80000000
BMI             loc_10DEE4
CMP             R8, #0
BEQ             loc_10DE8C
MOV             R2, R8
MOV             R1, R5
MOV             R0, R6
BL              sub_2FF3D8
MOV             R0, R4
BL              sub_118E34
LDR             R2, [R0,#0xCC]
MOV             R1, #0
CMP             R2, #0
BLE             loc_10DEE4
LDR             R3, [R0,#0xC8]
ADD             R12, R1, R1,LSL#1
ADD             R2, R0, R12,LSL#2
ADD             R2, R2, R3
LDRB            R3, [R2,#8]
CMP             R3, #2
LDREQ           R3, [R0,#0xB8]
BEQ             loc_10DED0
CMP             R3, #3
MOVEQ           R3, #0
BNE             loc_10DED4
STR             R3, [R2]
LDR             R2, [R0,#0xCC]
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_10DEA4
MOV             R0, R7
POP             {R4-R8,PC}
