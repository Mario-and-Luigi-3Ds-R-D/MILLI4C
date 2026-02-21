PUSH            {R4,LR}
ADD             R4, R0, #0x68 ; 'h'
LDR             R0, [R0,#0x68]
CMP             R0, #0
BEQ             loc_1A3DC4
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_1A3E2C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A3DEC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
MOV             R1, #0
STR             R1, [R4]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, =off_6B7BFC
LDR             R1, =sub_5A2F60
STR             R0, [R4,#-0x68]!
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
POP             {R4,LR}
B               nullsub_299
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_1A3DEC
