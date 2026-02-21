PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
VLDR            S16, =1.0
ADD             R0, R0, #0x2B8
VMOV.F32        S0, S16
BL              sub_5A176C
ADD             R0, R4, #0x2B8
BL              sub_5F1964
CMP             R0, #0
BNE             loc_184EE4
ADD             R0, R4, #0x3B4
MOV             R1, SP
LDM             R0, {R0,R2}
STMEA           SP, {R0,R2}
VSTR            S16, [SP,#0x20+var_18]
VLDR            S0, [R4,#0x3B0]
ADD             R0, R4, #0x354
VCVT.F32.S32    S0, S0
BL              sub_5A1FC8
ADD             R0, R4, #0x2B8
BL              sub_5A18EC
VLDR            S0, =255.0
ADD             R0, R4, #0x2B8
VSTR            S0, [R4,#0x2C4]
VSTR            S0, [R4,#0x2BC]
VLDR            S0, [R4,#0x3B0]
VCVT.F32.S32    S1, S0
VLDR            S0, =0.0
BL              sub_5A12F8
LDR             R1, =off_6738C0
MOV             R0, #0
STRB            R0, [R4,#0x7F]
LDRD            R0, R1, [R1,#(off_6738E8 - 0x6738C0)]
STRD            R0, R1, [R4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4,PC}
