PUSH            {R0-R2,R4-R7,LR}
MOVS            R3, R2
MOVS            R4, #0
MOVS            R7, R2
MOVS            R6, R0
MOVS            R5, R1
MOVS            R2, R1
MOVS            R1, R4
MOVS            R0, R4
BL              sub_102884
MOVS            R4, R0
BNE             loc_103316
CMP             R5, #0
BLT             loc_103302
CMP             R5, #0x17
BCC             loc_103304
MOVS            R5, #0
LDR             R1, =off_69B1FC; "%s: unspecified error" ...
LSLS            R0, R5, #2
LDR             R2, [R1,R0]
MOVS            R1, #0
MOVS            R3, R7
MOVS            R0, R1
BL              sub_30160C
MOVS            R4, R0
LDR             R0, [R6,#4]
CMP             R0, #0
BEQ             loc_10334C
BLX             sub_300168
MOVS            R5, R0
MOVS            R0, R4
BLX             sub_300168
ADDS            R0, R5, R0
ADDS            R0, R0, #1
BL              sub_301570
LDR             R1, [R6,#4]
BLX             sub_3016E8
MOVS            R1, R4
BL              sub_100B18
MOVS            R5, R0
LDR             R0, [R6,#4]
BLX             sub_2FF5D4
MOVS            R0, R4
BLX             sub_2FF5D4
MOVS            R4, R5
STR             R4, [R6,#4]
B               loc_10335E
NOP
NOP
MOVS            R0, R4
BLX             sub_2FF5D4
NOP
NOP
MOVS            R0, R6
POP             {R1-R7,PC}
