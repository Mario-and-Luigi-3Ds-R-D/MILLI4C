PUSH            {R4,R5,LR}
VPUSH           {D8-D9}
SUB             SP, SP, #4
LDR             R12, [SP,#0x20+arg_0]
STR             R12, [SP,#0x20+var_20]
BL              sub_1E7DC4
LDR             R3, =off_6AE5B0
STR             R3, [R0],#0xE0
ADD             R2, R3, #0x380
STR             R2, [R0],#0x678
ADD             R1, R3, #0x398
STR             R1, [R0],#0x398
BL              sub_5A2F28
ADD             R0, R0, #0x1C
BL              sub_5A2F28
LDR             R1, =sub_2D1C7C
MOV             R3, #6
MOV             R2, #0x128
ADD             R0, R0, #0x1C
BLX             sub_1002F4
SUB             R4, R0, #0x800
SUB             R4, R4, #0x328
VLDR            S1, =14.0
SUB             R0, R0, #0x128
MOV             R1, #0
VSTR            S1, [R4,#0x100]
STRH            R1, [R0,#0xB2]
LDRH            R2, [R0,#0xA8]
VLDR            S16, =0.0
VLDR            S0, =1.0
BIC             R2, R2, #0x57 ; 'W'
ORR             R2, R2, #0xA8
STRH            R2, [R0,#0xA8]
STRH            R1, [R0,#0xAE]
STRH            R1, [R0,#0xB0]
ADD             R5, R4, #0x800
STRB            R1, [R4,#0xAB5]
VMOV            R1, S0
VMOV            R0, S16
VSTR            S0, [R5,#0x2B8]
ADD             LR, R4, #0xAC0
VSTR            S16, [R5,#0x2BC]
STM             LR, {R0,R1}
ADD             LR, R4, #0x800
STR             R0, [R4,#0xAC8]
LDR             R0, [R4,#0x108]
LDR             R1, [R4,#0x10C]
LDR             R2, [R4,#0x110]
ADD             LR, LR, #0x2CC
STM             LR, {R0-R2}
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_173A38
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_173A38
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R1, =flt_711FE4
MOV             R0, R4
LDRD            R2, R3, [R1]
LDR             R1, [R1,#(flt_711FEC - 0x711FE4)]
STR             R1, [R4,#0xAE0]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x2D8
STM             R1, {R2,R3}
LDR             R1, [R4,#0x658]
BIC             R1, R1, #0x3F000000
ORR             R1, R1, #0x10000000
STR             R1, [R4,#0x658]
ADD             R1, R4, #0x400
ADD             R1, R1, #0x358
BL              sub_1E74DC
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2D8
ADD             R5, R5, #0x2E4
LDM             R0, {R0-R2}
STM             R5, {R0-R2}
MOV             R0, R4
BL              sub_1E762C
VLDR            S16, =30.0
VLDR            S17, =15.0
VLDR            S18, =-15.0
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
VMOV.F32        S1, S17
VMOV.F32        S0, S18
MOV             R0, R4
BL              sub_22D56C
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
VMOV.F32        S1, S17
VMOV.F32        S0, S18
MOV             R0, R4
BL              sub_575C24
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
VMOV.F32        S1, S17
VMOV.F32        S0, S18
MOV             R0, R4
BL              sub_575D3C
LDR             R1, [R4,#0x5E0]
MOV             R0, R4
ORR             R1, R1, #0x20 ; ' '
STR             R1, [R4,#0x5E0]
ADD             SP, SP, #4
VPOP            {D8-D9}
POP             {R4,R5,PC}
