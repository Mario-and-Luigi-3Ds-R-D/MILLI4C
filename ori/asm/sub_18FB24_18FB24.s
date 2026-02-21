NOP
PUSH            {R3-R11,LR}
MOV             R5, R0
MOV             R2, #0
MOV             R1, #0x400
BL              loc_2AFAA8
ADD             R6, R5, #0x15000
MOV             R4, #0
LDRB            R0, [R6]
CMP             R0, #0
ADDGT           R7, R5, #0x14C00
ADDGT           R7, R7, #0x3FC
BLE             loc_18FB8C
LDR             R2, [R5]
LDR             R1, [R7]
ADD             R0, R4, R4,LSL#1
ADD             R0, R0, R4,LSL#7
LDR             R3, [R2,#0x130]
ADD             R1, R1, R0,LSL#4
MOV             R2, #0
MOV             R0, R5
BLX             R3
LDRB            R0, [R6]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18FB58
LDR             R4, [R5,#0x168]!
LDR             R1, [R5,#4]
ADD             R5, R4, R1,LSL#2
CMP             R4, R5
BEQ             locret_18FCA4
SUB             R6, R5, R4
MOV             R1, R5
MOV             R2, R6,ASR#2
MOV             R0, R4
BL              sub_639B80
MOV             R0, #0x10
CMP             R0, R6,ASR#2
BGE             loc_18FCA8
ADD             R7, R4, #0x40 ; '@'
ADD             R12, R4, #4
CMP             R12, R7
MOV             R3, R4
BEQ             loc_18FC60
LDR             R6, [R12]
LDR             R2, [R3]
MOV             R0, R12
LDR             R1, [R6,#4]
LDR             R2, [R2,#4]
CMP             R1, R2
MOVCS           R1, R12
BCS             loc_18FC34
SUB             R2, R0, R3
ADD             R8, R0, #4
MOV             R1, R2,ASR#2
CMP             R1, #0
MOVGT           R1, #0
MOVGT           R2, R2,ASR#2
BLE             loc_18FC2C
ADD             R10, R0, R1,LSL#2
ADD             R9, R8, R1,LSL#2
VLDR            S0, [R10,#-4]
SUBS            R2, R2, #1
SUB             R1, R1, #1
VSTR            S0, [R9,#-4]
BNE             loc_18FC10
STR             R6, [R3]
B               loc_18FC54
LDR             R2, [R1,#-4]!
LDR             R8, [R6,#4]
LDR             R9, [R2,#4]
CMP             R8, R9
STRCC           R2, [R0]
MOVCC           R0, R1
BCC             loc_18FC34
STR             R6, [R0]
ADD             R12, R12, #4
CMP             R12, R7
BNE             loc_18FBD4
ADD             R1, R4, #0x40 ; '@'
CMP             R1, R5
BEQ             locret_18FCA4
LDR             R6, [R1]
MOV             R0, R1
MOV             R2, R1
LDR             R3, [R2,#-4]!
LDR             R12, [R6,#4]
LDR             R4, [R3,#4]
CMP             R12, R4
STRCC           R3, [R0]
MOVCC           R0, R2
BCC             loc_18FC78
ADD             R1, R1, #4
CMP             R1, R5
STR             R6, [R0]
BNE             loc_18FC6C
POP             {R3-R11,PC}
ADD             R6, R4, #4
CMP             R6, R5
BEQ             locret_18FCA4
LDR             R1, [R6]
LDR             R3, [R4]
MOV             R0, R6
LDR             R2, [R1,#4]
LDR             R3, [R3,#4]
CMP             R2, R3
MOVCS           R2, R6
BCS             loc_18FD14
SUB             R3, R0, R4
ADD             R7, R0, #4
MOV             R2, R3,ASR#2
CMP             R2, #0
MOVGT           R2, #0
MOVGT           R3, R3,ASR#2
BLE             loc_18FD0C
ADD             R8, R0, R2,LSL#2
ADD             R12, R7, R2,LSL#2
LDR             R8, [R8,#-4]
SUBS            R3, R3, #1
SUB             R2, R2, #1
STR             R8, [R12,#-4]
BNE             loc_18FCF0
STR             R1, [R4]
B               loc_18FD34
LDR             R3, [R2,#-4]!
LDR             R12, [R1,#4]
LDR             R7, [R3,#4]
CMP             R12, R7
STRCC           R3, [R0]
MOVCC           R0, R2
BCC             loc_18FD14
STR             R1, [R0]
ADD             R6, R6, #4
CMP             R6, R5
BNE             loc_18FCB4
POP             {R3-R11,PC}
