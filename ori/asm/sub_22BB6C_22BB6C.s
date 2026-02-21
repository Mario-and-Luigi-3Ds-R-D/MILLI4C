PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R10, =off_6CDA80
VPUSH           {D8}
SUB             SP, SP, #0x2C
LDR             R0, [R10]
BL              sub_5C976C
VMOV.F32        S16, S0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x6C ; 'l'
STR             R0, [SP,#0x58+var_3C]
BL              sub_5A18EC
ADD             R5, R4, #0x400
VSTR            S16, [R5,#0x78]
VSTR            S16, [R5,#0x70]
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F8
LDR             R0, [R0]
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_22BDDC
LDR             R0, [R4,#0x460]
LDR             R11, =off_6CE970
ADD             R6, R4, #0x1000
CMP             R0, #0
MOV             R8, #1
ADD             R6, R6, #0xD4
BEQ             loc_22BDF0
CMP             R0, #1
BNE             loc_22BDD0
MOV             R0, R4
BL              sub_22C2C0
LDR             R0, [R10]
MOV             R1, R4
BL              sub_5C970C
MOVS            R7, R0
ADD             R0, R4, #0x400
VLDR            S16, =0.0
VLDR            S17, =0.017453
ADD             R0, R0, #0xA8
MOV             R9, #0
STR             R0, [SP,#0x58+var_50]
BEQ             loc_22BC54
STRB            R8, [R7,#0x1C]
LDR             R0, [R7]
LDR             R1, [R0,#0x20]
MOV             R0, R7
BLX             R1
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_22BF0C
LDR             R0, [R10]
MOV             R1, R7
BL              sub_2265C4
LDR             R0, [R4,#0x4A0]
LDRB            R1, [R0,#4]
LDR             R0, [R11]
CMP             R1, #0
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
MOVNE           R1, #1
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
MOVEQ           R1, #2
TST             R0, R1
BEQ             loc_22BDD0
VSTR            S16, [R5,#0x64]
VSTR            S16, [R5,#0x68]
VSTR            S16, [SP,#0x58+var_3C]
VSTR            S16, [SP,#0x58+var_38]
ADD             R1, SP, #0x58+var_3C
VSTR            S16, [SP,#0x58+var_34]
MOV             R0, R4
BL              sub_14E9C8
VLDR            S0, [R5,#0x68]
VSTR            S16, [SP,#0x58+var_3C]
VSTR            S16, [SP,#0x58+var_38]
VMUL.F32        S0, S0, S17
VMOV.F32        S1, S16
VSTR            S0, [SP,#0x58+var_34]
VMOV.F32        S2, S0
VMOV.F32        S0, S16
LDR             R0, [SP,#0x58+var_50]
BL              sub_462C40
LDR             R0, =0xFFE683CC
LDR             R12, [R11]
LDR             R2, =0x300EC
MOV             R3, #0
MOV             R1, R4
SUB             R0, R12, R0
BL              sub_503720
LDR             R1, [R10]
MOV             R2, R4
ADD             R0, SP, #0x58+var_4C
BL              sub_2270AC
LDR             R0, [R10]
ADD             R1, SP, #0x58+var_4C
BL              sub_225E38
LDR             R1, [SP,#0x58+var_44]
ADD             R0, SP, #0x58+var_48
CMP             R1, R0
BNE             loc_22BD54
LDR             R0, [SP,#0x58+var_4C]
CMP             R0, #0
BEQ             loc_22BD54
MOV             R7, R0
LDR             R0, [R10]
ADD             R5, R0, #0x12800
LDR             R0, [R7]
ADD             R5, R5, #0x10C
LDR             R1, [R0]
MOV             R0, R7
BLX             R1
LDR             R0, [R5,#4]
STR             R0, [R7]
STR             R7, [R5,#4]
LDR             R0, [R5,#8]
ADD             R0, R0, #1
STR             R0, [R5,#8]
LDRD            R0, R1, [SP,#0x58+var_48]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x58+var_54
REV             R0, R0
STR             R0, [SP,#0x58+var_54]
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R6, #0x720
BL              sub_4E665C
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x58+var_50
REV             R0, R0
STR             R0, [SP,#0x58+var_50]
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R6, #0x32C
BL              sub_4E665C
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
MOV             R0, R4
BL              sub_14C548
STRB            R8, [R4,#0x45C]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}
ADD             SP, SP, #0x2C ; ','
MOV             R0, R4
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_22B9E8
MOV             R0, R4
BL              sub_22C2C0
LDR             R0, [R10]
LDR             R1, [R11]
ADD             R2, R0, #0x12400
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2FC
ADD             R3, R1, #0x10C000
LDR             R1, [R0]
VLDR            S0, [R3,#(loc_10C240 - 0x10C000)]
ADD             R2, R2, #0x2F4
VLDR            S2, [R1,#0x2C]
LDR             R0, [R2]
VSUB.F32        S0, S0, S2
ADD             R1, R0, #0x400
VLDR            S1, [R1,#0x98]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BCS             loc_22BDD0
VLDR            S0, [R0,#0x3B8]
VLDR            S16, =255.0
MOV             R5, #0xFF
STRB            R5, [SP,#0x58+var_58]
VMUL.F32        S0, S0, S16
STRB            R5, [SP,#0x58+var_57]
STRB            R5, [SP,#0x58+var_56]
MOV             R1, SP
VCVT.S32.F32    S0, S0
VMOV            R2, S0
STRB            R2, [SP,#0x58+var_55]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R6, #0x720
BL              sub_4E665C
LDR             R0, [R10]
ADD             R1, SP, #0x58+var_50
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R2, [R0]
VLDR            S0, [R2,#0x3BC]
STRB            R5, [SP,#0x58+var_50]
STRB            R5, [SP,#0x58+var_50+1]
VMUL.F32        S0, S0, S16
STRB            R5, [SP,#0x58+var_50+2]
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [SP,#0x58+var_50+3]
VLDR            S0, [R2,#0x3D0]
ADD             R0, R6, #0x32C
BL              sub_4E6784
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
ADD             R0, R0, #0x18
VLDM            R0, {S0-S1}
ADD             R0, R4, #0x3F4
BL              sub_5A14A4
LDR             R0, [R10]
NOP
NOP
STR             R8, [R4,#0x460]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}
DCD off_6CDA80
DCD off_6CE970
DCFS 0.0
DCFS 0.017453
DCD 0x300EC
DCD 0xFFE683CC
DCFS 255.0
VSTR            S16, [R5,#0x64]
VSTR            S16, [R5,#0x68]
VSTR            S16, [SP,#0x58+var_4C]
VSTR            S16, [SP,#0x58+var_48]
ADD             R1, SP, #0x58+var_4C
VSTR            S16, [SP,#0x58+var_44]
MOV             R0, R4
BL              sub_14E9C8
VLDR            S0, [R5,#0x68]
VSTR            S16, [SP,#0x58+var_4C]
VSTR            S16, [SP,#0x58+var_48]
VMUL.F32        S0, S0, S17
VMOV.F32        S1, S16
VSTR            S0, [SP,#0x58+var_44]
VMOV.F32        S2, S0
VMOV.F32        S0, S16
LDR             R0, [SP,#0x58+var_50]
BL              sub_462C40
LDR             R0, [R10]
MOV             R1, R7
BL              sub_227164
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x58+var_50
REV             R0, R0
STR             R0, [SP,#0x58+var_50]
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R6, #0x720
BL              sub_4E665C
MOV             R0, #0xFFFFFF00
ADD             R1, SP, #0x58+var_40
REV             R0, R0
STR             R0, [SP,#0x58+var_40]
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
VLDR            S0, [R0,#0x3D0]
ADD             R0, R6, #0x32C
BL              sub_4E665C
MOV             R0, #4
STRB            R0, [R4,#0x45C]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
MOV             R0, R4
STR             R9, [R4,#0x460]
BL              sub_14C548
LDR             R0, [R10]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R0, [R0]
LDR             R6, [R0,#0x3E4]
LDR             R0, [SP,#0x58+var_3C]
BL              sub_5A18EC
ADD             R4, R4, #0x18C0
STR             R6, [R5,#0x78]
STR             R6, [R5,#0x70]
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R11,PC}
