ADD             R0, R0, #0x14000
MOV             R2, R1
LDR             R0, [R0,#0x180]
CMP             R0, #0x400
LDR             R0, =off_6D1648
MOVNE           R1, #1
MOVEQ           R1, #0
LDR             R0, [R0]
LDR             R0, [R0,#0xA0]
B               loc_331504
