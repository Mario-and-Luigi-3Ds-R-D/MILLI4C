PUSH            {R4,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xA8]
CMP             R0, #0
BEQ             locret_1E8740
CMP             R0, #1
BEQ             loc_1E871C
CMP             R0, #3
BNE             locret_1E8740
ADR             R0, aUpdatefro; "updateFRO"
BL              sub_45F46C
POP             {R4,LR}
BX              R0
ADD             R0, R4, #4
BL              sub_1DFF00
CMP             R0, #0
NOP
BNE             locret_1E8740
ADD             R0, R4, #4
BL              sub_10D33C
MOV             R0, #2
STRB            R0, [R4,#0xA8]
POP             {R4,PC}
