LDR             R0, =off_6CE970
LDR             R12, =0x10C7B8
LDR             R3, [R2,#8]
LDR             R1, [R0]
LDR             R0, [R2,#0x6C]
ANDS            R3, R3, #0xFF
ADD             R1, R1, R12
ADD             R1, R1, #0x800
STREQ           R0, [R1,#0x340]
BEQ             loc_208600
CMP             R3, #1
STREQ           R0, [R1,#0x344]
MOV             R0, #0
BX              LR
