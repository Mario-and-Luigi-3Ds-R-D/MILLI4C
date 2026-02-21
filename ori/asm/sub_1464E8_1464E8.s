PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R5, #0
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R6, R1, R0
CMP             R6, #0
MOVGT           R7, #0
BLE             locret_1465CC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_146560
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
B               loc_146578
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R5, R2
ADD             R0, R0, R1,LSL#2
LDR             R0, [R0,#0x10]
ADD             R5, R5, #1
LDR             R1, [R0,#0x740]
CMP             R1, R4
STREQ           R7, [R0,#0x740]
LDR             R1, [R0,#0x744]
CMP             R1, R4
STREQ           R7, [R0,#0x744]
LDR             R1, [R0,#0x748]
CMP             R1, R4
STREQ           R7, [R0,#0x748]
LDR             R1, [R0,#0x74C]
CMP             R1, R4
STREQ           R7, [R0,#0x74C]
LDR             R1, [R0,#0x750]
CMP             R1, R4
STREQ           R7, [R0,#0x750]
LDR             R1, [R0,#0x754]
CMP             R1, R4
STREQ           R7, [R0,#0x754]
CMP             R5, R6
BLT             loc_146528
POP             {R4-R8,PC}
