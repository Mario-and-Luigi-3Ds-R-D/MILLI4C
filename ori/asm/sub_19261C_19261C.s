PUSH            {R4-R10,LR}
MOV             R8, R0
VPUSH           {D8}
LDR             R0, [R0]
LDR             R1, [R0,#0x2F4]
MOV             R0, R8
BLX             R1
LDR             R0, =0x13AD0
VLDR            S16, =0.0
ADD             R9, R8, #0x13800
ADD             R10, R8, #0x13800
LDRH            R0, [R0,R8]
ADD             R9, R9, #0x2C4
CMP             R0, #0
BNE             loc_192674
LDR             R0, [R10,#0x308]
CMP             R0, #0x40000000
BGE             loc_192674
VLDR            S0, [R9,#0x1C]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_192720
ADD             R7, R8, #0x14000
MOV             R6, #0
LDRB            R0, [R7,#0x28D]
ADD             R4, R8, #0x14000
ADD             R4, R4, #0x184
CMP             R0, #0
MOV             R5, R6
BLE             loc_1926EC
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #2
BCS             loc_1926D0
LDR             R0, [R4]
ADD             R1, R0, #0x870
LDR             R2, [R0]
LDR             R2, [R2,#0xF8]
BLX             R2
LDR             R0, [R4]
LDR             R0, [R0,#0x870]
AND             R0, R0, #7
ORR             R6, R6, R0
LDRB            R0, [R7,#0x28D]
ADD             R5, R5, #1
ADD             R4, R4, #4
CMP             R0, R5
BGT             loc_192694
CMP             R6, #0
BNE             loc_192720
LDR             R0, [R10,#0x308]
CMP             R0, #0x40000000
BGE             loc_192708
VLDR            S0, [R9,#0x1C]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_192720
LDR             R0, [R8]
LDR             R1, [R0,#0x48]
MOV             R0, R8
VPOP            {D8}
POP             {R4-R10,LR}
BX              R1
VPOP            {D8}
POP             {R4-R10,PC}
