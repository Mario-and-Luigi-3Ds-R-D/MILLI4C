PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0x68]
CMP             R1, #5
BCS             loc_16C848
LDR             R1, [R4,#0x4EC]
TST             R1, #1
BEQ             loc_16C7FC
LDR             R1, =0x2686
LDRB            R2, [R1,R4]
ADD             R1, R4, #0x2400
ADD             R1, R1, #0x298
CMP             R2, #1
BEQ             loc_16C87C
B               loc_16C8A0
LDR             R1, [R4,#0x5E0]
TST             R1, #0x4000
BEQ             loc_16C810
TST             R1, #0x100000
BEQ             loc_16C85C
LDR             R1, [R4,#0x658]
TST             R1, #0x20
BEQ             loc_16C82C
LDR             R1, =0x65C
LDRH            R1, [R1,R4]
TST             R1, #0x20
BEQ             loc_16C85C
VLDR            S0, [R4,#0x124]
VLDR            S1, =0.0
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRH            R1, [R0,#0x68]
LDR             R0, [R4]
LDR             R1, [R0,#0x374]
MOV             R0, R4
POP             {R4,LR}
BX              R1
MOV             R1, #4
STRH            R1, [R0,#0x68]
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x64]
MOV             R0, R4
BLX             R2
B               loc_16C848
LDRB            R3, [R1]
CMP             R3, #0
CMPNE           R3, #2
ADDNE           R3, R4, #0x108
BEQ             loc_16C8A0
VLDR            S1, [R3]
CMP             R2, #1
BNE             loc_16C8D4
B               loc_16C8A8
ADD             R3, R4, #0x10C
B               loc_16C890
LDRB            R3, [R1]
CMP             R3, #0
BEQ             loc_16C8D4
CMP             R3, #2
ADDNE           R3, R4, #0x118
BEQ             loc_16C8D4
VLDR            S2, [R3]
VLDR            S0, =1.0
CMP             R2, #1
BNE             loc_16C8F0
B               loc_16C8DC
ADD             R3, R4, #0x11C
B               loc_16C8C0
LDRB            R1, [R1]
CMP             R1, #0
BEQ             loc_16C8F0
CMP             R1, #1
VLDRNE          S0, =-1.0
VMUL.F32        S1, S1, S0
VMUL.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R1, #3
MOVCS           R1, #2
B               loc_16C844
