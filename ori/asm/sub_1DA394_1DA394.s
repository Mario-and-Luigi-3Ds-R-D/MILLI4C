PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R1, =off_6B1744
ADD             R5, R0, #0x1B0
STR             R1, [R0]
LDR             R0, [R0,#0x1B8]
ADD             R1, R5, #4
CMP             R0, R1
BNE             loc_1DA3C8
LDR             R0, [R5]
CMP             R0, #0
LDRNE           R1, =sub_5B8C24
BLNE            sub_3016C0
LDRD            R0, R1, [R5,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #0x1A8
MOV             R1, #0
STRH            R1, [R0,R4]
MOV             R0, #0x19C
STRH            R1, [R0,R4]
ADD             R0, R4, #0x178
NOP
SUB             R4, R0, #0x178
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R4,#0x104]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x104
NOP
BL              sub_14CD84
POP             {R4-R6,LR}
NOP
B               sub_300FD4
