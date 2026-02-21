LDR             R1, =off_6B2798
PUSH            {R4,LR}
ADD             R4, R0, #0x1E0
STR             R1, [R0]
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0,#0x1E0]
LDR             R1, =sub_5A2F60
ADD             R0, R0, #0x210
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x11C
BL              sub_53700C
SUB             R0, R0, #0xB8
BL              sub_233754
POP             {R4,LR}
SUB             R0, R0, #0xC
B               nullsub_824
