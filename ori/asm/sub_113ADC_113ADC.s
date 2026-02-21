PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6B9698
SUB             SP, SP, #0x10
STR             R0, [R4]
LDR             R1, [R0,#(off_6B96C0 - 0x6B9698)]; sub_5F16AC
MOV             R0, R4
BLX             R1; sub_5F16AC
CMP             R0, #0
MOV             R6, #0
BEQ             loc_113B84
LDR             R0, [R4]
ADD             R1, R4, #0x34 ; '4'
LDR             R2, [R0,#4]
MOV             R0, R4
BLX             R2
LDR             R2, [R4,#0x10]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x20+var_18
ADD             R0, SP, #0x20+var_14
BL              sub_120250
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
MOV             R1, #1
ADD             R0, R4, #0x10
STRB            R1, [R4,#0x14]
BL              sub_1210EC
LDR             R0, [R4,#0x10]
ADD             R5, R4, #0x10
CMP             R0, #0
BEQ             loc_113B70
SVC             0x23 ; '#'
STR             R6, [R5]
MOV             R0, R4
BL              sub_11CAC0
ADD             R0, R4, #0xC
NOP
BL              sub_11DDE8
MOV             R0, #0xFFFFFFFF
STR             R0, [R4,#0x30]
LDR             R0, =off_6B96DC
STR             R0, [R4,#0xC]!
MOV             R0, R4
BL              sub_11DDE8
ADD             R4, R4, #4
MOV             R0, R4
BL              sub_1210EC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_113BBC
SVC             0x23 ; '#'
STR             R6, [R4]
LDR             R1, =off_6B7DE8
SUB             R4, R4, #0x10
MOV             R0, R4
STR             R1, [R4]
BL              sub_11CAC0
ADD             SP, SP, #0x10
MOV             R0, R4
POP             {R4-R6,PC}
