PUSH            {R4-R9,LR}
SUB             SP, SP, #0x24
MOV             R5, #1
BL              sub_123590
MOV             R7, R0
BL              sub_1230EC
LDR             R4, =byte_6D2498
CMP             R0, #0
BEQ             loc_11A1F0
LDR             R1, [R4,#(off_6D24C8 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D2508 - 0x6D2498)]
BLXNE           R1
BL              sub_1230FC
NOP
BL              sub_10F80C
CMP             R0, #0
NOP
BEQ             loc_11A218
LDR             R1, [R4,#(off_6D24D4 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D2514 - 0x6D2498)]
BLXNE           R1
B               loc_11A650
CMP             R7, #1
MOV             R6, #0
BEQ             loc_11A268
CMP             R7, #2
BEQ             loc_11A268
BL              sub_1234B8
CMP             R0, #0
NOP
BEQ             loc_11A4A8
BL              sub_1234B8
CMP             R0, #1
MOVEQ           R5, #0
BEQ             loc_11A2EC
CMP             R0, #2
BEQ             loc_11A3B8
CMP             R0, #3
BEQ             loc_11A44C
CMP             R0, #4
BEQ             loc_11A37C
B               loc_11A494
NOP
BL              sub_11B5E0
MOV             R5, R0
NOP
BL              sub_123590
MOV             R7, R0
NOP
BL              sub_123614
LDR             R3, [R4,#(off_6D24A4 - 0x6D2498)]
CMP             R3, #0
BEQ             loc_11A2AC
LDR             R0, [R4,#(dword_6D24E4 - 0x6D2498)]
MOV             R2, R7
MOV             R1, R5
BLX             R3
CMP             R0, #0
BEQ             loc_11A2E4
CMP             R5, #0
BEQ             loc_11A2E4
BL              sub_11A178
CMP             R0, #0
NOP
BNE             loc_11A2E4
MOV             R0, R7
BL              sub_11A188
NOP
NOP
BL              sub_11A178
CMP             R0, #1
NOP
BLNE            sub_11A178
MOV             R5, R6
B               loc_11A650
NOP
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_11A344
BL              sub_10F3D8
CMP             R0, #0
NOP
BNE             loc_11A368
LDR             R1, [R4,#(off_6D24B8 - 0x6D2498)]
CMP             R1, #0
BEQ             loc_11A328
LDR             R0, [R4,#(dword_6D24F8 - 0x6D2498)]
BLX             R1
MOV             R5, R0
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_11A344
BL              sub_11B5E0
CMP             R0, #0
MOVNE           R5, #0
BNE             loc_11A368
CMP             R5, #0
BEQ             loc_11A368
CMP             R5, #1
MOVEQ           R0, #2
BEQ             loc_11A36C
CMP             R5, #2
MOVEQ           R0, #1
BEQ             loc_11A490
B               loc_11A494
MOV             R0, #3
BL              sub_11A198
MOV             R0, R5
BL              sub_11B290
B               loc_11A494
LDR             R0, [R4,#(off_6D24BC - 0x6D2498)]
CMP             R0, #0
BEQ             loc_11A494
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_11A494
BL              sub_10F3D8
CMP             R0, #0
NOP
BNE             loc_11A494
LDR             R1, [R4,#(off_6D24BC - 0x6D2498)]!
LDR             R0, [R4,#(dword_6D24FC - 0x6D24BC)]
BLX             R1
B               loc_11A494
MOV             R0, #4
BL              sub_11A198
LDR             R0, [R4,#(off_6D24C0 - 0x6D2498)]
CMP             R0, #0
BEQ             loc_11A3F8
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_11A3F8
BL              sub_10F3D8
CMP             R0, #0
NOP
BNE             loc_11A3F8
LDR             R1, [R4,#(off_6D24C0 - 0x6D2498)]
LDR             R0, [R4,#(dword_6D2500 - 0x6D2498)]
BLX             R1
LDR             R5, =dword_700900
MOV             R0, R5
BL              sub_13273C
LDR             R4, [R4,#(dword_6D249C - 0x6D2498)]
CMP             R4, #0
BEQ             loc_11A42C
LDR             R1, [R4,#8]
CMP             R1, #0
LDRNE           R0, [R4,#0xC]
BLXNE           R1
LDR             R4, [R4,#4]
CMP             R4, #0
BNE             loc_11A410
MOV             R0, R5
BL              sub_1327BC
NOP
NOP
BL              sub_123628
NOP
NOP
B               loc_11A494
NOP
BL              sub_1214C0
LDR             R0, [R4,#(off_6D24C4 - 0x6D2498)]
CMP             R0, #0
BEQ             loc_11A48C
BL              sub_10F80C
CMP             R0, #0
NOP
BNE             loc_11A48C
BL              sub_10F3D8
CMP             R0, #0
NOP
BNE             loc_11A48C
LDR             R1, [R4,#(off_6D24C4 - 0x6D2498)]!
LDR             R0, [R4,#(dword_6D2504 - 0x6D24C4)]
BLX             R1
MOV             R0, #5
BL              sub_11A198
NOP
BL              sub_1234E8
MOV             R5, #0
NOP
B               loc_11A650
NOP
BL              sub_123124
CMP             R0, #0
NOP
BEQ             loc_11A4DC
LDR             R1, [R4,#(off_6D24CC - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D250C - 0x6D2498)]
BLXNE           R1
BL              sub_123134
NOP
NOP
B               loc_11A650
ADD             R0, SP, #0x40+var_30
ADD             R1, SP, #0x40+var_28
STR             R0, [SP,#0x40+var_3C]
STR             R1, [SP,#0x40+var_40]
LDR             R2, =dword_6CA000
MOV             R5, #1
MOV             R3, #0x1000
ADD             R1, SP, #0x40+var_24
ADD             R0, SP, #0x40+var_2C
STR             R6, [SP,#0x40+var_30]
BL              sub_123A2C
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
LDR             R0, [SP,#0x40+var_24]
CMP             R0, #2
BEQ             loc_11A588
CMP             R0, #5
BEQ             loc_11A53C
CMP             R0, #8
BEQ             loc_11A604
CMP             R0, #9
BNE             loc_11A644
B               loc_11A628
ADD             R0, SP, #0x40+var_30
MOV             R3, #0
LDM             R0, {R5,R7,R9}
MOV             R2, R3
LDR             R8, =dword_6CA000
MOV             R0, #1
MOV             R1, R7
BL              sub_123464
LDR             R12, [R4,#(off_6D24AC - 0x6D2498)]
CMP             R12, #0
BEQ             loc_11A580
STR             R5, [SP,#0x40+var_40]
LDR             R0, [R4,#(dword_6D24EC - 0x6D2498)]
MOV             R3, R9
MOV             R2, R8
MOV             R1, R7
BLX             R12
MOV             R5, R6
B               loc_11A644
LDR             R0, =dword_6CA000
LDR             R1, [SP,#0x40+var_28]
STR             R6, [SP,#0x40+var_3C]
LDR             R3, [R4,#(off_6D24A8 - 0x6D2498)]
CMP             R1, #0x20 ; ' '
LDR             R7, [SP,#0x40+var_2C]
LDRCS           R1, [R0]
MOVCC           R1, #0
CMP             R3, #0
MOV             R5, R6
BEQ             loc_11A5C0
LDR             R0, [R4,#(dword_6D24E8 - 0x6D2498)]
ADD             R2, SP, #0x40+var_3C
BLX             R3
MOV             R3, #0
MOV             R2, R3
MOV             R1, R7
MOV             R0, #1
BL              sub_123464
LDR             R1, [SP,#0x40+var_3C]
LDRD            R2, R3, [R4,#(dword_6D2528 - 0x6D2498)]
MOV             R0, R7
STR             R1, [SP,#0x40+var_40]
STRD            R2, R3, [SP,#0x40+var_38]
MOV             R3, #0
MOV             R2, R3
MOV             R1, #3
BL              sub_12364C
NOP
NOP
B               loc_11A644
LDR             R1, [R4,#(off_6D24B0 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D24F0 - 0x6D2498)]
BLXNE           R1
MOV             R0, #0
BL              sub_123358
MOV             R5, #0
NOP
B               loc_11A644
MOV             R0, #1
BL              sub_123358
LDR             R1, [R4,#(off_6D24B4 - 0x6D2498)]
CMP             R1, #0
LDRNE           R0, [R4,#(dword_6D24F4 - 0x6D2498)]
BLXNE           R1
MOV             R5, #0
LDR             R0, [SP,#0x40+var_30]
CMP             R0, #0
SVCNE           0x23 ; '#'
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R5
POP             {R4-R9,PC}
