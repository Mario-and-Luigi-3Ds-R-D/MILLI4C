PUSH            {R3,LR}
MOV             R2, #0
STR             R2, [SP,#8+var_8]
LDR             R0, [R0,#4]
ADD             R1, R3, #8
LDM             R1, {R1-R3}
LDR             R12, [R0]
SXTH            R2, R2
LDR             R12, [R12,#0x28C]
BLX             R12
MOV             R0, #2
POP             {R3,PC}
