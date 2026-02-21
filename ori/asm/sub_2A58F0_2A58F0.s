PUSH            {R4,LR}
LDR             R1, [R0,#0x10C]
MOV             R4, R0
LDR             R0, =off_6B3F90
CMP             R1, #0
STR             R0, [R4]
ADDNE           R0, R4, #0x100
BLNE            sub_528B1C
LDR             R0, =off_6CE970
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xD600
LDRH            R1, [R0,#(word_19D6A2 - 0x19D600)]
SUB             R1, R1, #1
STRH            R1, [R0,#(word_19D6A2 - 0x19D600)]
LDR             R0, =off_6C0770
STR             R0, [R4,#0x1D8]!
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_2A594C
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R4,#4]
SUB             R0, R4, #0x20 ; ' '
NOP
POP             {R4,LR}
SUB             R0, R0, #0x1B8
B               sub_14CD84
