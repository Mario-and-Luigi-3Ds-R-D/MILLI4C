PUSH            {R4-R11,LR}
MOV             R6, R3
MOV             R7, R0
MOV             R10, R1
MOV             R11, R2
MOV             R9, #0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDRH            R1, [R3]
LDR             R0, [R0,#4]
ADD             R4, R3, #8
SUB             R1, R1, #0x100
SUB             R1, R1, #0x26 ; '&'
ADD             R8, R0, #0x13C00
CMP             R1, #0xE; switch 14 cases
ADD             R5, R3, #0x68 ; 'h'
ADD             R8, R8, #0x108
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_177EDC; jumptable 00177EDC default case
DCD loc_177F1C; jump table for switch statement
LDR             R1, [R4,#4]; jumptable 00177EDC case 0
LDR             R3, [R0]
CMP             R1, #0
LDR             R1, [R4]
LDR             R3, [R3,#0x1EC]
MOVNE           R2, #1
MOVEQ           R2, #0
UXTH            R1, R1
BLX             R3
B               def_177EDC; jumptable 00177EDC default case
ADD             R0, SP, #0x38+var_30; jumptable 00177EDC case 1
MOV             R2, #4
MOV             R1, #0
BL              sub_110BE4
LDR             R1, [R4,#4]
ADD             R0, SP, #0x38+var_30
AND             R1, R1, #0xFF
BL              sub_5F5A18
LDR             R0, [R7,#4]
ADD             R3, SP, #0x38+var_30
ADD             R1, R0, #0xCC
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x12C
STRD            R0, R1, [SP,#0x38+var_38]
LDR             R0, [R4,#8]
LDR             R1, [R4]
AND             R2, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_585514
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
ADD             R0, R0, #0xCC; jumptable 00177EDC case 2
STR             R0, [SP,#0x38+var_38]
LDRD            R0, R1, [R4]
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_585370
LDR             R0, [R7,#4]
MOV             R2, #2
ADD             R0, R0, #0xCC
STR             R0, [SP,#0x38+var_38]
LDRD            R0, R1, [R4]
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_585370
LDR             R0, [R7,#4]
MOV             R2, #3
ADD             R0, R0, #0xCC
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
LDR             R1, [R4]
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_585370
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDRD            R0, R1, [R4]; jumptable 00177EDC case 3
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5854A8
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5854A8
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5854A8
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDRD            R0, R1, [R4]; jumptable 00177EDC case 4
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_585430
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_585430
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_585430
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDRD            R0, R1, [R4]; jumptable 00177EDC case 5
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_58571C
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_58571C
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_58571C
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDRD            R0, R1, [R4]; jumptable 00177EDC case 6
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BNE             loc_178190
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BNE             loc_178190
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             def_177EDC; jumptable 00177EDC default case
MOV             R2, R6
MOV             R1, R11
MOV             R0, R10
BL              sub_29D1B0
MOV             R9, #3
NOP
B               def_177EDC; jumptable 00177EDC default case
VLDR            S0, [R5,#8]; jumptable 00177EDC case 7
VLDR            S16, =2.0
LDRD            R0, R1, [R4]
MOV             R2, #1
VMUL.F32        S0, S0, S16
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_585800
VLDR            S0, [R5,#8]
LDRD            R0, R1, [R4]
MOV             R2, #2
VMUL.F32        S0, S0, S16
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_585800
VLDR            S0, [R5,#8]
LDR             R0, [R4,#4]
LDR             R1, [R4]
VMUL.F32        S0, S0, S16
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R2, #3
MOV             R0, R8
BL              sub_585800
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDRD            R0, R1, [R4]; jumptable 00177EDC case 8
MOV             R5, #0xFFFFFFFF
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_178270
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #1
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0DC8
MOV             R5, R0
NOP
B               loc_178300
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_1782BC
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #2
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0DC8
MOV             R5, R0
NOP
B               loc_178300
LDRD            R0, R1, [R4]
MOV             R2, #3
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_178300
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0DC8
MOV             R5, R0
VMOV            S0, R5
LDRH            R0, [R6,#2]
MOV             R2, R11
MOV             R1, R10
VCVT.F32.S32    S0, S0
B               loc_178408
LDRD            R0, R1, [R4]; jumptable 00177EDC case 9
VLDR            S16, =0.0
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_178368
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #1
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0E1C
VMOV.F32        S16, S0
NOP
B               loc_1783F8
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_1783B4
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #2
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0E1C
VMOV.F32        S16, S0
NOP
B               loc_1783F8
LDRD            R0, R1, [R4]
MOV             R2, #3
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_1783F8
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0E1C
VMOV.F32        S16, S0
LDRH            R0, [R6,#2]
MOV             R2, R11
MOV             R1, R10
VMOV.F32        S0, S16
BL              sub_145730
B               def_177EDC; jumptable 00177EDC default case
VLDR            S0, [R5,#8]; jumptable 00177EDC case 10
VLDR            S16, =0.5
MOV             R2, #1
VCVT.U32.F32    S0, S0
VMOV            R0, S0
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VLDRNE          S1, =1.0
LDRD            R0, R1, [R4]
VCVT.F32.U32    S0, S0
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S1
BL              sub_585794
VLDR            S0, [R5,#8]
MOV             R2, #2
VCVT.U32.F32    S0, S0
VMOV            R0, S0
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VLDRNE          S1, =1.0
LDRD            R0, R1, [R4]
VCVT.F32.U32    S0, S0
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S1
BL              sub_585794
VLDR            S0, [R5,#8]
MOV             R2, #3
VCVT.U32.F32    S0, S0
VMOV            R0, S0
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VLDRNE          S1, =1.0
LDR             R0, [R4,#4]
LDR             R1, [R4]
VCVT.F32.U32    S0, S0
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
VMUL.F32        S0, S0, S16
VADDNE.F32      S0, S0, S1
BL              sub_585794
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
DCFS 2.0
DCFS 0.0
DCFS 0.5
DCFS 1.0
LDRD            R0, R1, [R4]; jumptable 00177EDC case 11
VLDR            S16, =0.0
MOV             R2, #1
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_178544
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #1
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0D54
VMOV.F32        S16, S0
NOP
B               loc_1785D4
LDRD            R0, R1, [R4]
MOV             R2, #2
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_178590
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #2
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0D54
VMOV.F32        S16, S0
NOP
B               loc_1785D4
LDRD            R0, R1, [R4]
MOV             R2, #3
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_5F0E90
CMP             R0, #0
NOP
BEQ             loc_1785D4
LDR             R0, [R4,#4]
LDR             R1, [R4]
MOV             R2, #3
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_5F0D54
VMOV.F32        S16, S0
LDRH            R0, [R6,#2]
MOV             R2, R11
MOV             R1, R10
VMOV.F32        S0, S16
BL              sub_145730
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDR             R0, [R4,#8]; jumptable 00177EDC case 12
MOV             R2, #1
STR             R0, [SP,#0x38+var_38]
LDRD            R0, R1, [R4]
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_58480C
LDR             R0, [R4,#8]
MOV             R2, #2
STR             R0, [SP,#0x38+var_38]
LDRD            R0, R1, [R4]
AND             R3, R1, #0xFF
AND             R1, R0, #0xFF
MOV             R0, R8
BL              sub_58480C
LDR             R0, [R4,#8]
MOV             R2, #3
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R4,#4]
LDR             R1, [R4]
AND             R3, R0, #0xFF
AND             R1, R1, #0xFF
MOV             R0, R8
BL              sub_58480C
NOP
NOP
B               def_177EDC; jumptable 00177EDC default case
LDR             R2, [R4]; jumptable 00177EDC case 13
LDR             R1, [R4,#4]
MOV             R3, #0x67 ; 'g'
AND             R2, R2, #0xFF
LDR             R0, [R8]
SMULBB          R2, R2, R3
AND             R1, R1, #0xFF
STR             R1, [SP,#0x38+var_38]
ADD             R1, R4, #0xC
LDR             R3, [R0,R2,LSL#2]!
LDM             R1, {R1,R2}
LDR             R4, [R4,#8]
LDR             R12, [R3,#0x108]
SXTB            R3, R2
SXTB            R2, R1
SXTB            R1, R4
BLX             R12
ADD             SP, SP, #0xC; jumptable 00177EDC default case
MOV             R0, R9
VPOP            {D8}
POP             {R4-R11,PC}
