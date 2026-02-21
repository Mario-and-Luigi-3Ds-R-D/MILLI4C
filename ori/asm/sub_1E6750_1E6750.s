MOV             R3, R2
MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
PUSH            {R0-R11,LR}
MOV             R4, R1
MOV             R6, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x84
LDR             R0, [SP,#0xD0+var_2C]
STR             R0, [SP,#0xD0+var_70]
ADD             R0, R0, #0x14
BL              sub_5D020C
CMP             R0, #0
BEQ             loc_1E6A00
LDR             R1, [R6,#0x5BC]
LDRB            R0, [R4,#0x2F4]
ADD             R5, R6, #0x400
STR             R1, [SP,#0xD0+var_D0]
LDR             R2, [R6,#0x5C0]
AND             R1, R0, #7
STR             R1, [SP,#0xD0+var_78]
STR             R2, [SP,#0xD0+var_C0]
LDR             R1, [R6,#0x5C4]
ADD             R7, SP, #0xD0+var_98
STR             R1, [SP,#0xD0+var_A8]
LDR             R1, [R6,#0x5C8]
STR             R1, [SP,#0xD0+var_98]
LDR             R1, [R6,#0x5CC]
STR             R1, [SP,#0xD0+var_88]
AND             R1, R0, #7
SUB             R8, R1, #1
CMP             R8, #0
MOV             R0, #0
ADDGT           R12, SP, #0xD0+var_88
BLE             loc_1E6840
ADD             R1, R4, R0,LSL#4
MOV             R3, SP
ADD             R9, R3, R0,LSL#2
VLDR            S0, [R1,#0x240]
ADD             R3, SP, #0xD0+var_C0
VSTR            S0, [R9,#4]
ADD             R10, R3, R0,LSL#2
VLDR            S0, [R1,#0x244]
ADD             R3, SP, #0xD0+var_A8
VSTR            S0, [R10,#4]
LDR             R9, [R1,#0x248]
ADD             R11, R3, R0,LSL#2
ADD             R2, R7, R0,LSL#2
STR             R9, [R11,#4]
LDR             R1, [R1,#0x24C]
ADD             LR, R4, R0,LSL#2
ADD             R3, R12, R0,LSL#2
STR             R1, [R2,#4]
LDR             R1, [LR,#0x270]
ADD             R0, R0, #1
CMP             R8, R0
STR             R1, [R3,#4]
BGT             loc_1E67E4
LDR             R0, [SP,#0xD0+var_70]
LDR             R2, [SP,#0xD0+var_2C]
LDRB            R1, [R0,#0x35]
LDR             R0, [SP,#0xD0+var_28]
CMP             R1, R0
MOVLS           R0, #0
AND             R3, R0, #0xFF
MOV             R1, R4
MOV             R0, R6
BL              sub_1E6D4C
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #2
BEQ             loc_1E69F0
LDR             LR, [R6,#0x5E0]
ADD             R8, R6, #0x5E0
TST             LR, #1
BEQ             loc_1E69E4
LDRB            R0, [R4,#0x2F4]
ADD             R12, R6, #0x600
AND             R1, R0, #7
LDR             R0, [SP,#0xD0+var_78]
CMP             R1, R0
BEQ             loc_1E68C0
LDRH            R0, [R12,#0x5C]
ORR             R1, LR, #0x40 ; '@'
ORR             R0, R0, #0x2000
STRH            R0, [R12,#0x5C]
STR             R1, [R8]
B               loc_1E69E4
SUB             R3, R1, #1
CMP             R3, #0
MOV             R0, #0
BLE             loc_1E69E4
VLDR            S0, [SP,#0xD0+var_D0]
VLDR            S2, [SP,#0xD0+var_C0]
VLDR            S3, [SP,#0xD0+var_A8]
VLDR            S4, [SP,#0xD0+var_98]
VLDR            S5, [SP,#0xD0+var_88]
VLDR            S1, [R5,#0x1BC]
MOV             R1, SP
ADD             R9, SP, #0xD0+var_C0
ADD             R10, SP, #0xD0+var_A8
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S6, [R5,#0x1C0]
VCMPEQ.F32      S6, S2
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_1E6934
VLDR            S6, [R5,#0x1C4]
VCMP.F32        S6, S3
VMRS            APSR_nzcv, FPSCR
VLDREQ          S6, [R5,#0x1C8]
VCMPEQ.F32      S6, S4
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S6, [R5,#0x1CC]
VCMPEQ.F32      S6, S5
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_1E69D8
LDRH            R1, [R12,#0x5C]
ORR             R0, LR, #0x40 ; '@'
ORR             R1, R1, #0x2000
STRH            R1, [R12,#0x5C]
STR             R0, [R8]
B               loc_1E69E4
CMP             R0, #0
BEQ             loc_1E68F4
ADD             R2, R4, R0,LSL#4
ADD             R11, R1, R0,LSL#2
VLDR            S6, [R2,#0x230]
VLDR            S7, [R11]
VCMP.F32        S6, S7
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E6934
ADD             R11, R9, R0,LSL#2
VLDR            S6, [R2,#0x234]
VLDR            S7, [R11]
VCMP.F32        S6, S7
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E6934
ADD             R11, R10, R0,LSL#2
VLDR            S6, [R2,#0x238]
VLDR            S7, [R11]
VCMP.F32        S6, S7
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E6934
ADD             R11, R7, R0,LSL#2
VLDR            S6, [R2,#0x23C]
VLDR            S7, [R11]
VCMP.F32        S6, S7
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E6934
ADD             R2, SP, #0xD0+var_88
ADD             R11, R4, R0,LSL#2
ADD             R2, R2, R0,LSL#2
VLDR            S6, [R11,#0x26C]
VLDR            S7, [R2]
VCMP.F32        S6, S7
VMRS            APSR_nzcv, FPSCR
BNE             loc_1E6934
ADD             R0, R0, #1
CMP             R3, R0
BGT             loc_1E694C
LDR             R0, [R6,#0x5E0]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [R8]
ADD             SP, SP, #0x84
VPOP            {D8-D10}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
LDR             R0, [R6]
VLDR            S16, =8.0
VLDR            S17, =32.0
VLDR            S18, =16.0
VLDR            S19, =0.0
VLDR            S20, =-8.0
LDR             R1, [R0,#0x4C]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
LDR             R1, [R0,#0x284]
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R6
BLX             R1
LDR             R0, [R6]
VMOV.F32        S4, S16
VMOV.F32        S3, S17
VMOV.F32        S2, S18
LDR             R1, [R0,#0x2D0]
VMOV.F32        S1, S19
VMOV.F32        S0, S20
MOV             R0, R6
BLX             R1
LDRB            R0, [R4,#0x2F4]
BIC             R0, R0, #0x3F ; '?'
ORR             R0, R0, #9
STRB            R0, [R4,#0x2F4]
B               loc_1E69F0
