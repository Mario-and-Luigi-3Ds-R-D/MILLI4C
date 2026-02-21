PUSH            {R4-R6,LR}
MOV             R5, R0
BL              sub_1848FC
LDR             R6, [R5,#4]
LDR             R1, =0x14180
LDR             R1, [R1,R6]
SUB             R0, R1, #0x400
SUBS            R0, R0, #1
MOVEQ           R4, #0
BNE             locret_15EB30
ADD             R0, R6, R4,LSL#2
ADD             R0, R0, #0x14400
LDR             R1, [R5]
ADD             R0, R0, #0x1B8
LDR             R0, [R0]
LDR             R2, [R1,#0x80]
ADD             R1, R0, #0x14
MOV             R0, R5
BLX             R2
ADD             R4, R4, #1
CMP             R4, #5
BLT             loc_15EB00
POP             {R4-R6,PC}
