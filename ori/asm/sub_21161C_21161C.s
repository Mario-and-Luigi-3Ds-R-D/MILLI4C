PUSH            {R4-R10,LR}
MOV             R4, R1
MOV             R8, R0
ADD             R7, R1, #0x100
LDRB            R0, [R1,#0x1AA]
CMP             R0, #0
BEQ             loc_211640
CMP             R2, #0
BEQ             loc_21164C
LDRB            R0, [R7,#0xA7]
CMP             R0, #0
BEQ             loc_211654
MOV             R0, #3
POP             {R4-R10,PC}
LDRB            R0, [R4,#0x1A6]
MOV             R9, #0
CMP             R0, #5
MOVNE           R6, #0
MOVEQ           R6, #1
CMP             R4, #0
ADDNE           R1, R4, #4
MOVEQ           R1, #0
MOV             R0, R8
BL              sub_1F4544
LDRB            R1, [R4,#0x1A6]
MOV             R5, R0
STRB            R0, [R4,#0x1AB]
CMP             R1, #5
BNE             loc_211770
CMP             R5, #1
BEQ             loc_2116AC
CMP             R5, #2
BEQ             loc_2116D0
CMP             R5, #3
BEQ             loc_211778
B               loc_211770
STRB            R9, [R4,#0x1AC]
STRH            R9, [R7,#0xAE]
STRH            R9, [R7,#0xB2]
STR             R9, [R4,#4]
STRB            R9, [R4,#0x1AD]
STRH            R9, [R7,#0xB0]
STRH            R9, [R7,#0xB4]
STR             R9, [R4,#0x1B8]
B               loc_211778
LDR             R0, [R4,#0x1B8]
CMP             R0, #0
BEQ             loc_211778
MOV             R0, R4
BL              sub_4E18FC
LDRB            R1, [R4,#0x2A]
LDR             R0, [R4,#0x2C]
MOV             R2, R1,LSL#2
MOV             R1, #0
BL              sub_110BE4
LDRB            R1, [R4,#0x2B]
LDR             R0, [R4,#0x30]
MOV             R1, R1,LSL#28
MOV             R2, R1,LSR#26
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x18C
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x190
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
ADD             R0, R4, #0x194
MOV             R2, #8
MOV             R1, #0
BL              sub_110BE4
LDRB            R0, [R4,#0x1AD]
STRB            R0, [R4,#0x1AC]
LDRH            R0, [R7,#0xB0]
STRH            R0, [R7,#0xAE]
LDRH            R0, [R7,#0xB4]
STRH            R0, [R7,#0xB2]
LDR             R0, [R4,#0x1B8]
STR             R0, [R4,#4]
STRB            R9, [R4,#0x1AD]
STRH            R9, [R7,#0xB0]
STRH            R9, [R7,#0xB4]
STR             R9, [R4,#0x1B8]
CMP             R6, #0
BNE             loc_211668
MOV             R0, R5
POP             {R4-R10,PC}
