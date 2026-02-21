PUSH            {R4-R7,LR}
MOV             R4, R2
LDR             R6, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDR             R1, [R2,#8]!
LDR             R0, [R2,#4]
UXTH            R1, R1
AND             R7, R0, #0xFF
LDR             R0, [R6]
BL              sub_528FF0
MOV             R5, R0
ADD             R1, R5, #0x24 ; '$'
LDRH            R0, [R4]
VLDM            R1, {S16-S18}
CMP             R0, #0xE0
CMPNE           R0, #0xE1
BEQ             loc_210450
CMP             R0, #0xE2
CMPNE           R0, #0xE3
BEQ             loc_210490
B               loc_2104FC
ADD             R1, R4, #0x74 ; 't'
LDR             R0, [R4,#0x10]
LDM             R1, {R1-R3}
TST             R0, #0xFF
STMEA           SP, {R1-R3}
BNE             loc_2104FC
VMOV            S0, R1
VMOV            S2, R2
VMOV            S1, R3
VSUB.F32        S0, S0, S16
VSUB.F32        S2, S2, S17
VSUB.F32        S1, S1, S18
VSTR            S0, [SP,#0x40+var_40]
VSTR            S2, [SP,#0x40+var_3C]
VSTR            S1, [SP,#0x40+var_38]
B               loc_2104FC
LDR             R0, [R4,#0x10]
UXTH            R1, R0
LDR             R0, [R6]
BL              sub_528EB0
LDRB            R2, [R5,#0xF0]
ADD             R6, R4, #0x74 ; 't'
MOV             R3, #0
ADD             R1, SP, #0x40+var_34
BL              sub_5C5384
VLDR            S1, [R6]
VLDR            S0, [SP,#0x40+var_34]
VADD.F32        S1, S0, S1
VSTR            S1, [SP,#0x40+var_34]
VLDR            S2, [R6,#4]
VLDR            S0, [SP,#0x40+var_30]
VSUB.F32        S1, S1, S16
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x40+var_30]
VLDR            S3, [R6,#8]
VLDR            S2, [SP,#0x40+var_2C]
VSUB.F32        S0, S0, S17
VADD.F32        S2, S2, S3
VSTR            S2, [SP,#0x40+var_2C]
VSUB.F32        S2, S2, S18
VSTR            S1, [SP,#0x40+var_40]
VSTR            S0, [SP,#0x40+var_3C]
VSTR            S2, [SP,#0x40+var_38]
LDRH            R0, [R4]
CMP             R0, #0xE0
BEQ             loc_210524
CMP             R0, #0xE1
BEQ             loc_210554
CMP             R0, #0xE2
BEQ             loc_210524
CMP             R0, #0xE3
BNE             loc_2105D8
B               loc_210554
VLDR            S1, =0.0
VLDR            S0, [R4,#0x80]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_210588
MOV             R2, SP
MOV             R1, R7
ADD             R0, R5, #0x1DC
BL              sub_5A25D0
NOP
NOP
B               loc_2105D8
LDR             R0, [R4,#0x20]
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
BEQ             loc_210588
VMOV            S0, R0
MOV             R2, SP
MOV             R1, R7
ADD             R0, R5, #0x1DC
VCVT.F32.U32    S0, S0
BL              sub_5A2B20
NOP
NOP
B               loc_2105D8
ADD             R4, R5, #0x1DC
MOV             R0, R4
BL              sub_5A26D0
VLDR            S0, [R4,#0x1C]
VLDR            S1, [SP,#0x40+var_40]
ADD             R5, R5, #0x1F8
ADD             R0, R4, #0x1C
VADD.F32        S0, S0, S1
VSTR            S0, [R5]
VLDR            S0, [R4,#0x20]
VLDR            S1, [SP,#0x40+var_3C]
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#4]
VLDR            S0, [R4,#0x24]
VLDR            S1, [SP,#0x40+var_38]
ADD             R4, R4, #4
VADD.F32        S0, S0, S1
VSTR            S0, [R5,#8]
LDM             R0, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x1C
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R7,PC}
