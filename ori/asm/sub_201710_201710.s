LDR             R1, =off_6B28E4
PUSH            {R4,LR}
ADD             R4, R0, #8
STR             R1, [R0]
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0,#8]
LDR             R1, =nullsub_300
ADD             R0, R0, #0x20 ; ' '
BLX             sub_1009D8
MOV             R0, R4
NOP
POP             {R4,LR}
SUB             R0, R0, #8
B               nullsub_824
