PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6D1648
VPUSH           {D8-D9}
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x24 ; '$'
VLDR            S16, =3.4028e38
VLDM            R0, {S17-S18}
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
MOV             R1, R0
MOV             R0, #0
ADD             R1, R1, #0x15000
ADD             R1, R1, #0x13C
MOV             R2, R0
STR             R0, [R4,#0x48]
ADD             R0, R1, R2,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_1F604C
LDRB            R3, [R0,#0xB4]
CMP             R3, #0
BNE             loc_1F6040
LDR             R3, [R0,#0x1B8]
TST             R3, #0x10
BEQ             loc_1F6040
VLDR            S1, [R0,#0x18]
VLDR            S0, [R0,#0x1C]
VSUB.F32        S1, S17, S1
VSUB.F32        S0, S18, S0
VMUL.F32        S1, S1, S1
VMLA.F32        S1, S0, S0
VMOV.F32        S0, S1
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S0
STRGT           R0, [R4,#0x48]
ADD             R2, R2, #1
CMP             R2, #0x20 ; ' '
BLT             loc_1F5FEC
MOV             R0, R4
BL              sub_1F575C
LDR             R0, [R4,#0x34]
TST             R0, #2
BEQ             loc_1F6124
LDR             R2, [R6]
VLDR            S0, =0.0
LDR             R0, [R2,#0xC4]
LDR             R0, [R0,#4]
LDR             R5, [R0,#4]
VLDR            S1, [R5,#0x110]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
LDREQ           R0, [R5,#0x164]
BEQ             loc_1F60B8
VLDR            S1, [R5,#0x120]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_1F60AC
ADD             R0, R5, #0x118
ADD             R3, R5, #0x108
LDM             R0, {R0,R1}
STM             R3, {R0,R1}
VSTR            S1, [R5,#0x110]
LDR             R0, [R5,#0x164]
BIC             R0, R0, #7
STR             R0, [R5,#0x164]
TST             R0, #7
BEQ             loc_1F60E0
MOV             R0, R2
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19B924
CMP             R0, #0
NOP
BEQ             loc_1F6124
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19AFE4
LDR             R0, [R4,#0x34]
BIC             R0, R0, #2
STR             R0, [R4,#0x34]
LDR             R0, [R5,#0x164]
BIC             R0, R0, #7
STR             R0, [R5,#0x164]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R1, #1
BL              sub_19A598
LDR             R0, [R4,#0x34]
TST             R0, #0x20
AND             R1, R0, #0x40 ; '@'
BEQ             loc_1F6190
CMP             R1, #0
BEQ             loc_1F614C
LDR             R0, [R4,#0x34]
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R4,#0x34]
B               loc_1F61E4
ORR             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x34]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
VLDR            S0, =640.0
ADD             R2, R0, #0x100
MOV             R1, #0xF
VSTR            S0, [R0,#0x1CC]
MOV             R3, #2
STRH            R1, [R2,#0xD0]
STRH            R3, [R2,#0xD2]
LDR             R1, [R0,#0x1B4]
ORR             R1, R1, #4
STR             R1, [R0,#0x1B4]
B               loc_1F613C
CMP             R1, #0
BEQ             loc_1F61E4
BIC             R0, R0, #0x40 ; '@'
STR             R0, [R4,#0x34]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
MOV             R2, #0xF
LDR             R1, [R0,#0x1B4]
MOV             R3, R2
TST             R1, #4
BEQ             loc_1F61E4
ADD             R1, R0, #0x100
VLDR            S0, =570.0
VSTR            S0, [R0,#0x1CC]
STRH            R2, [R1,#0xD0]
STRH            R3, [R1,#0xD2]
LDR             R1, [R0,#0x1B4]
BIC             R1, R1, #4
STR             R1, [R0,#0x1B4]
LDR             R1, [R4,#0xA4]
CMP             R1, #0
BNE             loc_1F6204
LDR             R0, [R4,#0xA8]
TST             R0, #1
BEQ             loc_1F6228
CMP             R0, #0
BEQ             loc_1F6228
LDR             R0, [R4,#0xA8]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
BEQ             loc_1F621C
LDR             R2, [R0]
LDR             R1, [R2,R1]
VPOP            {D8-D9}
POP             {R4-R6,LR}
BX              R1
VPOP            {D8-D9}
POP             {R4-R6,PC}
