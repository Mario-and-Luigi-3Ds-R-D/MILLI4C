LDR             R1, =off_6BC484
LDR             R2, =off_6C357C
PUSH            {R4,LR}
STR             R1, [R0],#0x8A0
LDR             R1, =sub_14F3EC
STR             R2, [R0],#0x13C
MOV             R4, R0
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1009D8
SUB             R0, R4, #0x13C
BL              sub_14CD84
SUB             R0, R0, #0x54 ; 'T'
NOP
SUB             R0, R0, #0x58 ; 'X'
NOP
SUB             R0, R0, #0x3F4
BL              sub_14F3EC
SUB             R0, R0, #0x3F4
BL              sub_14F3EC
POP             {R4,LR}
SUB             R0, R0, #0xC
B               sub_300FD4
