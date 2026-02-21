ADD             R1, R0, #0x100
PUSH            {R4,LR}
LDRH            R2, [R1,#0x1A]
MOV             R3, #0
BIC             R2, R2, #0x8000
STRH            R2, [R1,#0x24]
LDR             R1, =off_675FDC
LDM             R1, {R1,R2}
BL              sub_232B34
POP             {R4,PC}
