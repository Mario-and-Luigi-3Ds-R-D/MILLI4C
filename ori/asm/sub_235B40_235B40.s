PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D10}
LDR             R0, [R0,#0x10C]
VLDR            S19, =3.1416
VLDR            S17, =0.0
TST             R0, #1
BEQ             loc_235E50
MOV             R6, #1
ADD             R0, R4, #0xD4
BL              sub_5F1964
VLDR            S20, =2.0
VLDR            S16, =1.0
VLDR            S18, =-1.0
CMP             R0, #0
ADD             R5, R4, #0x100
BEQ             loc_235BE0
VMOV.F32        S0, S16
MOV             R6, #0
ADD             R0, R4, #0xD4
BL              sub_5A176C
ADD             R0, R4, #0xCC
VLDM            R0, {S0-S1}
VADD.F32        S0, S0, S1
VLDR            S1, =40.744
VMOV            R0, S0
VSTR            S0, [R4,#0xCC]
CMP             R0, #0x40000000
VSUBGE.F32      S0, S0, S20
VSTRGE          S0, [R4,#0xCC]
VMUL.F32        S0, S0, S19
LDR             R0, [R4,#0xC0]
STR             R0, [R4,#0xC4]
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, [R4,#0xD8]
VLDR            S1, [R4,#0xC8]
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#0xC0]
B               loc_235C58
ADD             R0, R4, #0x14
BL              sub_5F19B8
CMP             R0, #0
NOP
BEQ             loc_235C58
VMOV.F32        S0, S16
MOV             R6, #0
ADD             R0, R4, #0x14
BL              sub_5A2484
VLDR            S0, [R0]
VLDR            S2, [R4,#0x7C]
LDR             R1, [R4,#4]
VLDR            S1, [R0,#4]
VSUB.F32        S0, S0, S2
VSTR            S0, [R1,#0x108]
VLDR            S0, [R4,#0x80]
LDR             R0, [R4,#4]
VSUB.F32        S0, S1, S0
VSTR            S0, [R0,#0x10C]
LDR             R0, [R4,#0x10C]
TST             R0, #2
BEQ             loc_235CEC
VMOV.F32        S1, S17
VLDR            S0, [R4,#0xC0]
MOV             R1, #0
MOV             R0, R4
BL              sub_23576C
NOP
NOP
B               loc_235CEC
LDR             R0, [R4,#0x10C]
TST             R0, #2
BEQ             loc_235CEC
LDRSH           R1, [R5,#8]
CMP             R1, #0
BEQ             loc_235CC0
LDRSH           R2, [R5,#0xA]
VMOV            S0, R1
VMOV.F32        S1, S16
VMOV            S2, R2
LDRB            R1, [R4,#0x9C]
MOV             R0, R0,LSL#26
VCVT.F32.S32    S0, S0
CMP             R1, #0
VCVT.F32.S32    S3, S2
CMPNE           R1, #3
MOV             R1, R0,LSR#30
MOV             R0, R4
VDIV.F32        S2, S0, S3
VLDR            S0, [R4,#0xC0]
VNMLS.F32       S1, S2, S20
VNEGEQ.F32      S1, S1
BL              sub_23576C
NOP
NOP
B               loc_235CEC
LDRB            R1, [R4,#0x9C]
MOV             R0, R0,LSL#26
VLDR            S0, [R4,#0xC0]
CMP             R1, #0
CMPNE           R1, #3
VMOVEQ.F32      S1, S16
VMOVNE.F32      S1, S18
MOV             R1, #3
ADD             R1, R1, R0,LSR#30
MOV             R0, R4
BL              sub_23576C
LDRSH           R0, [R5,#8]
CMP             R0, #0
BLE             loc_235D34
SUB             R0, R0, #1
SXTH            R0, R0
CMP             R0, #0
STRH            R0, [R5,#8]
BGT             loc_235E94
MOV             R0, R4
BL              sub_2359A8
LDRB            R2, [R4,#0x9D]
LDRB            R1, [R4,#0x9C]
MOV             R0, R4
BL              sub_23557C
LDR             R0, [R4,#0x10C]
TST             R0, #2
MOVEQ           R0, R4
BLEQ            sub_2369C8
CMP             R6, #0
BEQ             loc_235E50
LDR             R0, [R4,#0x10C]
BIC             R0, R0, #1
TST             R0, #2
STR             R0, [R4,#0x10C]
BEQ             loc_235E50
LDR             R6, =off_6D1648
LDR             R0, [R6]
BL              sub_1E4614
MOV             R5, R0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19BB68
VMOV.F32        S0, S17
LDRB            R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_235DA8
CMP             R0, #1
VLDREQ          S0, =1.5
BEQ             loc_235DA8
CMP             R0, #2
VMOVEQ.F32      S0, S16
BEQ             loc_235DA8
CMP             R0, #3
VLDREQ          S0, =0.5
VMOV.F32        S16, S17
MOV             R1, #0
MOV             R0, R4
VMOV.F32        S1, S16
BL              sub_23576C
ADD             R1, R5, #0x400
VSTR            S18, [R1,#0xC4]
LDR             R2, [R5,#0x4EC]
BIC             R2, R2, #1
STR             R2, [R5,#0x4EC]
VSTR            S16, [R1,#0xB8]
LDR             R0, [R4,#0x10C]
BIC             R0, R0, #2
STR             R0, [R4,#0x10C]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_5C6058
CMP             R0, #0
NOP
BEQ             loc_235E50
ADD             R0, R5, #0x800
VSTR            S16, [R0,#0x2C]
VSTR            S16, [R0,#0x28]
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R1, [R0]
MOV             R2, #0
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R3, [R1,#0xEC]
MOV             R1, R2
BLX             R3
LDR             R0, [R6]
BL              sub_1E4604
ADD             R1, R0, #0x400
VSTR            S18, [R1,#0xC4]
LDR             R2, [R0,#0x4EC]
BIC             R2, R2, #1
STR             R2, [R0,#0x4EC]
VSTR            S16, [R1,#0xB8]
VLDR            S0, [R4,#0xC0]
LDR             R0, [R4,#4]
VMUL.F32        S0, S0, S19
VSTR            S0, [R0,#0xF8]
LDR             R0, [R4,#4]
VSTR            S17, [R0,#0x110]
VPOP            {D8-D10}
POP             {R4-R6,PC}
DCFS 3.1416
DCFS 0.0
DCFS 2.0
DCFS 1.0
DCFS -1.0
DCFS 40.744
DCD off_6D1648
DCFS 1.5
DCFS 0.5
LDR             R0, [R4,#0x10C]
TST             R0, #2
BNE             loc_235E50
ADD             R0, R4, #0xC0
VLDM            R0, {S0-S1}
MOV             R0, R4
BL              sub_235EBC
NOP
NOP
B               loc_235E50
