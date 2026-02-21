PUSH            {R4,LR}
LDRB            R1, [R0,#3]
MOV             R4, R0
LDR             R0, =0xCD78
CMP             R1, #0
LDREQ           R0, =0xDF0C
BEQ             loc_133070
CMP             R1, #1
LDREQ           R0, =0xD930
BEQ             loc_133070
CMP             R1, #2
BEQ             loc_133094
LDRB            R1, [R4,#2]
CMP             R1, #0
ADDEQ           R0, R0, #0x400
ADDEQ           R0, R0, #0x1DC
BEQ             locret_133090
CMP             R1, #1
ADDEQ           R0, R0, #0x2000
ADDEQ           R0, R0, #0x710
POP             {R4,PC}
NOP
BL              sub_13E45C
CMP             R0, #0
LDRNE           R0, =0x30BB0
LDREQ           R0, =0x37140
B               loc_133070
