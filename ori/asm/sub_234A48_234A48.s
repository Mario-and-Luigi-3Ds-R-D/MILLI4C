PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R0, [R0,#4]
LDR             R6, =off_67E154
MOV             R5, R1
CMP             R0, #0
STREQ           R7, [R4,#0x24]
LDRDEQ          R0, R1, [R6,#(off_67E174 - 0x67E154)]
BEQ             loc_234A8C
MOV             R2, R1
LDR             R0, =unk_6EB568
MOV             R1, R4
BL              sub_51C77C
CMP             R5, #0
STREQ           R7, [R4,#0x24]
LDRD            R0, R1, [R6,#(off_67E16C - 0x67E154)]
STRD            R0, R1, [R4,#0x48]
POP             {R4-R8,PC}
