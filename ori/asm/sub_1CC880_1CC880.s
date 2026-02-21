PUSH            {R4,LR}
LDR             R4, [R0]
ADD             R0, R4, #0x13C00
ADD             R0, R0, #0xD8
BL              sub_4D9CB4
LDR             R1, =off_63D8F0
LDRD            R0, R1, [R1,#(off_63D918 - 0x63D8F0)]
STRD            R0, R1, [R4,#0xF8]
POP             {R4,PC}
