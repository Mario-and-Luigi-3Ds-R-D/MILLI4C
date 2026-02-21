PUSH            {R4,LR}
SUB             SP, SP, #0x10
MOV             R4, R0
MOV             R0, #0
STR             R0, [SP,#0x18+var_14]; int
STR             R0, [SP,#0x18+var_10]; float
LDR             R0, =0x13D04
MOV             R2, #0x7F
STR             R2, [SP,#0x18+var_18]; int
ADD             R3, R4, #0x13C00
LDRH            R2, [R0,R4]; int
LDR             R0, [R4,#4]; int
ADD             R3, R3, #0x5C ; '\'; int
BL              sub_532794
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0xFC
STR             R0, [R4]
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4,PC}
