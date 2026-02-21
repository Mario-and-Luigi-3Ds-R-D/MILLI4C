PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6B0970
LDR             R1, =nullsub_900
MOV             R3, #2
STR             R0, [R4]
MOV             R2, #0x7C ; '|'
ADD             R0, R4, #0x25C
BLX             sub_1009D8
LDR             R1, =sub_5A1168
MOV             R3, #4
MOV             R2, #8
ADD             R0, R4, #0x234
BLX             sub_1009D8
MOV             R0, #0x1B4
MOV             R1, #0
STRH            R1, [R0,R4]
MOV             R0, R4
POP             {R4,LR}
B               sub_2007E4
