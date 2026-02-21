PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
LDRB            R0, [R0,#0x374]
TST             R0, #1
BEQ             loc_195B50
TST             R0, #8
BNE             loc_195B50
LDR             R0, [R4,#0x3C]
TST             R0, #1
LDREQ           R1, [R4,#0x38]
ADD             R0, R4, R0,ASR#1
BEQ             loc_1959C4
LDR             R2, [R0]
LDR             R1, [R4,#0x38]
LDR             R1, [R2,R1]
NOP
BLX             R1
LDRB            R1, [R4,#0x374]
ADD             R5, R4, #0x300
TST             R1, #0x20
BEQ             loc_195AD0
TST             R1, #0x40
BNE             loc_195ADC
LDRSB           R3, [R5,#0x78]
LDRSB           R2, [R5,#0x76]
LDR             R12, =0x147B
LDRSB           R0, [R5,#0x77]
RSB             R3, R3, R3,LSL#4
RSB             R2, R2, R2,LSL#4
MOV             R3, R3,LSL#2
ADD             R0, R0, R2,LSL#2
SMULBB          R3, R3, R12
RSB             R0, R0, R0,LSL#4
MOV             R2, R3,ASR#19
SUB             R2, R2, R3,ASR#31
ADD             R6, R2, R0,LSL#2
LDRSB           R2, [R5,#0x7C]
LDRSB           R0, [R5,#0x7A]
LDRSB           R3, [R5,#0x7B]
RSB             R2, R2, R2,LSL#4
RSB             R0, R0, R0,LSL#4
MOV             R2, R2,LSL#2
ADD             R0, R3, R0,LSL#2
SMULBB          R2, R2, R12
RSB             R0, R0, R0,LSL#4
MOV             R3, R2,ASR#19
SUB             R2, R3, R2,ASR#31
ADD             R0, R2, R0,LSL#2
LDRSB           R2, [R5,#0x75]
CMP             R2, #0
BLE             loc_195A60
CMP             R6, R0
BCC             loc_195B50
B               loc_195A70
NOP
BGE             loc_195B50
CMP             R6, R0
BHI             loc_195B50
ORR             R0, R1, #0x40 ; '@'
TST             R0, #0x40
STRB            R0, [R4,#0x374]
BEQ             loc_195B50
CMP             R2, #0
VLDR            S0, =180.0
VLDR            S16, =8.0
VSTR            S0, [R4,#0x380]
ADD             R0, R4, #0x384
BLT             loc_195AA8
BL              sub_5A18EC
VSTR            S16, [R4,#0x390]
VSTR            S16, [R4,#0x388]
B               loc_195AD0
NOP
BL              sub_5A18EC
VMOV            S0, R6
VSTR            S16, [R4,#0x388]
VSTR            S16, [R4,#0x390]
MOV             R1, #0
ADD             R0, R4, #0x384
VCVT.F32.U32    S1, S0
VLDR            S0, =80.0
BL              sub_5A13F0
LDRB            R0, [R4,#0x374]
TST             R0, #0x40
BEQ             loc_195B50
LDRB            R0, [R5,#0x75]
CMP             R0, #0
BEQ             loc_195B4C
VLDR            S0, [R4,#0x380]
VLDR            S1, [R4,#0x388]
VLDR            S16, =1.0
ADD             R0, R4, #0x384
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x380]
VMOV.F32        S0, S16
BL              sub_5A176C
VLDR            S0, [R4,#0x380]
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VADD.F32        S0, S0, S16
VLDR            S1, =0.5
VLDR            S3, =255.0
VLDR            S2, =128.0
VMUL.F32        S0, S0, S1
VMUL.F32        S1, S0, S3
VMUL.F32        S2, S0, S2
VCVT.U32.F32    S0, S1
VCVT.U32.F32    S1, S2
VMOV            R0, S0
VMOV            R1, S1
AND             R1, R1, #0xFF
ORR             R0, R1, R0,LSL#24
STR             R0, [R4,#0x3B8]
VPOP            {D8}
POP             {R4-R6,PC}
