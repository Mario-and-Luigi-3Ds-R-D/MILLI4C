PUSH            {R4-R6,LR}
MOV             R5, R0
VPUSH           {D8-D9}
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             loc_16B598
ADD             R0, R5, #0x400
VLDR            S1, =2.0
VLDR            S0, [R0,#0xC8]
LDR             R1, =0x2686
VMUL.F32        S0, S0, S1
LDRB            R1, [R1,R5]
CMP             R1, #1
BEQ             loc_16B4F4
ADD             R0, R0, #0x224
VLDR            S1, [R5,#0x108]
VLDR            S16, [R5,#0x10C]
VLDM            R0, {S2-S3}
VADD.F32        S17, S1, S2
VADD.F32        S18, S1, S3
VSUB.F32        S19, S16, S0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x16C]
CMP             R4, #0
BEQ             loc_16B598
CMP             R4, R5
BEQ             loc_16B58C
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_16B58C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
ADD             R2, R0, R0,LSL#1
ADD             R0, R5, #0x640
LDM             R0, {R0,R1}
BL              sub_14351C
TST             R0, #7
NOP
BEQ             loc_16B58C
LDR             R1, [R5,#0x648]
LDR             R0, [R4,#0x648]
MOV             R1, R1,LSL#28
TST             R0, R1,LSR#31
BEQ             loc_16B58C
ADD             R0, R4, #0x400
VLDR            S0, [R4,#0x108]
VLDR            S1, [R0,#0x228]
VADD.F32        S1, S0, S1
VCMPE.F32       S1, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_16B58C
VLDR            S1, [R0,#0x224]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BGE             loc_16B58C
VLDR            S0, [R4,#0x10C]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_16B58C
VLDR            S1, [R0,#0x234]
VADD.F32        S0, S0, S1
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
BLS             loc_16B58C
LDR             R0, [R5,#0x740]
CMP             R0, #0
BNE             loc_16B580
B               loc_16B55C
ADD             R1, R5, #0x2400
ADD             R1, R1, #0x2C4
VLDR            S1, [R5,#0x10C]
LDR             R0, =0x2698
VLDR            S2, [R5,#0x108]
VLDM            R1, {S3-S6}
LDRB            R0, [R0,R5]
VADD.F32        S17, S2, S3
VADD.F32        S18, S2, S4
VADD.F32        S19, S1, S6
VADD.F32        S16, S1, S5
CMP             R0, #0
VMOVEQ.F32      S16, S19
BEQ             loc_16B41C
CMP             R0, #1
VMOVEQ.F32      S18, S17
VSUBEQ.F32      S17, S17, S0
BEQ             loc_16B420
CMP             R0, #2
VMOVEQ.F32      S19, S16
VADDEQ.F32      S16, S16, S0
BEQ             loc_16B420
CMP             R0, #3
VMOVEQ.F32      S17, S18
VADDEQ.F32      S18, S17, S0
B               loc_16B420
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BEQ             loc_16B580
STR             R4, [R5,#0x740]
LDRB            R0, [R4,#0xDC]
STRB            R0, [R5,#0x65E]
MOV             R0, #1
VPOP            {D8-D9}
POP             {R4-R6,PC}
LDR             R4, [R4,#8]
CMP             R4, #0
BNE             loc_16B43C
VPOP            {D8-D9}
MOV             R0, #0
POP             {R4-R6,PC}
