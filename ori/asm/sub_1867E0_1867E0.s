PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R1, [R0,#0xA0]
ADD             R1, R1, #0x14400
ADD             R1, R1, #0x204
LDR             R1, [R1,#0x28]
LDRB            R1, [R1,#0x38]
CMP             R1, #3
BNE             locret_1868AC
LDR             R0, [R0,#0xC8]
TST             R0, #7
BNE             loc_18688C
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_186854
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_186854
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R0, =flt_711FD8
ADD             R5, R4, #0x14000
LDM             R0, {R1,R2}
LDR             R0, [R0,#(flt_711FE0 - 0x711FD8)]
STR             R0, [R5,#0x2E0]
ADD             R0, R4, #0x14000
ADD             R0, R0, #0x2D8
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R5,#0x2EC]
ADD             R5, R5, #0x2E4
STM             R5, {R1,R2}
MOV             R3, #1
LDR             R0, [R4]
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DB74
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,LR}
BX              R12
POP             {R4-R6,PC}
