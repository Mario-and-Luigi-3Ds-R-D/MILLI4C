PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
VPUSH           {D8}
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
BL              sub_160D3C
CMP             R0, #0
MOVNE           R0, #0x14
BEQ             loc_15A370
STRH            R0, [R4,#0xFA]
VPOP            {D8}
POP             {R4-R6,PC}
LDRSH           R0, [R4,#0xFA]
CMP             R0, #0
SUBGT           R0, R0, #1
BGT             loc_15A364
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160B54
VLDR            S2, [R0]
VLDR            S1, =-80.0
VLDR            S0, [R0,#4]
VLDR            S3, =60.0
VADD.F32        S1, S2, S1
VLDR            S5, =80.0
VLDR            S4, =-60.0
VADD.F32        S3, S0, S3
VADD.F32        S2, S2, S5
VADD.F32        S0, S0, S4
VLDR            S4, [R4,#0xC8]
VLDR            S17, =15.0
VCMPE.F32       S4, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_15A3F8
VCMPE.F32       S4, S2
VMRS            APSR_nzcv, FPSCR
BGT             loc_15A3F8
VLDR            S1, [R4,#0xCC]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCC             loc_15A3F8
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BLE             loc_15A444
LDR             R0, [R4,#0xFC]
TST             R0, #0x40
BNE             loc_15A368
ORR             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0xFC]
LDR             R0, [R5]
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160CEC
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xC0]
VMOV.F32        S1, S17
VPOP            {D8}
MOV             R1, #0
POP             {R4-R6,LR}
VLDR            S0, =300.0
B               sub_161154
LDR             R0, [R4,#0xFC]
TST             R0, #0x40
BEQ             loc_15A368
BIC             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0xFC]
LDR             R0, [R5]
VLDR            S16, =220.0
LDR             R0, [R0,#0xC0]
NOP
NOP
BL              sub_160CEC
LDR             R0, [R5]
NOP
LDR             R0, [R0,#0xC0]
VMOV.F64        D0, D8
VPOP            {D8}
MOV             R1, #0
POP             {R4-R6,LR}
B               sub_161154
