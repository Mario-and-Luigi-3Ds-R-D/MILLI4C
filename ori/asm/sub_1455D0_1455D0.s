PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R0, #0x20 ; ' '
BL              sub_145AC0
MOV             R4, R0
ADR             R1, aMsgstdbn; "MsgStdBn"
STR             R5, [R0]
BL              sub_147968
ADR             R1, aLbl1_0; "LBL1"
MOV             R0, R4
BL              sub_10D098
MOV             R1, R0
STR             R1, [R4,#0x10]
MOV             R0, R4
ADR             R1, aTxt2_0; "TXT2"
BL              sub_10D098
MOV             R1, R0
STR             R1, [R4,#0x14]
MOV             R0, R4
ADR             R1, aAtr1_0; "ATR1"
BL              sub_10D098
MOV             R1, R0
STR             R1, [R4,#0x18]
MOV             R0, R4
ADR             R1, aTsy1_0; "TSY1"
BL              sub_10D098
MOV             R1, R0
MOV             R0, R4
STR             R1, [R4,#0x1C]
POP             {R4-R6,PC}
