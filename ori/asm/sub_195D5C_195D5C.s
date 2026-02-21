PUSH            {R4,LR}
MOV             R4, R0
VLDR            S0, =1.0
ADD             R0, R0, #0x3BC
BL              sub_5A2484
ADD             R0, R4, #0x3C0
ADD             R3, R4, #4
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R4, #0x3BC
BL              sub_5F19B8
CMP             R0, #0
BNE             locret_195DAC
LDRB            R0, [R4,#0x374]
LDR             R1, =off_67E4F0
BIC             R0, R0, #4
ORR             R0, R0, #2
STRB            R0, [R4,#0x374]
LDRD            R0, R1, [R1]
STRD            R0, R1, [R4,#0x38]
POP             {R4,PC}
