PUSH            {R4,LR}
MOV             R2, R0
ADD             R4, R0, #8
STR             R1, [R0,#8]
MOV             R0, #0
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_1070CC
ADD             R0, R0, #4
LDRB            R3, [R1,R0]
ADD             R0, R0, #2
STRB            R3, [R4,#8]
LDRH            R3, [R1,R0]
ADD             R0, R0, #2
ADD             R0, R0, #2
CMP             R3, #0
STRH            R3, [R4,#0xA]
LDRNE           R2, [R2,#0x28]
MOVEQ           R2, #0
STR             R2, [R4,#0xC]
LDR             R0, [R1,R0]
STR             R0, [R4,#4]
MOV             R0, R4
BL              sub_10D100
ADR             R1, aLbl1; "LBL1"
MOV             R0, R4
BL              sub_10D098
STR             R0, [R4,#0x10]
ADR             R1, aTxt2; "TXT2"
MOV             R0, R4
BL              sub_10D098
STR             R0, [R4,#0x14]
ADR             R1, aAtr1; "ATR1"
MOV             R0, R4
BL              sub_10D098
STR             R0, [R4,#0x18]
ADR             R1, aTsy1; "TSY1"
MOV             R0, R4
BL              sub_10D098
STR             R0, [R4,#0x1C]
POP             {R4,PC}
