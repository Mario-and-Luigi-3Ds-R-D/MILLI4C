PUSH            {R4-R10,LR}
MOV             R7, #0
MOV             R4, R7
LDR             R6, =unk_6EA218
ADD             R8, R6, #0x38 ; '8'
SUB             R9, R8, #0x1C
B               loc_1047E4
CMP             R4, #5
MOVEQ           R4, #6
BEQ             loc_1047CC
CMP             R4, #4
MOVEQ           R4, #5
BEQ             loc_1047CC
LDR             R0, [R6,R4,LSL#2]
CMP             R0, #0
BEQ             loc_10482C
ADD             R0, R4, R4,LSL#1
ADD             R0, R8, R0,LSL#3
BL              sub_108160
ADD             R5, R6, R4,LSL#2
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_104814
BL              sub_110D10
STR             R7, [R5]
ADD             R5, R9, R4,LSL#2
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_10482C
BL              sub_110D10
STR             R7, [R5]
ADD             R4, R4, #1
CMP             R4, #7
BLT             loc_1047CC
LDR             R4, =dword_6CEDF4
LDR             R0, [R4]
CMP             R0, #0
BEQ             locret_104850
BL              sub_110D10
STR             R7, [R4]
POP             {R4-R10,PC}
