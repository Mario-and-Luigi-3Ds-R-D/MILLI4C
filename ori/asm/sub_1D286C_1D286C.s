LDR             R1, =0x1A006C
LDRB            R1, [R1,R0]
CMP             R1, #0
BXEQ            LR
PUSH            {LR}
SUB             SP, SP, #0xC
LDR             R1, =off_6CE9A0; "UseItem" ...
ADD             R2, SP, #0x10+var_C
VLDR            S0, =60.0
LDR             R1, [R1,#(dword_6CE9A4 - 0x6CE9A0)]
STR             R1, [SP,#0x10+var_10]
STR             R1, [SP,#0x10+var_C]
MOV             R1, SP
BL              sub_1D23A4
ADD             SP, SP, #0xC
POP             {PC}
