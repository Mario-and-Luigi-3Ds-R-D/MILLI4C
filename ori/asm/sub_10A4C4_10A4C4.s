PUSH            {R3-R11,LR}
MOV             R7, #0
SUBS            R8, R0, #0
MOV             R11, R1
LDR             R0, =off_6D48F8
LDRGT           R9, =off_6D2420
LDR             R10, [R0]
BLE             loc_10A670
LDR             R1, [R11,R7,LSL#2]
CMP             R1, #0
BEQ             loc_10A664
LDR             R2, [R9]
MOV             R6, #0
LDR             R4, [R2]
MOVS            R0, R4
BEQ             loc_10A664
LDR             R3, [R4,#0x20]
CMP             R1, R3
BLS             loc_10A524
MOV             R6, R4
LDR             R4, [R4,#0x24]
CMP             R4, #0
BNE             loc_10A504
B               loc_10A664
CMP             R4, #0
BEQ             loc_10A664
CMP             R3, R1
BNE             loc_10A664
LDR             R1, [R2,#8]
CMP             R1, R4
BNE             loc_10A62C
LDR             R1, [R1,#0x20]
MOV             R5, #0
CMP             R1, #0
LDR             R1, =off_6D48F8
LDR             R1, [R1]
STR             R1, [SP,#0x28+var_28]
BEQ             loc_10A62C
CMP             R0, #0
BEQ             loc_10A590
LDR             R1, [R0,#0x20]
CMP             R1, R5
BCS             loc_10A580
LDR             R0, [R0,#0x24]
CMP             R0, #0
BNE             loc_10A564
B               loc_10A590
CMP             R0, #0
BEQ             loc_10A590
CMP             R1, R5
BEQ             loc_10A610
NOP
BL              sub_116198
MOV             R1, #0
STR             R1, [R0,#0x24]
STR             R5, [R0,#0x20]
LDR             R2, [R9]
LDR             R1, [R2]
CMP             R1, #0
STREQ           R0, [R2]
BEQ             loc_10A610
LDR             R3, [R1,#0x20]
CMP             R3, R5
BLS             loc_10A5D0
STR             R1, [R0,#0x24]
STR             R0, [R2]
B               loc_10A610
LDR             R2, [R1,#0x24]
CMP             R2, #0
BEQ             loc_10A60C
LDR             R3, [R2,#0x20]
CMP             R3, R5
BLS             loc_10A5FC
STR             R0, [R1,#0x24]
CMP             R2, #0
STR             R2, [R0,#0x24]
BNE             loc_10A610
B               loc_10A60C
MOV             R1, R2
LDR             R2, [R2,#0x24]
CMP             R2, #0
BNE             loc_10A5DC
STR             R0, [R1,#0x24]
LDR             R1, [R9]
STR             R0, [R1,#8]
LDR             R0, [SP,#0x28+var_28]
LDR             R0, [R0]
ORR             R1, R0, #1
LDR             R0, [SP,#0x28+var_28]
STR             R1, [R0]
CMP             R6, #0
LDRNE           R0, [R4,#0x24]
STRNE           R0, [R6,#0x24]
BEQ             loc_10A680
MOVS            R3, R4
BEQ             loc_10A664
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_10A664
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
ADD             R7, R7, #1
CMP             R7, R8
BLT             loc_10A4E4
LDR             R0, [R10]
ORR             R0, R0, #1
STR             R0, [R10]
POP             {R3-R11,PC}
LDR             R0, [R9]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
STR             R1, [R0]
B               loc_10A63C
