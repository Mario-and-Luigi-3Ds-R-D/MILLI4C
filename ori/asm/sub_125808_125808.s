CMP             R0, #0
BXEQ            LR
PUSH            {R4-R7}
LDR             R1, =off_6D2420
LDR             R4, [R1]
LDR             R1, [R4]
CMP             R1, #0
LDRNE           R6, =off_6D48F8
MOVNE           R2, #0
BEQ             loc_125888
MOV             R3, #0
ADD             R12, R1, R3,LSL#4
LDR             R5, [R12,#0xC]
CMP             R5, R0
BNE             loc_125870
LDR             R5, [R4,#8]
CMP             R5, R1
BNE             loc_125860
LDR             R5, [R6]
LDR             R7, [R5]
ORR             R7, R7, #1
STR             R7, [R5]
STR             R2, [R12,#0xC]
STR             R2, [R12]
STR             R2, [R12,#4]
STR             R2, [R12,#8]
ADD             R3, R3, #1
CMP             R3, #2
BLT             loc_125834
LDR             R1, [R1,#0x24]
CMP             R1, #0
BNE             loc_125830
POP             {R4-R7}
BX              LR
