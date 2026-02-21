LDR             R1, =off_6B1744
PUSH            {R4,LR}
ADD             R4, R0, #0x1B0
STR             R1, [R0]
LDR             R0, [R0,#0x1B8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1DA474
LDR             R0, [R4]
CMP             R0, #0
LDRNE           R1, =sub_5B8C24
BLNE            sub_3016C0
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R1, #0
STRH            R1, [R4,#-8]
SUB             R0, R4, #0x38 ; '8'
STRH            R1, [R4,#-0x14]
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
POP             {R4,LR}
SUB             R0, R0, #0x104
B               sub_14CD84
