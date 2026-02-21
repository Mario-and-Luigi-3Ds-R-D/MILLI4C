MOV             R1, #0x18C0
PUSH            {R4-R6,LR}
ADD             R4, R0, #0x1800
LDR             R2, [R1,R0]
ADD             R4, R4, #0xBC
CMP             R2, #0
BEQ             loc_22C890
MOV             R1, #0
MOV             R0, R2
BL              sub_1586A8
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_528C8C
LDR             R0, =off_6C0770
STR             R0, [R4]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_22C8BC
MOV             R1, #0
STR             R1, [R0,#0x64]
STR             R1, [R4,#4]
SUB             R0, R4, #0x3F4
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
MOV             R4, R0
SUB             R0, R0, #0x800
LDR             R1, =sub_14F3EC
MOV             R3, #3
MOV             R2, #0x3F4
SUB             R0, R0, #0x3F4
BLX             sub_1009D8
LDR             R5, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R5, [R4,#-0xC68]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x44 ; 'D'
STR             R5, [R0,#-0x44]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x2C ; ','
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
STR             R5, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x3F4
B               sub_14F3EC
