PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R6, R4, #0x1A0000
LDR             R0, =off_6B171C
ADD             R6, R6, #0x64 ; 'd'
STR             R0, [R4]
LDR             R1, [R6]
MOV             R0, #0
STR             R0, [R6]
CMP             R1, #0
BEQ             loc_1D7568
ADD             R0, R1, #0x800
ADD             R0, R0, #0xC
BL              sub_14F3EC
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
SUB             R0, R0, #0x3F8
BL              sub_14F3EC
SUB             R0, R0, #0x10
BL              sub_300FD4
ADD             R5, R4, #0x1A0000
ADD             R5, R5, #0x68 ; 'h'
MOV             R7, #0
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1D7590
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R5]
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1D75CC
ADD             R0, R0, #0x800
ADD             R0, R0, #0xC
BL              sub_14F3EC
SUB             R0, R0, #0x400
SUB             R0, R0, #4
BL              sub_14F3EC
SUB             R0, R0, #0x3F8
NOP
BL              sub_14F3EC
SUB             R0, R0, #0x10
NOP
BL              sub_300FD4
MOV             R0, R4
POP             {R4-R8,LR}
B               sub_531518
