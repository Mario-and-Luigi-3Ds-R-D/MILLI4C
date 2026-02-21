PUSH            {R4,LR}
LDR             R2, =off_6B3F90
LDR             R1, [R0,#0x10C]
MOV             R4, R0
STR             R2, [R0]
CMP             R1, #0
ADDNE           R0, R4, #0x100
BLNE            sub_528B1C
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRH            R1, [R0,#(word_19D6A2 - 0x19D600)]
SUB             R1, R1, #1
STRH            R1, [R0,#(word_19D6A2 - 0x19D600)]
LDR             R1, =off_6C0770
ADD             R0, R4, #0x1D8
STR             R1, [R4,#0x1D8]
LDR             R1, [R4,#0x1DC]
CMP             R1, #0
BEQ             loc_2A58C4
MOV             R2, #0
STR             R2, [R1,#0x64]
STR             R2, [R0,#4]
ADD             R0, R4, #0x1B8
NOP
SUB             R0, R0, #0x1B8
NOP
BL              sub_14CD84
POP             {R4,LR}
NOP
B               sub_300FD4
