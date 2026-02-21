LDR             R0, =off_6D1648
PUSH            {R4-R6,LR}
MOV             R4, R1
MOV             R5, R2
LDR             R0, [R0]
MOV             R6, R3
ADD             R0, R0, #0x4000
LDRB            R0, [R0,#0x228]
CMP             R0, #3
BNE             loc_1790D0
ADR             R0, aIsend; "isEnd"
BL              sub_45F46C
BLX             R0
CMP             R0, #0
MOVNE           R0, #0
BNE             locret_1790E4
MOV             R2, R6
MOV             R1, R5
MOV             R0, R4
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R6,PC}
