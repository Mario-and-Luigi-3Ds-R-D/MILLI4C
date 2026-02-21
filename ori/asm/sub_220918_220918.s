PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, =off_6B2DF0
MOV             R4, #0
STR             R0, [R5]
RSB             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#4
ADD             R0, R5, R0,LSL#3
ADD             R0, R0, #0x54 ; 'T'
BL              sub_194954
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_22092C
LDR             R1, =sub_233754
MOV             R3, #2
MOV             R2, #0xB8
ADD             R0, R5, #0x54 ; 'T'
BLX             sub_1009D8
MOV             R0, R5
POP             {R4-R6,LR}
B               nullsub_810
