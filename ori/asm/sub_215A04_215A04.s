PUSH            {R4-R7,LR}
MOV             R4, R0
LDR             R6, =flt_6E34B0
VPUSH           {D8}
SUB             SP, SP, #0x2C
LDR             R0, [R6,#(dword_6E3638 - 0x6E34B0)]
LDM             R1, {R1,R2}
STR             R0, [SP,#0x48+var_3C]
STMFA           SP, {R1,R2}
LDRB            R0, [R4,#0x3F4]
CMP             R0, #6
BEQ             loc_215B48
LDRB            R0, [R4,#0xF0]
CMP             R0, #1
BEQ             loc_215A78
LDR             R0, [R4]
MOV             R2, #0
ADD             R1, SP, #0x48+var_2C
LDR             R3, [R0,#0x28]
MOV             R0, R4
BLX             R3
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
LDR             R0, [R4]
ADD             R1, SP, #0x48+var_2C
LDR             R2, [R0,#0x20]
MOV             R0, R4
BLX             R2
LDR             R7, =off_6CE970
MOV             R5, #1
STR             R5, [SP,#0x48+var_48]
ADD             R3, SP, #0x48+var_44
LDR             R0, [R7]
MOV             R2, #0
ADD             R1, SP, #0x48+var_38
ADD             R0, R0, #0x10C000
ADD             R0, R0, #0x214
BL              sub_5F12C4
ADD             R1, SP, #0x48+var_38
MOV             R0, R1
BL              sub_480160
ADD             R3, SP, #0x48+var_44
LDM             R3, {R0-R2}
ADD             R3, R4, #0x400
ADD             R3, R3, #4
STM             R3, {R0-R2}
LDR             R0, [R7]
BL              sub_528E64
LDRB            R0, [R0,#0x495]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
MOV             R0, R4
BL              sub_14C430
STRB            R5, [R4,#0xF2]
VLDR            S2, =255.0
VLDR            S0, [R6,#(flt_6E35C0 - 0x6E34B0)]
ADD             R0, R4, #0x400
ADD             R5, R4, #0x410
VDIV.F32        S1, S2, S0
VLDR            S0, =0.0
MOV             R1, #0
ADD             R0, R0, #0x118
BL              sub_5A1AA8
MOV             R0, #3
STRB            R0, [R5]
ADD             R1, SP, #0x48+var_38
ADD             R0, R4, #0x24 ; '$'
BL              sub_214A94
ADD             R2, SP, #0x48+var_38
MOV             R1, #0
ADD             R0, R4, #0x1DC
BL              sub_5A2A74
LDR             R0, [R4,#0x204]
VLDR            S16, [R0,#0x10]
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_215B98
B               loc_215B68
VLDR            S0, [R6,#(flt_6E3630 - 0x6E34B0)]
ADD             R2, SP, #0x48+var_44
MOV             R1, #0
ADD             R0, R4, #0x1DC
BL              sub_5A2074
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_215B98
LDR             R0, =flt_711FD8
VLDR            S1, =1.0
VSTR            S1, [R0]
VSTR            S1, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S1, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
VMOV.F32        S0, S16
LDR             R2, =flt_711FD8
MOV             R1, #0
ADD             R0, R4, #0x158
BL              sub_5A2074
MOV             R0, #7
STRB            R0, [R4,#0x3F4]
ADD             SP, SP, #0x2C ; ','
VPOP            {D8}
POP             {R4-R7,PC}
