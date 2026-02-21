PUSH            {R4-R7,LR}
MOV             R5, R0
ADD             R0, R0, #0x24 ; '$'
ADD             R4, R5, #0x400
VPUSH           {D8}
SUB             SP, SP, #0xC
LDM             R0, {R0-R2}
VMOV            S0, R1
STMEA           SP, {R0-R2}
MOV             R1, SP
VLDR            S1, [R4,#0x2C]
MOV             R0, R5
VADD.F32        S0, S0, S1
VLDR            S1, [R4,#0x70]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0x28+var_24]
BL              sub_14E984
LDR             R0, [R5,#0x460]
LDR             R6, =off_6CDA80
MOV             R7, #5
CMP             R0, #0
BEQ             loc_22C0AC
CMP             R0, #1
BNE             loc_22C0F0
LDR             R0, [R6]
LDR             R1, =0x126F8
LDR             R1, [R1,R0]
LDRB            R1, [R1]
CMP             R1, #2
BEQ             loc_22C0EC
BL              sub_5C96FC
CMP             R0, #0
BNE             loc_22C0EC
B               loc_22C0FC
VLDR            S0, [R5,#0x28]
VLDR            S1, [R4,#0x70]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_22C0F0
LDR             R0, [R6]
LDR             R1, =0x126F8
LDR             R1, [R1,R0]
LDRB            R1, [R1]
CMP             R1, #2
BEQ             loc_22C0EC
BL              sub_5C96FC
CMP             R0, #0
MOVEQ           R0, #1
STREQ           R0, [R5,#0x460]
BEQ             loc_22C0F0
STRB            R7, [R5,#0x45C]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R6]
LDR             R1, =0x126EC
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x3FC]
CMP             R1, #8
BNE             loc_22C0F0
LDR             R1, =0x126F0
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x3FC]
CMP             R1, #8
BNE             loc_22C0F0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2E8
MOV             R1, #8
LDR             R4, [R0]
ADD             R0, R4, #0x78 ; 'x'
STRB            R1, [R4]
BL              sub_5A18EC
VLDR            S16, =0.0
ADD             R0, R4, #0xE4
VSTR            S16, [R4,#0x84]
VSTR            S16, [R4,#0x7C]
BL              sub_5A18EC
VSTR            S16, [R4,#0xF0]
VSTR            S16, [R4,#0xE8]
MOV             R0, R5
BL              sub_22B780
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
