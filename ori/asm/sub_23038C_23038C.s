PUSH            {R4-R6,LR}
ADD             R5, R0, #0x400
LDRB            R1, [R0,#0x4B5]
MOV             R4, R0
ADD             R5, R5, #0xB5
TST             R1, #3
BEQ             locret_2304E8
TST             R1, #8
BNE             locret_2304E8
LDRB            R0, [R4,#0x4B4]
SUB             R0, R0, #1
SXTB            R0, R0
CMP             R0, #0
STRB            R0, [R4,#0x4B4]
BGT             locret_2304E8
LDR             R2, [R4,#0x4AC]
LDRSB           R0, [R2]
CMP             R0, #0
BLE             loc_230420
BIC             R3, R0, #1
VMOV            S0, R3
VLDR            S1, =0.5
TST             R0, #1
MOV             R3, #3
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
BICS            R1, R3, R1
VCVT.S32.F32    S0, S0
VMOV            R0, S0
STRB            R0, [R4,#0x4B4]
MOVEQ           R0, #1
MOVNE           R0, #0xFFFFFFFF
ADD             R0, R0, R2
STR             R0, [R4,#0x4AC]
B               loc_230484
AND             R0, R1, #3
CMP             R0, #1
BEQ             loc_23044C
CMP             R0, #2
BEQ             loc_230440
CMP             R0, #3
BNE             loc_230478
B               loc_230464
LDRB            R0, [R4,#0xDE]
ORR             R0, R0, #1
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
MOV             R1, #1
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
B               loc_230478
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x84]
MOV             R0, R4
BLX             R2
LDRB            R0, [R4,#0x4B5]
BIC             R0, R0, #3
STRB            R0, [R5]
LDRB            R0, [R4,#0x4B5]
TST             R0, #4
BEQ             loc_2304B4
LDR             R0, [R4,#0x4A8]
TST             R0, #1
LDREQ           R1, [R4,#0x4A4]
ADD             R0, R4, R0,ASR#1
BEQ             loc_2304D4
LDR             R1, [R0]
LDR             R2, [R4,#0x4A4]
LDR             R1, [R1,R2]
B               loc_2304D4
LDR             R0, [R4,#0x4A0]
TST             R0, #1
LDREQ           R1, [R4,#0x49C]
ADD             R0, R4, R0,ASR#1
BEQ             loc_2304D4
LDR             R1, [R0]
LDR             R2, [R4,#0x49C]
LDR             R1, [R1,R2]
NOP
BLX             R1
LDRB            R0, [R4,#0x4B5]
EOR             R0, R0, #4
STRB            R0, [R5]
POP             {R4-R6,PC}
