LDR             R1, =off_6C003C
STR             R1, [R0]
LDR             R1, [R0,#0x24]
CMP             R1, #0
MOVNE           R1, #0
STRNE           R1, [R0,#0x24]
B               sub_132D54
