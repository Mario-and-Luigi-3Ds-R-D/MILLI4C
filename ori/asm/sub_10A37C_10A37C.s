PUSH            {R4-R8,LR}
MOV             R5, R1
LDR             R6, =off_6D2420
LDR             R1, =off_6D48F8
LDR             R0, [R6]
LDR             R7, [R1]
LDR             R1, [R0,#0xC]
CMP             R1, #0
BEQ             loc_10A3AC
LDR             R1, [R1,#0x40]
CMP             R1, R5
BEQ             locret_10A4B4
CMP             R5, #0
BEQ             loc_10A49C
LDR             R4, [R0,#4]
CMP             R4, #0
BEQ             loc_10A3EC
LDR             R0, [R4,#0x40]
CMP             R0, R5
BCS             loc_10A3DC
LDR             R4, [R4,#0x44]
CMP             R4, #0
BNE             loc_10A3C0
B               loc_10A3EC
CMP             R4, #0
BEQ             loc_10A3EC
CMP             R0, R5
BEQ             loc_10A494
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R4, #0
BEQ             loc_10A420
MOV             R3, #0x48 ; 'H'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R4, R0
MOVNE           R1, #0x48 ; 'H'
BLNE            sub_2FFE8C
STR             R5, [R4,#0x40]
LDR             R1, [R6]
MOV             R2, R5
LDR             R0, [R1,#4]
CMP             R0, #0
STREQ           R4, [R1,#4]
BEQ             loc_10A494
LDR             R3, [R0,#0x40]
CMP             R3, R2
BLS             loc_10A454
STR             R0, [R4,#0x44]
STR             R4, [R1,#4]
B               loc_10A494
LDR             R1, [R0,#0x44]
CMP             R1, #0
BEQ             loc_10A490
LDR             R3, [R1,#0x40]
CMP             R3, R2
BLS             loc_10A480
STR             R4, [R0,#0x44]
CMP             R1, #0
STR             R1, [R4,#0x44]
BNE             loc_10A494
B               loc_10A490
MOV             R0, R1
LDR             R1, [R1,#0x44]
CMP             R1, #0
BNE             loc_10A460
STR             R4, [R0,#0x44]
CMP             R5, #0
BNE             loc_10A4A0
MOV             R4, #0
LDR             R0, [R6]
STR             R4, [R0,#0xC]
LDR             R0, [R7]
ORR             R0, R0, #1
STR             R0, [R7]
POP             {R4-R8,PC}
