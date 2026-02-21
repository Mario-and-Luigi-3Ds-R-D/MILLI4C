PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xA8]
CMP             R0, #0
BEQ             loc_1E86BC
CMP             R0, #1
BEQ             loc_1E8678
CMP             R0, #2
BEQ             loc_1E86B0
CMP             R0, #3
BNE             loc_1E86BC
B               loc_1E86C8
ADD             R0, R4, #4
BL              sub_1DFF00
CMP             R0, #0
ADD             R0, R4, #4
BEQ             loc_1E86A8
BL              sub_1DFDA8
ADD             R0, R4, #4
NOP
BL              sub_10D33C
NOP
NOP
B               loc_1E86BC
NOP
BL              sub_10D33C
MOV             R1, #1
ADD             R0, R4, #4
BL              sub_2A878C
MOV             R0, #0
STRB            R0, [R4,#0xA8]
POP             {R4,PC}
ADR             R0, aTermfro; "termFRO"
BL              sub_45F46C
NOP
NOP
BLX             R0
B               loc_1E86B0
