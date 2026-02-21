LDR             R2, [R0,#0x14]
CMN             R2, #1
BEQ             loc_145508
LDR             R3, [R0,#0xC]
LDR             R2, [R3,R2,LSL#4]
LDR             R3, [R2]
CMP             R3, R1
BLE             loc_145508
MOV             R3, #4
ADD             R1, R3, R1,LSL#2
LDR             R1, [R2,R1]
ADDS            R1, R1, R2
BEQ             loc_145508
LDRB            R0, [R0,#8]
CMP             R0, #0
MOVEQ           R2, R1
BEQ             loc_145510
CMP             R0, #1
MOVEQ           R2, R1
BEQ             loc_145544
CMP             R0, #2
MOVEQ           R2, R1
BEQ             loc_145578
MOV             R0, #0xFFFFFFFF
BX              LR
LDRB            R0, [R1]
CMP             R0, #0
BEQ             loc_1455AC
CMP             R0, #0xE
BEQ             loc_145534
CMP             R0, #0xF
ADDNE           R1, R1, #1
ADDEQ           R1, R1, #6
B               loc_145510
LDRH            R0, [R1,#5]
ADD             R0, R0, R1
ADD             R1, R0, #7
B               loc_145510
LDRH            R0, [R1]
CMP             R0, #0
BEQ             loc_1455AC
CMP             R0, #0xE
BEQ             loc_145568
CMP             R0, #0xF
ADDNE           R1, R1, #2
ADDEQ           R1, R1, #6
B               loc_145544
LDRH            R0, [R1,#6]
ADD             R0, R0, R1
ADD             R1, R0, #8
B               loc_145544
LDR             R0, [R1]
CMP             R0, #0
BEQ             loc_1455AC
CMP             R0, #0xE
BEQ             loc_14559C
CMP             R0, #0xF
ADDNE           R1, R1, #4
ADDEQ           R1, R1, #6
B               loc_145578
LDRH            R0, [R1,#8]
ADD             R0, R0, R1
ADD             R1, R0, #0xA
B               loc_145578
SUB             R0, R1, R2
BX              LR
