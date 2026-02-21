PUSH            {R4-R10,LR}
MOV             R5, R0
ADD             R7, R0, #0x1000
ADD             R7, R7, #0x1D0
VPUSH           {D8-D9}
LDRB            R0, [R7,#4]
VLDR            S17, =1.0
CMP             R0, #0
BNE             loc_1BC2FC
LDRSH           R1, [R7,#2]
LDRH            R0, [R7]
VMOV            S0, R1
ADD             R0, R0, #1
SXTH            R0, R0
STRH            R0, [R7]
VCVT.F32.S32    S1, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S17
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BC2FC
CMP             R1, R0
MOVLE           R0, R1
STRH            R0, [R7]
LDR             R0, [R5,#8]
VLDR            S19, =2.0
VLDR            S18, =0.5
MOV             R8, #1
LDRSH           R1, [R0]
CMP             R1, #0
BHI             loc_1BC330
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD4]
CMP             R1, #0
SUBNE           R1, R1, #1
STRHNE          R1, [R0,#0xD4]
BEQ             loc_1BC3B4
LDR             R0, [R5,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1C; switch 28 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BC33C; jumptable 001BC33C default case, cases 5-16
DCD loc_1BC4D0; jump table for switch statement
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R5,#8]
MOV             R0, #0x13
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xD4]
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
LDRH            R4, [R0,#0xD2]
CMP             R4, #0
BEQ             loc_1BC330
LDR             R0, =dword_6D1F40
MOV             R6, #0
BL              sub_546DB0
MUL             R0, R0, R4
LDR             R12, =byte_68DBBB
MOV             R4, #0
MOV             R1, R0,LSR#16
LDRB            R0, [R12]
CMP             R0, #0
LDRHI           R2, [R5,#8]
BLS             loc_1BC330
ADD             R0, R4, #0x400
ADD             R0, R0, #0xD6
LDRB            R0, [R2,R0]
CMP             R0, #0
BEQ             loc_1BC438
LDRB            R3, [R12]
ADD             R0, R4, #1
UXTH            R4, R0
CMP             R4, R3
BCC             loc_1BC40C
B               loc_1BC330
CMP             R6, R1
ADDNE           R0, R6, #1
UXTHNE          R6, R0
BNE             loc_1BC420
LDR             R2, =0x19C98
RSB             R0, R4, R4,LSL#4
LDR             R1, [R5,#4]
ADD             R3, R0, R4,LSL#5
LDR             R0, =dword_6D1F40
ADD             R2, R2, R3,LSL#2
ADD             R6, R1, R2
BL              sub_546DB0
LDR             R1, =unk_68C882
MOV             R0, R0,LSL#2
MOV             R0, R0,LSR#16
ADD             R1, R1, R4,LSL#5
ADD             R0, R1, R0,LSL#1
LDRH            R9, [R0,#0xA]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R0, [R6]
VMOV.F32        S0, S19
MOV             R3, R8
MOV             R2, #0
LDR             R12, [R0,#0x3C]
MOV             R1, R9
MOV             R0, R6
BLX             R12
LDR             R0, [R5,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD2]
SUB             R1, R1, #1
STRH            R1, [R0,#0xD2]
LDR             R0, [R5,#8]
ADD             R1, R4, #0x400
ADD             R1, R1, #0xD6
STRB            R8, [R0,R1]
B               loc_1BC330
ADD             R0, R5, #0x1100; jumptable 001BC33C cases 0,1,4,21
LDRSH           R1, [R0,#0xD0]
LDRSH           R0, [R0,#0xD2]
CMP             R1, R0
BGE             loc_1BC570; jumptable 001BC33C cases 2,3
ADD             R4, R5, #0x1000
VLDR            S1, =0.3125
VLDR            S0, [R4,#0x1DC]
VMUL.F32        S16, S0, S1
VMOV            R0, S16
CMP             R0, #0x3F800000
VMOVGT.F32      S16, S17
MOV             R0, R7
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
MOV             R0, R7
BGE             loc_1BC53C
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VMUL.F32        S0, S0, S16
NOP
B               loc_1BC56C
NOP
BL              sub_45AAB8
VSUB.F32        S0, S0, S18
VLDR            S1, =180.0
VMUL.F32        S0, S0, S19
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S18
VMLA.F32        S1, S0, S18
VMUL.F32        S0, S1, S16
VSTR            S0, [R4,#0x1D8]
LDRD            R0, R1, [R5,#4]; jumptable 001BC33C cases 2,3
VLDR            S16, =0.0
ADD             R2, R1, #0x10
ADD             R1, R0, #0x118
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x108]
LDR             R0, [R0,#0x4EC]
VLDM            R1, {S2-S3}
AND             R1, R0, #1
MOV             R0, R2
VSUB.F32        S2, S1, S2
VSUB.F32        S0, S0, S3
VMUL.F32        S1, S0, S18
VMUL.F32        S0, S2, S18
VMOV.F32        S2, S16
BL              sub_4A01D8
LDRD            R0, R1, [R5,#4]
VLDR            S0, [R0,#0x10C]
VLDR            S2, [R0,#0x11C]
VLDR            S1, [R0,#0x108]
VLDR            S3, [R0,#0x118]
VSUB.F32        S0, S0, S2
LDR             R2, [R0,#0x4EC]
VSUB.F32        S2, S1, S3
ADD             R0, R1, #0x10
AND             R1, R2, #1
VMUL.F32        S1, S0, S18
VMUL.F32        S0, S2, S18
VMOV.F32        S2, S16
BL              sub_4A01D8
ADD             R5, R5, #4
VMOV.F32        S0, S16
LDM             R5, {R0,R2}
VPOP            {D8-D9}
ADD             R1, R0, #0x108
ADD             R0, R2, #0x10
POP             {R4-R10,LR}
B               sub_4A03F0
DCFS 1.0
DCFS 2.0
DCFS 0.5
DCD dword_6D1F40
DCD byte_68DBBB
DCD 0x19C98
DCD unk_68C882
DCFS 0.3125
DCFS 180.0
DCFS 0.71111
DCFS 0.0
STRH            R8, [R7]; jumptable 001BC33C cases 17-20,22,23
ADD             R1, R5, #0x1000
STRH            R8, [R7,#2]
STRB            R8, [R7,#4]
VSTR            S17, [R1,#0x1D8]
LDR             R0, [R5,#4]
VLDR            S0, =9.0
VLDR            S1, [R1,#0x180]
ADD             R0, R0, #0x17400
LDR             R2, =0x43B40000
LDRB            R0, [R0,#0xAD]
CMP             R0, #0
VLDRNE          S0, =13.5
VADD.F32        S0, S1, S0
VMOV            R0, S0
VSTR            S0, [R1,#0x180]
CMP             R0, R2
BLE             loc_1BC688
VLDR            S1, =360.0
VSUB.F32        S0, S0, S1
VSTR            S0, [R1,#0x180]
ADD             R1, R5, #0x1000
ADD             R1, R1, #0x184
LDRB            R0, [R1,#4]
CMP             R0, #0
BNE             def_1BC33C; jumptable 001BC33C default case, cases 5-16
LDRSH           R2, [R1,#2]
LDRH            R0, [R1]
VMOV            S0, R2
ADD             R0, R0, #1
SXTH            R0, R0
STRH            R0, [R1]
VCVT.F32.S32    S1, S0
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S17
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             def_1BC33C; jumptable 001BC33C default case, cases 5-16
CMP             R2, R0
MOVLE           R0, R2
STRH            R0, [R1]
VPOP            {D8-D9}; jumptable 001BC33C default case, cases 5-16
POP             {R4-R10,PC}
ADD             R0, R5, #0x1000; jumptable 001BC33C cases 24-27
VLDR            S0, =2.88
VLDR            S2, [R0,#0x180]
LDR             R2, =0x43B40000
VLDR            S1, =360.0
VADD.F32        S0, S2, S0
VMOV            R1, S0
VSTR            S0, [R0,#0x180]
CMP             R1, R2
VSUBGT.F32      S0, S0, S1
VSTRGT          S0, [R0,#0x180]
VPOP            {D8-D9}
POP             {R4-R10,PC}
