PUSH            {R3-R11,LR}
MOV             R5, #0
SUBS            R7, R0, #0
MOV             R8, R1
MOVGT           R4, #0
LDR             R6, =off_6D48F8
LDR             R11, [R6]
BLE             loc_10A804
LDR             R3, [R8,R5,LSL#2]
CMP             R3, #0
BEQ             loc_10A7F8
LDR             R0, =off_6D2420
MOV             R1, #0
LDR             R2, [R0]
LDR             R0, [R2,#4]
MOVS            R12, R0
BEQ             loc_10A7F8
LDR             R9, [R0,#0x40]
CMP             R3, R9
BLS             loc_10A704
MOV             R1, R0
LDR             R0, [R0,#0x44]
CMP             R0, #0
BNE             loc_10A6E4
B               loc_10A7F8
CMP             R0, #0
BEQ             loc_10A7F8
CMP             R9, R3
BNE             loc_10A7F8
CMP             R1, #0
LDREQ           R1, [R12,#0x44]
LDRNE           R3, [R0,#0x44]
STREQ           R1, [R2,#4]
STRNE           R3, [R1,#0x44]
LDR             R1, [R2,#0xC]
CMP             R1, R0
STREQ           R4, [R2,#0xC]
STR             R0, [SP,#0x28+var_28]
LDR             R3, [R2]
MOV             R1, R0
CMP             R3, #0
BEQ             loc_10A7A0
MOV             R12, #0
ADD             R0, R3, R12,LSL#4
LDR             R9, [R0,#0xC]
CMP             R9, R1
BNE             loc_10A788
LDR             R9, [R2,#8]
CMP             R9, R3
BNE             loc_10A778
LDR             R9, [R6]
LDR             R10, [R9]
ORR             R10, R10, #1
STR             R10, [R9]
STR             R4, [R0,#0xC]
STR             R4, [R0]
STR             R4, [R0,#4]
STR             R4, [R0,#8]
ADD             R12, R12, #1
CMP             R12, #2
BLT             loc_10A74C
LDR             R3, [R3,#0x24]
CMP             R3, #0
BNE             loc_10A748
LDR             R0, [SP,#0x28+var_28]
LDR             R3, [R0]
CMP             R3, #0
BEQ             loc_10A7D4
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_10A7F8
LDR             R0, [SP,#0x28+var_28]
LDR             R1, =0x103
ADD             R0, R0, #0x3C ; '<'
LDM             R0, {R0,R2}
BLX             R12
LDR             R0, =off_6D242C
LDR             R12, [R0]
CMP             R12, #0
BEQ             loc_10A7F8
LDR             R3, [SP,#0x28+var_28]
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
ADD             R5, R5, #1
CMP             R5, R7
BLT             loc_10A6C0
LDR             R0, [R11]
ORR             R0, R0, #1
STR             R0, [R11]
POP             {R3-R11,PC}
