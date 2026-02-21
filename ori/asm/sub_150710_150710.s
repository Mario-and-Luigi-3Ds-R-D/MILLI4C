PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#8]
LDR             R5, =off_6CE970
ADD             R0, R0, #0x400
LDRSB           R0, [R0,#0x95]
ADD             R0, R0, #0xC000
ADD             R0, R0, #4
UXTH            R1, R0
LDR             R0, [R5]
BL              sub_52FACC
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
CMP             R0, #0
BNE             locret_15077C
LDR             R0, [R5]
BL              sub_5EE958
CMP             R0, #0
BEQ             locret_15077C
LDR             R1, =unk_63E868
LDR             R0, [R5]
MOV             R2, #2
BL              sub_529204
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E878 - 0x63E868)]
STRD            R0, R1, [R4,#0xC]
POP             {R4-R6,PC}
