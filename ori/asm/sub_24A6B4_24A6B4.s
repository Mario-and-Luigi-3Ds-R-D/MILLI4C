ADD             R1, R0, #0x7C ; '|'
LDM             R1, {R1,R2}
CMP             R2, R1
BXEQ            LR
PUSH            {R4-R6}
MOV             R6, #0
LDR             R5, =off_6CE098
MOV             R12, #1
LDR             R2, [R1]
ADD             R1, R1, #0xC
STRB            R12, [R2,#0x3FC]
LDR             R3, [R5]
VLDR            S2, [R2,#0x30]
LDR             R4, [R3,#0x68]
LDR             R3, [R3,#0x8C]
LDR             R4, [R4,#0xA74]
VLDR            S1, [R3,#0x378]
VLDR            S0, [R4,#0x2C]
VSUB.F32        S0, S0, S2
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
STRBCC          R6, [R2,#0xF6]
STRBCC          R12, [R2]
LDR             R2, [R0,#0x80]
CMP             R2, R1
BNE             loc_24A6D4
POP             {R4-R6}
BX              LR
