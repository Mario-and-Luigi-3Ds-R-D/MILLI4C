PUSH            {R4-R6,LR}
MOV             R4, R1
LDRB            R0, [R1,#0x75C]
MOV             R5, R2
TST             R0, #0x40
BEQ             loc_18099C
AND             R0, R0, #7
CMP             R0, #1
BEQ             loc_180968
LDR             R0, [R5,#0x658]
TST             R0, #0x20
LDR             R0, [R4]
BEQ             loc_180984
LDR             R1, [R0,#0x344]
MOV             R0, R4
BLX             R1
B               loc_180994
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x338]
MOV             R0, R4
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
LDR             R2, [R0,#0x340]
MOV             R1, R5
MOV             R0, R4
BLX             R2
MOV             R0, #0
POP             {R4-R6,PC}
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R2
BLX             R1
LDR             R6, =off_6D1648
MOVS            R1, R0
ADD             R0, R4, #0x700
BEQ             loc_1809D0
CMP             R1, #1
BEQ             loc_1809FC
CMP             R1, #2
BNE             loc_180A24
B               loc_180A2C
LDRH            R0, [R0,#0x5A]
CMP             R0, #0
BNE             loc_180994
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x3B4]
BLX             R1
B               loc_180A24
LDRH            R0, [R0,#0x5A]
CMP             R0, #0
BNE             loc_180994
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x3B4]
BLX             R1
MOV             R0, #1
POP             {R4-R6,PC}
LDR             R5, [R5,#0x828]
MOV             R1, #0xF
LDR             R2, [R5,#0x86C]
BICS            R1, R1, R2
BNE             loc_180AA8
LDR             R1, =0x468
LDRH            R1, [R1,R5]
CMP             R1, #8
BEQ             loc_180A58
CMP             R1, #9
BNE             loc_180994
LDRB            R1, [R4,#0x75C]
TST             R1, #0x20
BEQ             loc_180AA8
LDR             R0, [R4]
LDR             R1, [R0,#0x24]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0xDE]
BIC             R0, R0, #1
STRB            R0, [R4,#0xDE]
LDR             R0, [R5,#0x750]
CMP             R0, R4
MOVEQ           R0, #0
STREQ           R0, [R5,#0x750]
B               loc_180994
LDRH            R0, [R0,#0x5A]
CMP             R0, #0
BNE             loc_180994
LDR             R0, [R6]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x3B4]
BLX             R1
B               loc_1809DC
