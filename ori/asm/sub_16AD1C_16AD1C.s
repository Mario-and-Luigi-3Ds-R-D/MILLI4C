PUSH            {R4-R6,LR}
MOV             R5, R0
ADD             R0, R0, #0x400
VPUSH           {D8}
LDRH            R0, [R0,#0x68]
CMP             R0, #0x10
BEQ             loc_16AD8C
MOV             R0, R5
BL              sub_540954
ADD             R5, R5, #0x2700
ADD             R5, R5, #0x6F ; 'o'
LDR             R4, =off_6D1648
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_16AEF8
LDR             R0, [R4]
BL              sub_1E45C8
LDRH            R0, [R0,#0x3C]
CMP             R0, #0
BEQ             loc_16AEEC
LDR             R0, [R4]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xA4]
MOV             R1, #0
VPOP            {D8}
POP             {R4-R6,LR}
BX              R2
LDR             R0, =0x2698
MOV             R4, #0
VLDR            S16, =0.0
LDRB            R0, [R0,R5]
TST             R0, #2
LDR             R0, [R5,#0x4EC]
MOVNE           R4, #1
TST             R0, #1
ADDNE           R4, R4, #4
BNE             loc_16ADF4
TST             R0, #2
BEQ             loc_16ADE4
VMOV.F32        S0, S16
LDR             R0, [R5,#0x66C]
ADD             R4, R4, #6
MOV             R2, #0
MOV             R1, R5
VMOV.F32        S1, S0
BL              sub_1459F8
NOP
NOP
B               loc_16ADF4
VLDR            S0, [R5,#0x124]
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
ADDEQ           R4, R4, #2
LDR             R0, [R5,#0x7FC]
LDRB            R1, [R0,#0x6C]
CMP             R1, R4
BEQ             loc_16AE54
CMP             R1, #6
BCC             loc_16AE24
LDRH            R0, [R0,#0x1A]
TST             R0, #1
BEQ             loc_16AE24
CMP             R4, #2
CMPNE           R4, #3
BEQ             loc_16AE54
LDR             R0, [R5]
MOV             R3, #0
MOV             R2, R3
MOV             R1, R4
LDR             R12, [R0,#0x34C]
MOV             R0, R5
BLX             R12
CMP             R4, #6
BLT             loc_16AE54
LDR             R0, [R5,#0x7FC]
MOV             R1, #1
STRH            R1, [R0,#0x16]
LDR             R0, [R5,#0x7FC]
VLDR            S1, =0.0039062
MOV             R2, #0x200
LDRB            R3, [R0,#0x6C]
LDRSH           R1, [R0,#0x14]
CMP             R3, #2
BCS             loc_16AE98
VLDR            S2, [R5,#0x124]
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_16AEB0
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BHI             loc_16AEB0
MOV             R1, R2
ADD             R0, R0, #0x10
BL              sub_123CE8
NOP
NOP
B               loc_16AD40
VCMPE.F32       S2, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_16AD40
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLT             loc_16AD40
LDR             R1, =0xFFFFFE00
ADD             R0, R0, #0x10
BL              sub_123CE8
NOP
NOP
B               loc_16AD40
LDRB            R0, [R5]
CMP             R0, #0
BNE             loc_16AF2C
LDR             R0, [R4]
BL              sub_1E45C8
LDRH            R0, [R0,#0x3C]
CMP             R0, #0
BEQ             loc_16AF2C
LDR             R0, [R4]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R2, [R1,#0xA0]
MOV             R1, #0
VPOP            {D8}
POP             {R4-R6,LR}
BX              R2
VPOP            {D8}
POP             {R4-R6,PC}
