LDR             R1, =off_6B3FF0
PUSH            {R4-R6,LR}
STR             R1, [R0],#0xDF0
BL              sub_2A0D24
SUB             R0, R0, #0x800
SUB             R0, R0, #0xD4
BL              sub_593394
SUB             R0, R0, #0x104
BL              sub_593394
SUB             R0, R0, #0x104
BL              sub_593394
SUB             R0, R0, #0x104
BL              sub_593394
LDR             R5, =off_6B7BFC
SUB             R4, R0, #0x60 ; '`'
LDR             R1, =sub_5A2F60
STR             R5, [R0,#-0x60]
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R5, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x58 ; 'X'
STR             R5, [R0,#-0x58]
LDR             R1, =sub_5A2F60
MOV             R3, #1
MOV             R2, #0x28 ; '('
SUB             R0, R0, #0x28 ; '('
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4-R6,LR}
SUB             R0, R0, #0x100
B               sub_14CD84
