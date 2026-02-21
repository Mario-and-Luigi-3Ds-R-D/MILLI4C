PUSH            {R4-R9,LR}
ADD             R1, R0, #0x10000
MOV             R5, R0
ADD             R1, R1, #0x3D00
ADD             R4, R5, #0x28800
LDRH            R1, [R1,#4]
ADD             R6, R5, #0x15000
SUB             SP, SP, #0x14
SUB             R0, R1, #0xFF00
SUBS            R0, R0, #0xFF
ADD             R4, R4, #0x128
ADD             R6, R6, #0xDC
BEQ             loc_1618D4
MOV             R0, R6
BL              sub_598FD8
MOV             R0, R4
BL              sub_598FD8
MOV             R0, R5
BL              sub_1899A8
B               loc_16193C
ADD             R0, R5, #0x2C4
BL              sub_598FD8
MOV             R0, R6
NOP
BL              sub_598FD8
MOV             R0, R4
NOP
BL              sub_598FD8
MOV             R4, #0
ADD             R0, R5, R4,LSL#3
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x364
BL              sub_1E5028
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1618F8
ADD             R4, R5, #0x10000
ADD             R4, R4, #0x4300
LDRH            R0, [R4,#8]
TST             R0, #1
BEQ             loc_16193C
ADD             R0, R5, #0xCC
BL              sub_4B1570
LDRH            R0, [R4,#8]
BIC             R0, R0, #1
STRH            R0, [R4,#8]
ADD             R4, R5, #0x15000
ADD             R7, R5, #0x14400
LDRB            R1, [R4,#0xA3]
ADD             R7, R7, #0x174
CMP             R1, #0
BEQ             loc_1619EC
CMP             R1, #1
ADD             R2, R5, #0x28800
BEQ             loc_161980
CMP             R1, #2
MOV             R0, #0
BEQ             loc_1619A0
CMP             R1, #3
LDRHEQ          R1, [R2,#0xE8]
CMPEQ           R1, #0
BNE             loc_1619B8
B               loc_1619D0
LDRH            R0, [R2,#0xE8]
CMP             R0, #0
BNE             loc_1619B8
MOV             R0, R5
BL              sub_1608D0
MOV             R0, #2
NOP
B               loc_1619B4
MOV             R2, #5
MOV             R1, #0
MOV             R0, R6
BL              sub_5996A0
MOV             R0, #3
STRB            R0, [R4,#0xA3]
MOV             R0, R7
BL              sub_50CC88
LDRB            R0, [R4,#0xA3]
CMP             R0, #0
BEQ             loc_1619EC
B               loc_161CA0
LDR             R1, =0x14408
STRB            R0, [R4,#0xA3]
LDR             R1, [R1,R5]
STRB            R0, [R1,#0x99]
LDRB            R0, [R4,#0xA3]
CMP             R0, #0
BNE             loc_1619B8
LDR             R0, [R5]
LDR             R3, =0xF0001FFB
MOV             R2, SP
ADD             R1, SP, #0x30+var_2C
LDR             R12, [R0,#0x74]
MOV             R0, R5
BLX             R12
LDRB            R0, [R4,#0xA1]
LDR             R8, =off_6D1648
ADD             R6, R5, #0x14400
CMP             R0, #0
ADD             R6, R6, #0x18
BEQ             loc_161A34
CMP             R0, #1
BEQ             loc_161BAC
CMP             R0, #2
BNE             loc_161CA0
B               loc_161C40
MOV             R0, R7
BL              sub_50CC88
MOV             R0, R5
NOP
BL              sub_15FA08
LDR             R3, [R6]
MOV             R2, #0
ADD             R0, R2, R2,LSL#2
ADD             R0, R3, R0,LSL#2
LDRB            R12, [R0,#0xF88]!
CMP             R12, #0
BEQ             loc_161AB0
ADD             R1, R2, R2,LSL#4
ADD             R1, R1, R2,LSL#5
ADD             R1, R3, R1,LSL#4
STRB            R12, [R1,#0x2F0]!
LDRB            R12, [R0]
CMP             R12, #2
LDREQ           R0, [R0,#4]
STREQ           R0, [R1,#4]
BEQ             loc_161AB0
CMP             R12, #1
BNE             loc_161AB0
LDR             R12, [R0,#4]
STR             R12, [R1,#4]
LDR             R12, [R0,#8]
STR             R12, [R1,#8]
LDR             R12, [R0,#0xC]
STR             R12, [R1,#0xC]
LDR             R0, [R0,#0x10]
STR             R0, [R1,#0x10]
ADD             R2, R2, #1
CMP             R2, #5
BLT             loc_161A50
LDR             R0, [R6]
BL              sub_3D8584
LDR             R0, [R5]
ADD             R1, SP, #0x30+var_28
LDR             R2, [R0,#0x7C]
MOV             R0, R5
BLX             R2
LDR             R0, [R8]
BL              sub_1E4614
MOV             R6, R0
LDR             R0, [R8]
BL              sub_1E4604
MOV             R7, R0
LDR             R0, [R6]
LDR             R1, [R0,#0x3D4]
MOV             R0, R6
BLX             R1
MOV             R9, R0
LDR             R0, [R7]
LDR             R1, [R0,#0x3D4]
MOV             R0, R7
BLX             R1
LDR             R1, [SP,#0x30+var_30]
ORR             R0, R0, R9
ORR             R0, R0, #0xF0
TST             R0, R1
BNE             loc_161B90
VLDR            S1, [SP,#0x30+var_28]
VLDR            S0, =0.0
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [SP,#0x30+var_24]
VCMPEQ.F32      S1, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_161B90
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D40
LDR             R0, [R0]
TST             R0, #1
BNE             loc_161B90
LDR             R0, [R6]
LDR             R1, [R0,#0x404]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_161CA0
LDR             R0, [R8]
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BNE             loc_161CA0
LDRB            R1, [R4,#0xA7]
MOV             R2, #0
MOV             R0, R5
BL              sub_15FB30
NOP
NOP
B               loc_161CA0
MOV             R0, R5
BL              sub_15FCC4
LDR             R0, [R6]
NOP
BL              sub_3D8584
LDR             R0, [R6]
NOP
BL              sub_3D87D0
MOV             R0, R7
NOP
BL              sub_50B780
LDR             R0, =0x14710
LDR             R0, [R0,R5]
CMP             R0, #0
BNE             loc_161C04
LDR             R0, [R8]
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x404]
BLX             R1
CMP             R0, #0
BEQ             loc_161C18
LDR             R0, [R8]
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BEQ             loc_161CA0
LDR             R0, [SP,#0x30+var_30]
TST             R0, #0xF0
BEQ             loc_161CA0
MOV             R2, #0
MOV             R1, R2
MOV             R0, R5
BL              sub_15FB30
NOP
NOP
B               loc_161CA0
MOV             R0, R5
BL              sub_15FCC4
LDR             R0, [R6]
NOP
BL              sub_3D8584
MOV             R0, R7
NOP
BL              sub_50CC88
LDR             R0, [R8]
NOP
BL              sub_1E4614
LDR             R1, [R0]
LDR             R1, [R1,#0x404]
BLX             R1
CMP             R0, #0
BEQ             loc_161C94
LDR             R0, [R8]
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BEQ             loc_161CA0
LDR             R0, [SP,#0x30+var_30]
TST             R0, #0xF0
BNE             loc_161C24
ADD             R6, R5, #0x13C00
MOV             R4, #0
ADD             R6, R6, #0x24 ; '$'
ADD             R8, R5, #0x3C000
ADD             R7, R5, #0x15000
LDR             R0, [R6]
MOV             R1, R4
BL              sub_1786B8
CMP             R0, #0
LDRNE           R5, [R0,#4]
CMPNE           R5, #0
BEQ             loc_161D28
ADD             R0, R8, #0x180
MOV             R2, R4
LDM             R0, {R0,R1}
BL              sub_14351C
LDRB            R1, [R7,#0xA1]
AND             R0, R0, #1
CMP             R0, R1
LDRB            R0, [R5,#0x171]
BNE             loc_161D14
CMP             R0, #0
BNE             loc_161D28
MOV             R1, #1
MOV             R0, R5
BL              sub_532AA0
NOP
NOP
B               loc_161D28
CMP             R0, #0
BEQ             loc_161D28
MOV             R1, #0
MOV             R0, R5
BL              sub_532AA0
ADD             R4, R4, #1
CMP             R4, #0x20 ; ' '
BLT             loc_161CB4
ADD             SP, SP, #0x14
POP             {R4-R9,PC}
