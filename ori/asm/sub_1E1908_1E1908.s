PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #8
BL              sub_1E091C
MOV             R0, R4
BL              sub_1E06D8
LDR             R0, [R4,#0x1A0]
TST             R0, #0x40
MOVNE           R0, R4
BLNE            sub_1E1250
LDR             R6, =off_6D1648
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
VLDR            S16, =0.0
LDR             R0, [R0]
LDR             R0, [R0,#0x84]
AND             R0, R0, #0x20 ; ' '
MOVS            R0, R0,LSR#5
BEQ             loc_1E19D8
LDR             R0, [R4,#0x1A0]
TST             R0, #0x80
BEQ             loc_1E199C
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0]
VLDR            S0, [R0,#0x40]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E199C
LDR             R0, [R4,#0x1A0]
BIC             R0, R0, #0x80
STR             R0, [R4,#0x1A0]
LDR             R0, [R4,#0x1A0]
TST             R0, #0x100
BEQ             loc_1E19D8
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0]
VLDR            S0, [R0,#0x40]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E19D8
LDR             R0, [R4,#0x1A0]
BIC             R0, R0, #0x100
STR             R0, [R4,#0x1A0]
LDR             R0, [R4,#0x1A0]
VLDR            S17, =1.0
MOV             R1, #0x80
TST             R0, #0x180
LDRNE           R2, [R4,#0xA0]
CMPNE           R2, #0
BEQ             loc_1E1A18
VLDR            S0, [R4,#0xC]
VLDR            S1, =0.03
VSUB.F32        S1, S0, S1
VSTR            S1, [R4,#0xC]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S1, S16
VSTR            S1, [R4,#0xC]
B               loc_1E1A30
BIC             R0, R0, #0x100
BIC             R2, R0, #0x80
AND             R0, R1, R0,LSR#1
ORR             R0, R0, R2
VSTR            S17, [R4,#0xC]
STR             R0, [R4,#0x1A0]
TST             R0, #8
BEQ             loc_1E1A4C
MOV             R0, R4
BL              sub_1E0B38
NOP
NOP
B               loc_1E1AE4
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19AA00
CMP             R0, #0
NOP
BEQ             loc_1E1AD4
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #7
NOP
BNE             loc_1E1AD4
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0]
LDR             R1, [R0,#4]
LDR             R1, [R1,#0x19C]
CMP             R1, R0
BNE             loc_1E1AD4
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
LDR             R0, [R0]
LDR             R0, [R0,#0x84]
AND             R0, R0, #0x40 ; '@'
MOVS            R0, R0,LSR#6
BEQ             loc_1E1B5C
LDR             R0, [R4,#0x1A0]
TST             R0, #0x20
MOVNE           R0, R4
BLNE            sub_1E136C
LDR             R0, [R6]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x14C00
ADD             R0, R0, #0x24 ; '$'
LDR             R1, [R4,#0xBC]
LDR             R0, [R0]
STR             R1, [R0,#0x64]
LDR             R0, [R4,#0x1A0]
TST             R0, #4
BEQ             loc_1E1BEC
LDR             R0, [R6]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R5, [R1,#4]
VSTR            S16, [SP,#0x20+var_20]
VLDR            S1, [R4,#0xB0]
VCMP.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1E1B9C
VCMPE.F32       S1, S16
VLDR            S0, =5.0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E1B70
VSUB.F32        S1, S1, S0
VSTR            S1, [R4,#0xB0]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E1B84
VMOV.F32        S16, S1
B               loc_1E1B84
MOV             R0, R4
BL              sub_1E04B8
NOP
NOP
B               loc_1E1AE4
VADD.F32        S1, S1, S0
VSTR            S1, [R4,#0xB0]
VCMPE.F32       S1, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_1E1B54
VSTR            S16, [R4,#0xB0]
VMOV            R5, S16
BL              sub_1E4614
STR             R5, [R0,#0x110]
NOP
B               loc_1E1BEC
LDR             R0, [R4,#0xA4]
CMP             R0, #0
BEQ             loc_1E1BCC
MOV             R1, SP
BL              sub_300BF0
CMP             R0, #0
NOP
BEQ             loc_1E1BCC
VLDR            S0, [R5,#0x108]
VLDR            S1, [SP,#0x20+var_20]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#0x108]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B924
CMP             R0, #0
MOVNE           R0, R4
BLNE            sub_1E0C44
ADD             R0, R4, #0x10
BL              sub_1C8840
ADD             R0, R4, #0x58 ; 'X'
NOP
BL              sub_1C8840
VMOV.F32        S0, S17
ADD             R0, R4, #0xDC
BL              sub_5A176C
LDR             R1, [R4,#0x178]
CMP             R1, #0
BNE             loc_1E1C2C
LDR             R0, [R4,#0x17C]
TST             R0, #1
BEQ             loc_1E1C68
CMP             R0, #0
BEQ             loc_1E1C68
LDR             R0, [R4,#0x17C]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_1E1C44
LDR             R2, [R0]
LDR             R1, [R2,R1]
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,LR}
BX              R1
DCD off_6D1648
DCFS 0.0
DCFS 1.0
DCFS 0.03
DCFS 5.0
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R6,PC}
