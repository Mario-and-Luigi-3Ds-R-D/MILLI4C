PUSH            {R4-R10,LR}
MOV             R9, #0xFFFFFFFF
LDR             R6, =off_6D2440
LDR             R1, =0x8AC
STR             R0, [R6]
BL              sub_2FFE8C
MOV             R0, #0
BL              sub_11FCBC
LDR             R1, [R6]
STR             R0, [R1]
MOV             R0, #0
BL              sub_11FBF4
LDR             R1, [R6]
MOV             R4, #0
STR             R0, [R1,#4]
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R5, #0
BEQ             loc_115E58
MOV             R3, #0x9C
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R5, R0
BEQ             loc_115E58
MOV             R1, #0x9C
BL              sub_2FFE8C
STR             R4, [R5]
LDR             R1, [R6]
LDR             R7, =off_6D242C
STR             R5, [R1,#8]
LDR             R4, [R1]
CMP             R4, #0
BEQ             loc_115ED8
LDR             R0, [R1,#4]
CMP             R0, #0
CMPNE           R5, #0
MOVNE           R9, #0
BEQ             loc_115EA4
MOV             R0, #1
STR             R0, [R6,#(dword_6D2444 - 0x6D2440)]
LDR             R0, [R6]
MOV             R1, #0x9C
LDR             R0, [R0,#8]
BL              sub_2FFE8C
MOV             R0, R9
POP             {R4-R10,PC}
ADD             R0, R4, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R4,#0x2C]
ADD             R1, R4, #0x34 ; '4'
BL              sub_1271DC
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_115ED8
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R6]
LDR             R4, [R0,#4]
CMP             R4, #0
MOVNE           R5, #0
BEQ             loc_115F34
ADD             R0, R5, R5,LSL#4
ADD             R8, R4, R0,LSL#2
ADD             R0, R8, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R4,#0x2C]
ADD             R1, R8, #0x34 ; '4'
BL              sub_1271DC
ADD             R5, R5, #1
CMP             R5, #6
BLT             loc_115EEC
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_115F34
MOV             R3, R4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [R6]
LDR             R3, [R0,#8]
CMP             R3, #0
BEQ             loc_115F60
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_115E84
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R7]
CMP             R12, #0
BEQ             loc_115E84
LDR             R3, [R6]
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
B               loc_115E84
