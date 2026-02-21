PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =dword_6E1330
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R6]
VLDR            S16, =0.0
TST             R0, #1
BNE             loc_19B9BC
MOV             R0, R6
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19B9BC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R6
NOP
LDR             R0, =flt_711FE4
VLDR            S0, [R4,#0xBC]
VLDR            S1, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19B9FC
VLDR            S0, [R4,#0xC0]
VLDR            S1, [R0,#(flt_711FE8 - 0x711FE4)]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19B9FC
VLDR            S0, [R4,#0xC4]
VLDR            S1, [R0,#(flt_711FEC - 0x711FE4)]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_19BAF8
LDR             R5, =off_6D1648
LDR             R0, [R5]
BL              sub_1E4614
ADD             R0, R0, #0x108
VLDR            S1, [R4,#0xC8]
VLDR            S0, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19BB08
VLDR            S0, [R0,#4]
VLDR            S1, [R4,#0xCC]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19BB08
VLDR            S0, [R0,#8]
VLDR            S1, [R4,#0xD0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19BB08
MOV             R1, SP
MOV             R0, R4
BL              sub_19BD30
LDR             R0, [R6]
TST             R0, #1
BNE             loc_19BA8C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_19BA8C
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S0, [SP,#0x28+var_28]
VLDR            S1, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19BAF8
VLDR            S1, [R0,#(flt_711FE8 - 0x711FE4)]
VLDR            S0, [SP,#0x28+var_24]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19BAF8
VLDR            S1, [R0,#(flt_711FEC - 0x711FE4)]
VLDR            S0, [SP,#0x28+var_20]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_19BAF8
LDR             R0, [R5]
BL              sub_1E4614
ADD             R1, R0, #0x108
LDR             R0, [R0,#0x110]
LDM             R1, {R1,R2}
ADD             R3, R4, #0xBC
STR             R0, [R4,#0xD0]
ADD             R0, R4, #0xC8
STM             R0, {R1,R2}
LDMFD           SP, {R0-R2}
STM             R3, {R0-R2}
ADD             SP, SP, #0x10
ADD             R0, R4, #0xBC
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R6]
TST             R0, #1
BNE             loc_19BB40
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_19BB40
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STR             R0, [SP,#0x28+var_20]
STMEA           SP, {R1,R2}
B               loc_19BACC
