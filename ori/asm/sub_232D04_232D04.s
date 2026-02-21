LDR             R1, [R0,#8]
CMP             R1, #0
BEQ             locret_232DB4
LDRH            R2, [R1,#0xC]
LDRB            R3, [R1,R2]
ADD             R2, R1, #1
STRB            R3, [R0,#0x34]
LDRH            R3, [R1,#0xC]
ADD             R3, R3, R2
STR             R3, [R0,#0x2C]
LDRH            R3, [R1,#0xE]
LDRB            R3, [R1,R3]
STRB            R3, [R0,#0x35]
LDRH            R3, [R1,#0xE]
ADD             R3, R3, R2
STR             R3, [R0,#0x30]
LDRH            R3, [R1]
ADD             R3, R3, R2
STR             R3, [R0,#0x14]
LDRH            R3, [R1,#2]
ADD             R3, R3, R2
STR             R3, [R0,#0x18]
LDRH            R3, [R1,#4]
ADD             R2, R2, R3
STR             R2, [R0,#0x1C]
LDRH            R2, [R1,#6]
LDRB            R3, [R2,R1]!
CMP             R3, #0
ADDNE           R2, R2, #1
MOVEQ           R2, #0
STR             R2, [R0,#0x20]
LDRH            R2, [R1,#8]
LDRB            R3, [R2,R1]!
CMP             R3, #0
ADDNE           R2, R2, #1
MOVEQ           R2, #0
STR             R2, [R0,#0x24]
LDRH            R2, [R1,#0xA]
ADD             R1, R1, R2
LDRB            R2, [R1]
CMP             R2, #0
ADDNE           R1, R1, #1
MOVEQ           R1, #0
STR             R1, [R0,#0x28]
BX              LR
