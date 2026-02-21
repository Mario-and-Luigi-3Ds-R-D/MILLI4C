PUSH            {R4-R6,LR}
MOV             R4, R0
CMN             R2, #1
VPUSH           {D8}
VMOV.F32        S16, S0
LDRBEQ          R0, [R4,#0x110]
MOV             R6, R2
VLDR            S17, =0.0
SUBEQ           R6, R0, #1
CMP             R3, #0
BEQ             loc_21DA28
CMP             R3, #1
BEQ             loc_21DA88
CMP             R3, #2
MOV             R2, #1
ADD             R0, R4, R1,LSL#2
BEQ             loc_21DAF4
CMP             R3, #3
BNE             loc_21DA80
SUB             R3, R6, R1
ADD             R12, R3, #1
CMP             R12, #0
MOVLE           R2, #0
BLE             loc_21DBB8
BIC             R2, R2, R3
CMP             R2, #1
BNE             loc_21DBB8
B               loc_21DB98
CMP             R1, R6
MOV             R5, R1
BGT             loc_21DA80
VCMP.F32        S16, S17
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x10]
VMRS            APSR_nzcv, FPSCR
LDRBNE          R2, [R0,#0x649]
MOVEQ           R1, #0
MOVEQ           R2, R1
STRB            R2, [R0,#0x648]
LDRB            R2, [R0,#0xDE]
MOVNE           R1, #1
BIC             R2, R2, #1
ORR             R2, R2, R1
STRB            R2, [R0,#0xDE]
LDR             R2, [R0]
LDR             R2, [R2,#0x84]
BLX             R2
ADD             R5, R5, #1
CMP             R5, R6
BLE             loc_21DA34
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R2, R6, #1
CMP             R1, R2
BGE             loc_21DA80
ADD             R0, R4, R1,LSL#2
VCMP.F32        S16, S17
LDR             R0, [R0,#0x10]
ADD             R3, R4, R1,LSL#2
LDR             R12, [R3,#0x10]
LDR             R0, [R0,#0x8F4]
VMRS            APSR_nzcv, FPSCR
ORRNE           R0, R0, #4
BICEQ           R0, R0, #4
TST             R0, #0x10
STR             R0, [R12,#0x8F4]
LDR             R0, [R3,#0x10]
BEQ             loc_21DAE0
VCMP.F32        S16, S17
LDR             R3, [R0,#0x648]
VMRS            APSR_nzcv, FPSCR
ORREQ           R3, R3, #0x1000000
BICNE           R3, R3, #0x1000000
STR             R3, [R0,#0x648]
ADD             R1, R1, #1
CMP             R1, R2
BLT             loc_21DA94
VPOP            {D8}
POP             {R4-R6,PC}
SUB             R3, R6, R1
ADD             R12, R3, #1
CMP             R12, #0
MOVLE           R2, #0
BLE             loc_21DB34
BIC             R2, R2, R3
CMP             R2, #1
BNE             loc_21DB34
VCMP.F32        S16, S17
LDR             R3, [R0,#0x10]
LDR             R0, [R0,#0x10]
LDR             R3, [R3,#0x648]
VMRS            APSR_nzcv, FPSCR
ORRNE           R3, R3, #2
BICEQ           R3, R3, #2
STR             R3, [R0,#0x648]
ADD             R1, R1, R2
ADD             R2, R6, #1
CMP             R1, R2
BGE             loc_21DA80
ADD             R0, R4, R1,LSL#2
VCMP.F32        S16, S17
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x648]
VMRS            APSR_nzcv, FPSCR
ORRNE           R3, R0, #2
BICEQ           R3, R0, #2
ADD             R0, R4, R1,LSL#2
ADD             R1, R1, #2
LDR             R12, [R0,#0x10]
STR             R3, [R12,#0x648]
LDR             R3, [R0,#0x14]
LDR             R0, [R0,#0x14]
LDR             R3, [R3,#0x648]
ORRNE           R3, R3, #2
BICEQ           R3, R3, #2
CMP             R1, R2
STR             R3, [R0,#0x648]
BLT             loc_21DB44
VPOP            {D8}
POP             {R4-R6,PC}
VCMP.F32        S16, S17
LDR             R3, [R0,#0x10]
LDR             R0, [R0,#0x10]
LDR             R3, [R3,#0x648]
VMRS            APSR_nzcv, FPSCR
ORRNE           R3, R3, #4
BICEQ           R3, R3, #4
STR             R3, [R0,#0x648]
ADD             R0, R2, R1
ADD             R3, R6, #1
CMP             R0, R3
BGE             loc_21DA80
ADD             R1, R4, R0,LSL#2
VCMP.F32        S16, S17
LDR             R1, [R1,#0x10]
LDR             R1, [R1,#0x648]
VMRS            APSR_nzcv, FPSCR
ORRNE           R2, R1, #4
BICEQ           R2, R1, #4
ADD             R1, R4, R0,LSL#2
ADD             R0, R0, #2
LDR             R12, [R1,#0x10]
STR             R2, [R12,#0x648]
LDR             R2, [R1,#0x14]
LDR             R1, [R1,#0x14]
LDR             R2, [R2,#0x648]
ORRNE           R2, R2, #4
BICEQ           R2, R2, #4
CMP             R0, R3
STR             R2, [R1,#0x648]
BLT             loc_21DBC8
VPOP            {D8}
POP             {R4-R6,PC}
