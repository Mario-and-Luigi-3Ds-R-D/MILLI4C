LDR             R1, =off_6B7BEC
PUSH            {R4-R6,LR}
ADD             R4, R0, #0x2C ; ','
STR             R1, [R0,#0x2C]
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R0, #0x44 ; 'D'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R5, R0, #0x2C ; ','
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A6318
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDRD            R0, R1, [R4,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R5
POP             {R4-R6,PC}
