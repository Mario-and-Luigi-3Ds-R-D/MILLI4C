LDR             R1, =off_6B3E70
PUSH            {R4,LR}
STR             R1, [R0],#0x190
BL              sub_593394
SUB             R0, R0, #0x1C
NOP
SUB             R4, R0, #0x174
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
MOV             R3, #1
STR             R0, [R4,#0x100]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
SUB             R0, R0, #0x100
B               sub_14CD84
