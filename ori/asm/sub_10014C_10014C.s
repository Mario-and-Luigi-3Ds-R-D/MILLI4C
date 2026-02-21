PUSH            {R0-R2,R4-R7,LR}
MOVS            R4, R0
MOVS            R7, R1
LDR             R1, =(unk_69B408 - 0x10015A)
SUB             SP, SP, #0x10
ADD             R1, PC; unk_69B408
MOVS            R6, #0
LDM             R1, {R0,R1}
MOVS            R5, R6
STR             R0, [SP,#0x30+var_30]
STR             R1, [SP,#0x30+var_2C]
B               loc_100176
LDRB            R1, [R7,R5]
MOV             R2, SP
ADD             R0, SP, #0x30+var_28
BL              sub_2FE010
CMP             R0, #1
BNE             loc_100174
ADDS            R6, R6, #1
ADDS            R5, R5, #1
LDR             R0, [R4]
LSLS            R0, R0, #0x1A
BPL             loc_100182
LDR             R0, [R4,#0x1C]
CMP             R0, R6
BLE             loc_10018E
LDR             R0, [SP,#0x30+var_18]
CMP             R5, R0
BLT             loc_100164
LDRB            R0, [R7,R5]
CMP             R0, #0
BNE             loc_100164
LDR             R0, [R4,#0x18]
SUBS            R0, R0, R6
STR             R0, [R4,#0x18]
MOVS            R0, R4
BL              sub_2FE050
LDR             R1, =(unk_69B408 - 0x10015A)
ADD             R1, PC; unk_69B44E
SUBS            R1, #0x46 ; 'F'
MOVS            R6, #0
LDM             R1, {R0,R1}
STR             R0, [SP,#0x30+var_30]
STR             R1, [SP,#0x30+var_2C]
B               loc_1001CA
LDRB            R1, [R7,R6]
MOV             R2, SP
ADD             R0, SP, #0x30+var_28
BL              sub_2FE010
CMP             R0, #1
BNE             loc_1001C8
MOV             R0, SP
LDR             R2, [R4,#4]
LDRH            R0, [R0,#0x30+var_28]
LDR             R1, [R4,#8]
BLX             R2
LDR             R0, [R4,#0x20]
ADDS            R0, R0, #1
STR             R0, [R4,#0x20]
ADDS            R6, R6, #1
CMP             R6, R5
BLT             loc_1001AA
MOVS            R0, R4
BL              sub_2FE07C
ADD             SP, SP, #0x1C
POP             {R4-R7,PC}
