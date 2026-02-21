PUSH            {R4-R7,LR}
ADD             R4, R0, #0x13C00
ADD             R4, R4, #0xFC
SUB             SP, SP, #0xC
LDR             R1, [R4]
MOV             R5, R0
ADD             R3, R1, #0xC
LDR             R2, [R1,#0x14]
LDM             R3, {R3,R12}
MOV             R2, R2,LSR#2
ADD             R12, R12, R1
STR             R2, [SP,#0x20+var_1C]
STR             R12, [SP,#0x20+var_20]
LDR             R12, [R0]
LDR             R2, [R1]
LDR             R6, [R1,#8]
LDR             R12, [R12,#0x100]
ADD             R2, R2, R1
ADD             R1, R1, R6
BLX             R12
LDR             R6, =off_6D1648
LDR             R0, [R6]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_18763C
LDR             R0, [R4]
LDR             R1, [R0,#0x40]
ADD             R1, R1, R0
MOV             R0, R5
BL              sub_2B32C8
MOV             R1, #0x80
ADD             R0, R5, #0xCC
BL              sub_59BE7C
ADD             R0, R5, #0xCC
NOP
BL              sub_4B1570
ADD             R0, R5, #0xCC
NOP
BL              sub_59C598
ADD             R7, R5, #0x14400
ADD             R7, R7, #8
LDR             R0, [R7]
STR             R5, [R0,#0xC]
LDR             R0, [R6]
LDR             R0, [R0,#0xC8]
TST             R0, #7
BEQ             loc_1876A0
LDR             R0, [R7]
ADD             R1, R5, #0x14000
ADD             R1, R1, #0x410
LDRD            R2, R3, [R1]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
B               loc_187718
LDR             R0, [R7]
LDR             R1, [R0]
LDR             R2, [R1,#0xC]
MOV             R1, #0
BLX             R2
ADD             R6, R5, #0x10000
MOV             R4, #0
ADD             R6, R6, #0x3D00
UXTH            R0, R4
BL              sub_2AF718
LDR             R1, [R0]
LDRH            R0, [R6,#4]
MOV             R1, R1,LSL#1
CMP             R0, R1,LSR#16
BNE             loc_18770C
LDR             R0, =dword_6E7CD0
MOV             R1, R4
BL              sub_5F10D0
CMP             R0, #0
NOP
BEQ             loc_18770C
LDR             R0, [R7]
UXTH            R1, R4
LDR             R2, [R0]
LDR             R3, [R2]
MOV             R2, #0
BLX             R3
ADD             R4, R4, #1
CMP             R4, #0x2B0
BLE             loc_1876C0
LDR             R0, [R5]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DAEC
LDM             R0, {R1,R2}
ADD             SP, SP, #0xC
MOV             R0, R5
POP             {R4-R7,LR}
BX              R12
