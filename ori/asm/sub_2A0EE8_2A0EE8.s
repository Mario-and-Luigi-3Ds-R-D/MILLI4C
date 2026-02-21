PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B3E10
STR             R0, [R4]
LDRB            R1, [R4,#0x84]
MOV             R0, #0
CMP             R1, #0
BLE             loc_2A0F14
ADD             R0, R0, #1
CMP             R1, R0
BGT             loc_2A0F08
MOV             R1, #0
STR             R1, [R4,#0x88]
LDR             R1, =nullsub_1041
MOV             R3, #8
MOV             R2, #0x10
ADD             R0, R4, #4
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,PC}
