PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6BFDD4
CMP             R1, #0
LDREQ           R1, =off_6B1834
STREQ           R0, [R4]
MOV             R2, #0
ADDS            R12, R1, #4
STREQ           R0, [R4]
STR             R2, [R4,#4]
LDREQ           R12, =off_6BFDFC
STR             R2, [R4,#8]
STR             R2, [R4,#0xC]
STR             R2, [R4,#0x10]
STR             R2, [R4,#0x14]
LDR             R0, [R12]
STR             R0, [R4]
LDR             R3, [R12,#0xC]
LDR             R12, [R0,#-0x30]
STR             R3, [R4,R12]
LDR             R0, [R1]
STR             R0, [R4]
LDR             R0, [R0,#-0x30]
LDR             R1, [R1,#0x14]
STR             R1, [R4,R0]
LDR             R1, =off_6B55AC
ADD             R0, R4, #0x1C
STM             R0, {R1,R2}
STR             R2, [R4,#0x28]
STR             R2, [R4,#0x2C]
MOV             R1, #0
ADD             R0, R4, #0x28 ; '('
BL              sub_120E48
MOV             R0, R4
POP             {R4,PC}
