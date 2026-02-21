PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R1, =0x276C
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_15F91C
LDR             R1, =0x276D
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_15F91C
LDR             R2, =0xBE23D70A
LDR             R1, [R4,#0x830]
CMP             R1, R2
BNE             loc_15F91C
ADD             R0, R0, #0x400
VLDR            S16, =0.0
VLDR            S0, [R0,#0x84]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLE             loc_15F91C
LDRH            R0, [R0,#0x68]
CMP             R0, #5
BCS             loc_15F91C
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x7C]
MOV             R1, SP
BLX             R2
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
VLDR            S17, =0.000015259
UXTH            R0, R0
VMOV            S0, R0
VLDR            S18, =360.0
LDR             R1, =0x42340000
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R1
BLE             loc_15F760
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x43070000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R1, R0
BGT             loc_15F7CC
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x43610000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R0, R1
BLE             loc_15F7C8
VLDR            S1, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_24]
BL              sub_4643FC
ADD             R0, R0, #0x4000
LDR             R1, =0x439D8000
UXTH            R0, R0
VMOV            S0, R0
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S18
VMOV            R0, S0
CMP             R1, R0
BGT             loc_15F7CC
VSTR            S16, [SP,#0x28+var_28]
VLDR            S0, [SP,#0x28+var_28]
VLDR            S1, =256.0
ADD             R1, R4, #0x400
VCMP.F32        S0, S16
ADD             R0, R4, #0x400
ADD             R1, R1, #0x64 ; 'd'
VMRS            APSR_nzcv, FPSCR
BNE             loc_15F888
LDRH            R2, [R0,#0x68]
CMP             R2, #5; switch 5 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15F7F4; jumptable 0015F7F4 default case
DCD loc_15F810; jump table for switch statement
MOV             R5, #3; jumptable 0015F7F4 cases 0,1
B               def_15F7F4; jumptable 0015F7F4 default case
MOV             R5, #4; jumptable 0015F7F4 case 2
B               def_15F7F4; jumptable 0015F7F4 default case
MOV             R5, #5; jumptable 0015F7F4 case 3
B               def_15F7F4; jumptable 0015F7F4 default case
MOV             R5, #6; jumptable 0015F7F4 case 4
LDR             R2, [R4,#0x464]; jumptable 0015F7F4 default case
BIC             R3, R2, #0xF
MOV             R2, R2,LSL#24
ORR             R2, R3, R2,LSR#28
STR             R2, [R1]
VLDR            S0, [R0,#0x70]
LDR             R0, [R4,#0x7FC]
VMUL.F32        S0, S0, S1
ADD             R0, R0, #0x10
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, R5
LDR             R12, [R0,#0x8C]
MOV             R0, R4
BLX             R12
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4,R5,PC}
VLDR            S2, [R4,#0x124]
VMUL.F32        S2, S0, S2
VCMPE.F32       S16, S2
VMRS            APSR_nzcv, FPSCR
BLE             loc_15F91C
LDRH            R2, [R0,#0x68]
CMP             R2, #5; switch 5 cases
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_15F8A4; jumptable 0015F8A4 default case
DCD loc_15F8C0; jump table for switch statement
MOV             R5, #2; jumptable 0015F8A4 cases 0,1
B               def_15F8A4; jumptable 0015F8A4 default case
MOV             R5, #4; jumptable 0015F8A4 case 2
B               def_15F8A4; jumptable 0015F8A4 default case
MOV             R5, #5; jumptable 0015F8A4 case 3
B               def_15F8A4; jumptable 0015F8A4 default case
MOV             R5, #6; jumptable 0015F8A4 case 4
VCMPE.F32       S0, S16; jumptable 0015F8A4 default case
LDR             R2, [R4,#0x464]
BIC             R2, R2, #0xF
VMRS            APSR_nzcv, FPSCR
ORRGT           R2, R2, #4
ORRLE           R2, R2, #0xC
CMP             R5, #2
STR             R2, [R1]
BNE             loc_15F840
LDR             R0, [R4,#0x7FC]
MOV             R1, #0x300
ADD             R0, R0, #0x10
BL              sub_123CE8
NOP
NOP
B               loc_15F860
ADD             SP, SP, #0xC
MOV             R0, R4
VPOP            {D8-D9}
POP             {R4,R5,LR}
B               sub_174FFC
