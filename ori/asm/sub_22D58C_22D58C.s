LDR             R3, [R2]
TST             R3, #7
BXEQ            LR
BIC             R3, R3, #7
CMP             R1, #0
STR             R3, [R2]
BXEQ            LR
PUSH            {LR}
LDR             R1, [R2,#0x34]
SUB             SP, SP, #0xC
CMP             R1, #0
BEQ             loc_22D5EC
ADD             R1, R1, #0x108
VLDR            S2, [R2,#0x28]
ADD             R2, R2, #0x2C ; ','
VLDM            R1, {S3-S5}
ADD             R3, SP, #0x10+var_C
VLDM            R2, {S0-S1}
VADD.F32        S2, S3, S2
VADD.F32        S0, S4, S0
VADD.F32        S1, S5, S1
VSTR            S2, [SP,#0x10+var_10]
VSTM            R3, {S0-S1}
B               loc_22D600
ADD             R1, R2, #0x28 ; '('
LDR             R2, [R2,#0x30]
LDM             R1, {R1,R3}
STR             R2, [SP,#0x10+var_8]
STMEA           SP, {R1,R3}
LDR             R1, [R0]
LDR             R2, [R1,#0x128]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0xC
POP             {PC}
