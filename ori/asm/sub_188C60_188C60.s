PUSH            {R4,LR}
MOV             R4, R0
BL              sub_2B0378
LDR             R0, =0x14408
LDR             R0, [R0,R4]
CMP             R0, #0
BEQ             loc_188CA0
LDR             R2, =0x1440C
LDRH            R1, [R0,#0x3A]
STRH            R1, [R2,R4]
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R2, R4, #0x14000
ADD             R2, R2, #0x410
STRD            R0, R1, [R2]
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0x24 ; '$'
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x20]
POP             {R4,LR}
BX              R1
