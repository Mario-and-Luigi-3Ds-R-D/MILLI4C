PUSH            {R4-R6,LR}
MOV             R5, R1
LDR             R4, [R0]
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0x1C
MOV             R6, R0
BL              sub_4DC824
CMP             R5, #0
BEQ             loc_1CC910
MOV             R1, #5
MOV             R0, R6
BL              sub_4DC7B4
B               loc_1CC91C
MOV             R1, #2
MOV             R0, R6
BL              sub_4DC7B4
ADD             R0, R4, #0x33400
ADD             R0, R0, #0x2A4
BL              sub_4D75C8
LDR             R1, =off_63D8F0
LDRD            R0, R1, [R1,#(off_63D910 - 0x63D8F0)]
STRD            R0, R1, [R4,#0xF8]
POP             {R4-R6,PC}
