PUSH            {R4-R9,LR}
MOV             R4, R0
LDR             R9, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0x24
LDR             R0, [R9]
ADD             R1, R0, #0x190000
ADD             R1, R1, #0xCF00
LDRB            R2, [R1,#0x28]
CMP             R2, #0
BEQ             loc_21AD44
LDRB            R1, [R1,#0x2B]
CMP             R1, #0
MOVEQ           R1, #1
BEQ             loc_21AD48
MOV             R1, #0
LDR             R2, [R4,#8]
LDR             R3, =unk_64E7C4
ADD             R2, R2, #0x400
LDRSB           R2, [R2,#0x95]
ADD             R2, R3, R2,LSL#2
ADD             R1, R2, R1,LSL#1
LDRH            R1, [R1]
BL              sub_52FACC
LDR             R1, [R4,#8]
MOV             R6, R0
LDR             R5, [R1,#0x18]
LDR             R0, [R5]
LDR             R1, [R0,#0x54]
MOV             R0, R5
BLX             R1
LDR             R1, [R4,#8]
LDRB            R2, [R4,#0x1A]
CMP             R0, R6
LDR             R8, =off_64E794
LDRB            R1, [R1,#0x488]
MOVEQ           R0, #1
MOVNE           R0, #0
CMP             R1, R2
MOV             R7, #0
BEQ             loc_21ADF4
ADD             R0, R5, #0x1DC
BL              sub_5A26D0
MOV             R2, #0
STR             R7, [SP,#0x50+var_50]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
LDRD            R0, R1, [R8,#(dword_64E79C - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x18]
BL              sub_501804
LDR             R0, [R4,#8]
STRB            R7, [R0,#0x48A]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
CMP             R0, #0
BEQ             loc_21AE28
MOV             R0, R5
BL              sub_5C55B8
LDRB            R1, [R4,#0x19]
ADD             R1, R1, #5
CMP             R0, R1
BNE             loc_21AE28
MOV             R0, R5
BL              sub_5C5820
CMP             R0, #0
MOVEQ           R0, R4
BLEQ            sub_21A400
LDRB            R0, [R4,#0x1A]
CMP             R0, #5
BNE             loc_21AE70
LDR             R0, [R4,#8]
LDRB            R1, [R4,#0x1B]
LDRB            R0, [R0,#0x48B]
CMP             R1, R0
BEQ             loc_21AE70
CMP             R0, #0
STRB            R0, [R4,#0x1B]
MOVEQ           R0, #0xC
BEQ             loc_21AE64
CMP             R0, #1
MOVNE           R0, #0
MOVEQ           R0, #6
STRB            R0, [R4,#0x19]
MOV             R0, R4
BL              sub_21A400
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x487]
CMP             R0, #0
BEQ             loc_21AE90
MOV             R0, R4
BL              sub_21A400
LDR             R0, [R4,#8]
STRB            R7, [R0,#0x487]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x314
BL              sub_366B74
CMP             R0, #0
NOP
BEQ             loc_21AF64
ADD             R0, R5, #0x1DC
BL              sub_5A26D0
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R6
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
LDRB            R0, [R4,#0x19]
MOV             R3, #0x100
MOV             R2, #1
ADD             R0, R0, #1
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C548
STRB            R7, [R5,#0xF3]
LDR             R0, [R4,#0x14]
MOV             R1, #0
VLDR            S0, [R0]
ADD             R0, R5, #0x1DC
BL              sub_5A2708
LDRB            R0, [R4,#0x1A]
MOV             R1, #0
CMP             R0, #1
LDREQ           R1, =sub_21B21C
BEQ             loc_21AF28
CMP             R0, #3
LDREQ           R1, =sub_21B0EC
BEQ             loc_21AF28
CMP             R0, #5
LDREQ           R1, =sub_21AC1C
MOV             R3, #0
MOV             R2, #1
MOV             R0, R5
STR             R7, [SP,#0x50+var_50]
BL              sub_501E58
LDR             R0, [R4,#8]
LDRB            R0, [R0,#0x48D]
STRB            R0, [R5,#0x4AE]
LDR             R0, [R4,#8]
BL              sub_4E3F6C
LDRD            R0, R1, [R8,#(off_64E7AC - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
LDRB            R0, [R4,#0x1A]
CMP             R0, #3
BNE             loc_21ADE8
LDR             R0, [R4,#8]
VLDR            S2, =-120.0
VLDR            S1, =46.0
VLDR            S18, =6.4
VLDR            S0, [R0,#0x24]
MOV             R2, #0
ADD             R1, SP, #0x50+var_3C
VADD.F32        S16, S0, S2
VADD.F32        S17, S0, S1
MOV             R0, R5
BL              sub_5C4198
ADD             R3, SP, #0x50+var_3C
LDM             R3, {R0-R2}
ADD             R3, SP, #0x50+var_48
STM             R3, {R0-R2}
LDR             R0, [R5,#0x204]
LDR             R1, [R9]
ADD             R0, R0, #0xC
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #1
MOVCS           R0, #0
CMP             R0, #0
LDR             R0, =flt_19B0AC
LDR             R0, [R0,R1]
BNE             loc_21ADE8
AND             R1, R0, #0x40000000
CMP             R1, #0
VLDRNE          S0, [SP,#0x50+var_34]
VCMPENE.F32     S0, S16
VMRSNE          APSR_nzcv, FPSCR
BLE             loc_21B01C
VMOV            S0, R2
MOV             R0, #0xC
MOV             R6, #0xF
VSUB.F32        S0, S0, S18
VSTR            S0, [SP,#0x50+var_40]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S0
VSTR            S16, [SP,#0x50+var_40]
B               loc_21B058
AND             R0, R0, #0x80000000
CMP             R0, #0
VLDRNE          S0, [SP,#0x50+var_34]
VCMPENE.F32     S17, S0
VMRSNE          APSR_nzcv, FPSCR
BLE             loc_21B0A8
VMOV            S1, R2
VCMPE.F32       S0, S16
MOV             R0, #6
MOV             R6, #0x13
VMRS            APSR_nzcv, FPSCR
VADD.F32        S1, S1, S18
VMOVGT.F32      S16, S0
VSTR            S1, [SP,#0x50+var_40]
VSTR            S16, [SP,#0x50+var_34]
STRB            R0, [R4,#0x19]
VLDR            S0, [SP,#0x50+var_40]
VLDR            S1, [SP,#0x50+var_34]
ADD             R2, SP, #0x50+var_48
MOV             R1, #0
VSUB.F32        S0, S0, S1
VLDR            S1, =0.15625
ADD             R0, R5, #0x1DC
VABS.F32        S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A2074
STR             R7, [SP,#0x50+var_50]
LDR             R0, [R4,#8]
AND             R1, R6, #0xFF
MOV             R3, #0x100
MOV             R2, #0
BL              sub_4E3CA0
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
MOV             R0, R4
STRB            R7, [R4,#0x19]
BL              sub_21A400
ADD             SP, SP, #0x24 ; '$'
VPOP            {D8-D9}
POP             {R4-R9,PC}
