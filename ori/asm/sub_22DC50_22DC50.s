PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R8, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDRB            R0, [R1]
TST             R0, #1
BEQ             loc_22DD9C
TST             R0, #2
BNE             loc_22DD9C
TST             R0, #4
BNE             loc_22DCAC
TST             R0, #0x10
BEQ             loc_22DCAC
VLDR            S0, [R6,#0x1F4]
VLDR            S1, [R6,#0x200]
VADD.F32        S0, S0, S1
VNEG.F32        S1, S1
VSTR            S0, [R6,#0x1F4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVLE.F32      S0, S1
VSTR            S0, [R6,#0x1F4]
VLDR            S0, [R6,#8]
VLDR            S1, [R6,#0x1F4]
MOV             R7, SP
ADD             R5, R6, #0x10
VADD.F32        S16, S0, S1
MOV             R4, #0
VMOV            R0, S16
VSTR            S16, [R6,#8]
CMP             R0, #0x3F800000
VLDRGT          S16, =1.0
VSTR            S16, [R6,#8]
ADD             R0, R5, R4,LSL#2
LDRB            R12, [R5,#1]
VMOV.F32        S0, S16
LDR             R1, [R0,#8]
LDR             R3, [R0,#0x18]
LDR             R2, [R5,#0x14]
MOV             R0, R12
BL              sub_1CB1F8
ADD             R0, R7, R4,LSL#2
ADD             R4, R4, #1
CMP             R4, #3
VSTR            S0, [R0]
BLT             loc_22DCD8
LDRB            R0, [R6]
TST             R0, #0x20
BEQ             loc_22DD44
ADD             R1, R8, #0x108
VLDMEA          SP, {S0-S2}
LDR             R0, [R8]
VLDM            R1, {S3-S5}
LDR             R1, [R0,#0x58]
MOV             R0, R8
VSUB.F32        S0, S0, S3
VSUB.F32        S2, S2, S5
VSUB.F32        S1, S1, S4
BLX             R1
B               loc_22DD50
LDMFD           SP, {R0-R2}
ADD             R8, R8, #0x108
STM             R8, {R0-R2}
LDRB            R0, [R6]
TST             R0, #0x14
BNE             loc_22DD9C
VLDR            S2, [R6,#0x1F8]
VLDR            S0, =0.0
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_22DD9C
VLDR            S0, [R6,#0x1F4]
VLDR            S1, [R6,#0x1FC]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_22DD9C
VADD.F32        S0, S0, S2
VSTR            S0, [R6,#0x1F4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [R6,#0x1F4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R8,PC}
