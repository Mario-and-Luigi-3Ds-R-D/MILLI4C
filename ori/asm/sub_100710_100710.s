PUSH            {R0-R2,R4-R7,LR}
MOVS            R4, R0
MOVS            R5, R2
LDR             R1, =(unk_69B1B8 - 0x10071E)
SUB             SP, SP, #0x18
ADD             R1, PC; unk_69B1B8
MOVS            R7, #0
LDM             R1, {R0,R1}
MOVS            R6, R7
STR             R0, [SP,#0x38+var_38]
STR             R1, [SP,#0x38+var_34]
B               loc_10074C
LDR             R0, [SP,#0x38+var_1C]
MOV             R2, SP
LSLS            R1, R6, #1
LDRH            R1, [R0,R1]
ADD             R0, SP, #0x38+var_30
BL              sub_2FF23E
ADDS            R1, R0, #1
BEQ             loc_10074A
LDR             R1, [R4]
LSLS            R1, R1, #0x1A
BPL             loc_100748
LDR             R2, [R4,#0x1C]
ADDS            R1, R7, R0
CMP             R1, R2
BHI             loc_100766
ADDS            R7, R7, R0
ADDS            R6, R6, #1
LDR             R0, [R4]
LSLS            R0, R0, #0x1A
BPL             loc_100758
LDR             R0, [R4,#0x1C]
CMP             R0, R7
BLE             loc_100766
CMP             R6, R5
BLT             loc_100728
LDR             R0, [SP,#0x38+var_1C]
LSLS            R1, R6, #1
LDRH            R0, [R0,R1]
CMP             R0, #0
BNE             loc_100728
LDR             R0, [R4,#0x18]
SUBS            R0, R0, R7
STR             R0, [R4,#0x18]
MOVS            R0, R4
BL              sub_2FE050
LDR             R1, =(unk_69B1B8 - 0x10071E)
ADD             R1, PC
SUBS            R1, #0x5A ; 'Z'
LDM             R1, {R0,R1}
STR             R0, [SP,#0x38+var_38]
MOVS            R0, #0
STR             R1, [SP,#0x38+var_34]
B               loc_1007B0
LSLS            R1, R0, #1
MOV             R2, SP
LDR             R0, [SP,#0x38+var_1C]
LDRH            R1, [R0,R1]
ADD             R0, SP, #0x38+var_30
BL              sub_2FF23E
STR             R0, [SP,#0x38+var_24]
ADDS            R0, R0, #1
BEQ             loc_1007AC
MOVS            R5, #0
B               loc_1007A6
LDR             R2, [R4,#4]
ADD             R0, SP, #0x38+var_30
LDR             R1, [R4,#8]
LDRB            R0, [R0,R5]
BLX             R2
ADDS            R5, R5, #1
LDR             R0, [SP,#0x38+var_24]
CMP             R5, R0
BCC             loc_10079A
LDR             R0, [SP,#0x38+var_28]
ADDS            R0, R0, #1
CMP             R0, R6
STR             R0, [SP,#0x38+var_28]
BLT             loc_100782
LDR             R0, [R4,#0x20]
ADDS            R0, R0, R7
STR             R0, [R4,#0x20]
MOVS            R0, R4
BL              sub_2FE07C
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R7,PC}
