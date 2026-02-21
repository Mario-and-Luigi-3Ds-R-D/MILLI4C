PUSH            {R4,R5,LR}
ADD             R5, R2, #0x6C ; 'l'
LDR             R3, [R2,#0x18]
LDR             R1, [R2,#8]!
SUB             SP, SP, #0x44
LDR             R0, [R2,#0x74]
MOV             R2, #0
STR             R2, [SP,#0x50+var_2C]
STR             R0, [SP,#0x50+var_28]
VLDR            S0, =1.0
SXTB            R4, R3
STRB            R2, [SP,#0x50+var_30]
STRB            R2, [SP,#0x50+var_40]
STR             R2, [SP,#0x50+var_3C]
ADD             R3, SP, #0x50+var_30
UXTH            R1, R1
MOV             R0, SP
VSTR            S0, [SP,#0x50+var_38]
MOV             R2, R3
BL              sub_47FB30
LDRH            R1, [SP,#0x50+var_4E]
ADD             R0, SP, #0x50+var_1C
VLDR            S0, [SP,#0x50+var_28]
AND             R1, R1, #0xFF
MOV             R2, R4
BL              sub_47F5E8
LDR             R0, =off_6CE970
ADD             R3, SP, #0x50+var_1C
MOV             R2, R5; int
MOV             R1, SP; int
LDR             R0, [R0]; int
BL              sub_5294A4
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, #0
POP             {R4,R5,PC}
