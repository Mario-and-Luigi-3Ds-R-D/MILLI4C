PUSH            {R4-R8,LR}
MOV             R8, R0
ADD             R0, R0, #0x2C4
BL              sub_598FD8
LDR             R0, =off_6D1648
ADD             R4, R8, #0x13000
ADD             R4, R4, #0xB10
LDR             R0, [R0]
LDRB            R1, [R0,#0x3C]
LDR             R0, [R4]
BL              sub_3A14D4
LDR             R0, [R4]
BL              sub_3A119C
LDR             R0, [R8]
LDR             R1, [R0,#0x1FC]
MOV             R0, R8
BLX             R1
ADD             R5, R8, #0x14000
LDR             R4, [R5,#0x16C]
CMP             R4, #0
BEQ             loc_189A3C
LDR             R0, [R4]
LDR             R1, [R0,#0x78]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_189A30
LDRB            R0, [R4,#0xDE]
TST             R0, #8
BNE             loc_189A30
LDR             R0, [R4]
LDR             R1, [R0,#0x44]
MOV             R0, R4
BLX             R1
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_1899FC
LDR             R4, [R5,#0x16C]
CMP             R4, #0
BEQ             loc_189AA0
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_189A94
LDR             R0, [R4]
LDR             R1, [R0,#0x78]
MOV             R0, R4
BLX             R1
CMP             R0, #0
BNE             loc_189A94
LDRB            R0, [R4,#0xDE]
TST             R0, #8
BNE             loc_189A94
LDR             R0, [R4]
LDR             R1, [R0,#0x48]
MOV             R0, R4
BLX             R1
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_189A48
LDR             R0, =0x14408
LDR             R0, [R0,R8]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, =0x14418
LDR             R0, [R0,R8]
CMP             R0, #0
BEQ             loc_189B14
LDR             R1, =0xF51
LDRSB           R1, [R1,R0]
CMN             R1, #1
BEQ             loc_189B14
LDRB            R2, [R0,#0xF51]
ADD             R1, R2, R2,LSL#4
ADD             R1, R1, R2,LSL#5
ADD             R0, R0, R1,LSL#4
LDRB            R0, [R0,#0x194]
CMP             R0, #5
BNE             loc_189B14
ADD             R0, R8, #0x14400
ADD             R0, R0, #0x1D
LDRB            R1, [R0]
ADD             R1, R1, #1
AND             R1, R1, #0xFF
CMP             R1, #3
STRB            R1, [R0]
MOVCS           R1, #0
STRBCS          R1, [R0]
LDR             R7, [R5,#0x16C]
CMP             R7, #0
BEQ             loc_189C18
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #3
BEQ             loc_189C0C
LDR             R0, [R7]
LDR             R1, [R0,#0xC]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_189C0C
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #4
BEQ             loc_189B88
LDR             R0, [R7]
LDR             R1, [R0,#0x38]
MOV             R0, R7
BLX             R1
LDR             R0, [R0,#0xA4]
LDR             R1, [R0,#4]
CMP             R1, #0
BLNE            sub_592F14
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_189BB8
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #1
BNE             loc_189C0C
LDR             R0, [R7]
LDR             R1, [R0,#0x3C4]
MOV             R0, R7
BLX             R1
MOV             R5, R0
LDR             R0, [R7]
LDR             R1, [R0,#0x3CC]
MOV             R0, R7
BLX             R1
SUBS            R6, R0, #0
MOV             R4, #0
BLS             loc_189C0C
LDR             R0, [R5]
LDR             R0, [R0,#0x7FC]
LDR             R1, [R0,#4]
CMP             R1, #0
BLNE            sub_592F14
ADD             R4, R4, #1
CMP             R4, R6
ADD             R5, R5, #4
BCC             loc_189BE8
LDR             R7, [R7,#8]
CMP             R7, #0
BNE             loc_189B20
MOV             R4, #0
ADD             R0, R8, R4,LSL#3
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x364
BL              sub_1E5028
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_189C1C
ADD             R4, R8, #0x10000
ADD             R4, R4, #0x4300
LDRH            R0, [R4,#8]
TST             R0, #1
BEQ             locret_189C60
ADD             R0, R8, #0xCC
BL              sub_4B1570
LDRH            R0, [R4,#8]
BIC             R0, R0, #1
STRH            R0, [R4,#8]
POP             {R4-R8,PC}
