LDR             R1, =off_6ADDA0
PUSH            {R4-R6,LR}
STR             R1, [R0]
ADD             R0, R0, #0x17000
ADD             R0, R0, #0xB8
NOP
SUB             R0, R0, #0x3B8
BL              sub_233754
LDR             R4, =off_6B7BEC
SUB             R5, R0, #0x178
LDR             R1, =nullsub_300
STR             R4, [R0,#-0x178]
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x160
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R5, R0, #0x34 ; '4'
STR             R4, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R5, R0, #0x34 ; '4'
STR             R4, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R5, R0, #0x34 ; '4'
STR             R4, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R0, R0, #0x98
BL              sub_59CE8C
SUB             R5, R0, #0x34 ; '4'
STR             R4, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R5, R0, #0x34 ; '4'
STR             R4, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R5, R0, #0x34 ; '4'
STR             R4, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R5
NOP
SUB             R0, R0, #0x680
NOP
SUB             R0, R0, #0x1000
SUB             R0, R0, #0x1FC
BL              sub_19DD1C
SUB             R4, R0, #0x15000
LDR             R1, =sub_2A8578
SUB             R4, R4, #0x13C
MOV             R3, #2
MOV             R2, #0x8C
SUB             R0, R0, #0x118
BLX             sub_1009D8
MOV             R0, R4
POP             {R4-R6,LR}
B               sub_194050
