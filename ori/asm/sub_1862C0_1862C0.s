PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R1, R0, #0x400
LDR             R0, =off_6D1648
LDRH            R1, [R1,#0x68]
LDR             R2, [R4,#0x648]
ADD             R5, R4, #0x400
LDR             R0, [R0]
CMP             R1, #1
ADD             R5, R5, #0x248
LDR             R0, [R0,#0xC4]
LDR             R1, [R0,#4]
AND             R0, R2, #0x2000000
MOV             R6, R0,LSR#25
LDR             R0, [R1,#4]
BNE             loc_18632C
LDR             R1, [R1,#0x14]
TST             R1, #0x10000
BEQ             loc_18632C
TST             R1, #0x80000
BEQ             loc_18632C
ADD             R1, R0, #0x400
VLDR            S1, =0.0
VLDR            S0, [R1,#0xB8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLS             loc_18634C
LDR             R1, =0x65E
LDRSB           R1, [R1,R0]
CMN             R1, #1
BEQ             loc_186354
LDR             R1, [R4,#0x66C]
LDR             R0, [R0,#0x66C]
CMP             R1, R0
BNE             loc_186354
BIC             R0, R2, #0x2000000
STR             R0, [R5]
MOV             R0, R4
BL              sub_174300
LDR             R0, [R4,#0x648]
BIC             R0, R0, #0x2000000
ORR             R0, R0, R6,LSL#25
STR             R0, [R5]
POP             {R4-R6,PC}
