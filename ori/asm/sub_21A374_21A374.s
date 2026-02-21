PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B2BE4
MOV             R5, #0
STR             R0, [R4]
LDR             R0, [R4,#0x148]
CMP             R0, #0
BEQ             loc_21A3A4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0x148]
LDR             R0, =off_6CE970
LDRH            R1, [R4,#0x10]
LDR             R0, [R0]
BL              sub_52B5C0
ADD             R0, R4, #0x168
NOP
NOP
STR             R5, [R0,#-0x50]
STR             R5, [R0,#-0x58]
SUB             R4, R0, #0x64 ; 'd'
STR             R5, [R0,#-0x54]
LDR             R0, [R0,#-0x5C]
STR             R5, [R4,#8]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R0, [R4,#8]!
CMP             R0, #0
BLNE            sub_2FF5D4
SUB             R0, R4, #0x10C
POP             {R4-R6,LR}
B               sub_14CD84
