PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
AND             R1, R1, #0xFF000
CMP             R1, #0xC0000
CMPNE           R1, #0xC1000
BEQ             loc_146484
MOV             R0, #0
STRB            R0, [R4]
STRH            R0, [R4,#2]
STRH            R0, [R4,#4]
STRH            R0, [R4,#6]
STRH            R0, [R4,#8]
STRH            R0, [R4,#0xA]
STRH            R0, [R4,#0xC]
B               loc_1464C8
NOP
BL              sub_145DC4
LDRB            R1, [R0,#0x1C]
STRB            R1, [R4]
LDRH            R1, [R0,#0x1E]
STRH            R1, [R4,#2]
LDRH            R1, [R0,#0x20]
STRH            R1, [R4,#4]
LDRH            R1, [R0,#0x22]
STRH            R1, [R4,#6]
LDRH            R1, [R0,#0x24]
STRH            R1, [R4,#8]
LDRH            R1, [R0,#0x26]
STRH            R1, [R4,#0xA]
LDRH            R1, [R0,#0x28]
STRH            R1, [R4,#0xC]
LDRH            R0, [R0,#0x2A]
STRH            R0, [R4,#0xE]
MOV             R0, R4
POP             {R4,PC}
