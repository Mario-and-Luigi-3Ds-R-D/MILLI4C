CMP             R0, #0
PUSH            {R4,LR}
BEQ             loc_10E080
CMP             R0, #1
BEQ             loc_10E0E0
CMP             R0, #2
BNE             locret_10E0DC
POP             {R4,LR}
B               sub_11905C
LDR             R0, =byte_6D49F0
LDR             R1, [R0,#(dword_6D49F4 - 0x6D49F0)]
CMP             R1, #0
SUBGT           R1, R1, #1
STRGT           R1, [R0,#(dword_6D49F4 - 0x6D49F0)]
CMP             R1, #0
BNE             locret_10E0DC
LDRB            R1, [R0]
CMP             R1, #0
BEQ             locret_10E0DC
LDR             R4, =dword_6D4F28
MOV             R1, #0
STRB            R1, [R0]
LDR             R0, [R4]
CMP             R0, #0
BEQ             locret_10E0DC
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
NOP
BLNE            sub_128434
LDR             R0, =dword_69A354
LDR             R0, [R0]
STR             R0, [R4]
POP             {R4,PC}
POP             {R4,LR}
B               sub_118FF4
