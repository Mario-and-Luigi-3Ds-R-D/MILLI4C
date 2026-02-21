PUSH            {R4-R6,LR}
LDR             R4, =(unk_6C75F8 - 0x1009B4)
ADD             R4, PC; unk_6C75F8
LDR             R5, =0x5C776C
ADD             R5, PC
B               loc_1009C0
LDR             R0, [R4]
ADDS            R0, R0, R4
BLX             R0
ADDS            R4, R4, #4
CMP             R4, R5
BNE             loc_1009B8
POP             {R4-R6,PC}
