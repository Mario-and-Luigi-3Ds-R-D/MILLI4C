PUSH            {R0,R1,R4-R12,LR}
MOV             R6, #0
MOV             R7, R1
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
LDR             R0, =off_6D48F8
LDR             R4, [R0]
BLE             loc_126B10
LDR             R1, [R7,R6,LSL#2]
CMP             R1, #0
BEQ             loc_126B00
LDR             R0, =off_6D2440
MOV             R2, R1,LSL#23
MOV             R8, #0
MOV             R2, R2,LSR#23
LDR             R0, [R0]
ADD             R2, R0, R2,LSL#2
LDR             R5, [R2,#0x10]
CMP             R5, #0
BEQ             loc_126B00
LDR             R2, [R5,#8]
CMP             R1, R2
BLS             loc_12665C
MOV             R8, R5
LDR             R5, [R5,#0xC]
CMP             R5, #0
BNE             loc_12663C
B               loc_126B00
CMP             R5, #0
BEQ             loc_126B00
CMP             R2, R1
BNE             loc_126B00
LDR             R3, [R5]
CMP             R3, #0
BEQ             loc_126AB8
LDR             R2, [R5,#4]
CMP             R2, #0
BEQ             loc_1266A0
CMP             R2, #1
BEQ             loc_1267A4
CMP             R2, #2
BEQ             loc_1268C0
CMP             R2, #3
BNE             loc_126AB8
B               loc_1268FC
LDR             R2, [R4,#0x5C]
CMP             R2, R1
BNE             loc_1266E4
MOV             R1, #0
STR             R1, [R4,#0x5C]
LDR             R2, [R0,#0x8A8]
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R1, [R2,#4]
STR             R1, [R0,#0x810]
LDRB            R1, [R4,#0x104]
CMP             R1, #0
BEQ             loc_1266E4
LDR             R1, [R4]
ORR             R1, R1, #0x400
STR             R1, [R4]
LDR             R1, [R7,R6,LSL#2]
LDR             R2, [R4,#0x60]
CMP             R2, R1
BNE             loc_12672C
MOV             R1, #0
STR             R1, [R4,#0x60]
LDR             R2, [R0,#0x8A8]
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R1, [R2,#8]
STR             R1, [R0,#0x814]
LDRB            R1, [R4,#0x105]
CMP             R1, #0
BEQ             loc_12672C
LDR             R1, [R4]
ORR             R1, R1, #0x800
STR             R1, [R4]
LDR             R1, [R7,R6,LSL#2]
LDR             R2, [R4,#0x64]
CMP             R2, R1
BNE             loc_126774
MOV             R1, #0
STR             R1, [R4,#0x64]
LDR             R2, [R0,#0x8A8]
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R1, [R2,#0xC]
STR             R1, [R0,#0x818]
LDRB            R0, [R4,#0x106]
CMP             R0, #0
BEQ             loc_126774
LDR             R0, [R4]
ORR             R0, R0, #0x1000
STR             R0, [R4]
LDR             R9, [R5]
ADD             R0, R9, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R9,#0x2C]
ADD             R1, R9, #0x34 ; '4'
BL              sub_1271DC
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
MOVNE           R3, R9
BEQ             loc_1268F0
B               loc_1268E0
LDR             R2, [R4,#0x68]
CMP             R2, R1
BNE             loc_1267E8
MOV             R1, #0
STR             R1, [R4,#0x68]
LDR             R2, [R0,#0x8A8]
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R1, [R2,#0x10]
STR             R1, [R0,#0x81C]
LDRB            R1, [R4,#0x107]
CMP             R1, #0
BEQ             loc_1267E8
LDR             R1, [R4]
ORR             R1, R1, #0x400
STR             R1, [R4]
LDR             R1, [R7,R6,LSL#2]
LDR             R2, [R4,#0x6C]
CMP             R2, R1
BNE             loc_126830
MOV             R1, #0
STR             R1, [R4,#0x6C]
LDR             R2, [R0,#0x8A8]
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R1, [R2,#0x14]
STR             R1, [R0,#0x820]
LDRB            R1, [R4,#0x108]
CMP             R1, #0
BEQ             loc_126830
LDR             R1, [R4]
ORR             R1, R1, #0x800
STR             R1, [R4]
LDR             R1, [R7,R6,LSL#2]
LDR             R2, [R4,#0x70]
CMP             R2, R1
BNE             loc_126878
MOV             R1, #0
STR             R1, [R4,#0x70]
LDR             R2, [R0,#0x8A8]
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R1, [R2,#0x18]
STR             R1, [R0,#0x824]
LDRB            R0, [R4,#0x109]
CMP             R0, #0
BEQ             loc_126878
LDR             R0, [R4]
ORR             R0, R0, #0x1000
STR             R0, [R4]
LDR             R10, [R5]
MOV             R9, #0
ADD             R0, R9, R9,LSL#4
ADD             R11, R10, R0,LSL#2
ADD             R0, R11, #0x34 ; '4'
BL              sub_125808
LDR             R0, [R10,#0x2C]
ADD             R1, R11, #0x34 ; '4'
BL              sub_1271DC
ADD             R9, R9, #1
CMP             R9, #6
BLT             loc_126880
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
MOVNE           R3, R10
BEQ             loc_1268F0
B               loc_1268E0
LDR             R2, [R4,#0xF4]
CMP             R2, R1
STREQ           R1, [R0,#0xC]
BEQ             loc_126B00
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_1268F0
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOV             R0, #0
STR             R0, [R5]
B               loc_126AB8
MOV             R1, #0
MOV             R3, #0x1C
MOV             R9, R1
ADD             R2, R4, R1,LSL#2
LDR             R12, [R7,R6,LSL#2]
LDR             R10, [R2,#0x74]
CMP             R10, R12
BNE             loc_126940
STR             R9, [R2,#0x74]
LDR             R2, [R0,#0x8A8]
ADD             R12, R3, R1,LSL#2
CMP             R2, #0
LDRNE           R2, [R2]
LDREQ           R2, [R0,#8]
STR             R9, [R2,R12]
ADD             R2, R0, R1,LSL#2
STR             R9, [R2,#0x828]
ADD             R1, R1, #1
CMP             R1, #0x20 ; ' '
BLT             loc_126908
MOV             R0, #0
LDR             R2, [R7,R6,LSL#2]
ADD             R1, R4, R0,LSL#2
LDR             R3, [R1,#0x10C]
CMP             R3, R2
BNE             loc_126978
STR             R9, [R1,#0x10C]
STR             R9, [R1,#0x190]
LDR             R1, [R4]
ORR             R1, R1, #0x4000
STR             R1, [R4]
ADD             R0, R0, #1
CMP             R0, #0x21 ; '!'
BLT             loc_126950
LDR             R10, [R5]
LDR             R3, [R10,#0x804]
CMP             R3, #0
BEQ             loc_1269B4
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_1269B4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R10,#0x808]
CMP             R3, #0
BEQ             loc_1269E0
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_1269E0
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R10,#0x80C]
CMP             R3, #0
BEQ             loc_126A0C
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_126A0C
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R10,#0x810]
CMP             R3, #0
BEQ             loc_126A38
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_126A38
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R10,#0x814]
CMP             R3, #0
BEQ             loc_126A64
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_126A64
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R3, [R10,#0x818]
CMP             R3, #0
BEQ             loc_126A90
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_126AB4
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_126AB4
MOV             R3, R10
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R9, [R5]
LDR             R1, =off_6D2440
LDR             R0, [R7,R6,LSL#2]
LDR             R2, [R1,#(dword_6D2444 - 0x6D2440)]
CMP             R0, R2
STRCC           R0, [R1,#(dword_6D2444 - 0x6D2440)]
CMP             R8, #0
LDRNE           R0, [R5,#0xC]
STRNE           R0, [R8,#0xC]
BEQ             loc_126B18
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_126B00
MOV             R3, R5
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R0, [SP,#0x30+var_30]
ADD             R6, R6, #1
CMP             R6, R0
BLT             loc_12660C
ADD             SP, SP, #8
POP             {R4-R12,PC}
MOV             R0, R0,LSL#23
LDR             R1, [R1]
MOV             R0, R0,LSR#23
ADD             R0, R1, R0,LSL#2
LDR             R1, [R0,#0x10]
LDR             R1, [R1,#0xC]
STR             R1, [R0,#0x10]
B               loc_126ADC
