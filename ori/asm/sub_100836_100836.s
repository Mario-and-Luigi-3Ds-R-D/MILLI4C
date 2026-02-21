PUSH            {R0-R2,R4-R7,LR}
MOVS            R6, R1
MOVS            R4, #0
MOVS            R1, #3
MOVS            R0, R4
SUB             SP, SP, #0x10
NOP
NOP
MOVS            R7, R0
CMP             R7, #0
BEQ             loc_100854
LDR             R1, [R7,#4]
LDR             R0, [R7]
STR             R1, [SP,#0x30+var_24]
STR             R0, [SP,#0x30+var_28]
MOV             R0, SP
LDRH            R1, [R6]
MOVS            R2, R7
BL              sub_2FF23E
MOVS            R5, R0
ADDS            R0, R0, #1
BEQ             loc_10087E
LDR             R0, [SP,#0x30+var_20]
CMP             R0, #0
BEQ             loc_100890
LDR             R0, [SP,#0x30+var_18]
ADDS            R1, R5, R4
CMP             R1, R0
BLS             loc_100884
CMP             R7, #0
BEQ             loc_10089E
LDR             R1, [SP,#0x30+var_24]
LDR             R0, [SP,#0x30+var_28]
STM             R7!, {R0,R1}
B               loc_10089E
MOVS            R0, R5
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
LDR             R0, [SP,#0x30+var_20]
MOV             R1, SP
MOVS            R2, R5
ADDS            R0, R0, R4
BLX             sub_2FF3D8
LDRH            R0, [R6]
ADDS            R4, R4, R5
CMP             R0, #0
BEQ             loc_10089C
ADDS            R6, R6, #2
B               loc_100848
SUBS            R4, R4, #1
MOVS            R0, R4
B               loc_100880
