LDR             R0, =unk_711F2C
PUSH            {R4-R6,LR}
LDR             R0, [R0,#(dword_711F78 - 0x711F2C)]
LSRS            R4, R0, #1
LDR             R0, =unk_711E8C
LSLS            R4, R4, #1
BL              sub_300020
LDR             R0, =unk_711EDC
BL              sub_300020
LDR             R0, =unk_711F2C
BL              sub_300020
B               loc_1013D2
LDR             R0, [R4,#0x4C]
LSRS            R5, R0, #1
MOVS            R0, R4
LSLS            R5, R5, #1
BL              sub_300020
MOVS            R0, R4
BLX             sub_30006C
MOVS            R4, R5
CMP             R4, #0
BNE             loc_1013BE
POP             {R4-R6,PC}
