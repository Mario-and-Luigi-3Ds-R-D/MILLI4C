PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R9, =byte_68DBBB
LDRB            R0, [R9]
CMP             R0, #0x3C ; '<'
ANDCS           R8, R0, #0xFF
CMPCS           R8, #0x5F ; '_'
MOVCC           R8, #0x5F ; '_'
CMP             R8, #0
LDRGT           R10, =unk_68C882
LDRGT           R11, =0x19C98
BLE             locret_1C0778
LDR             R0, [R5,#8]
RSB             R2, R4, R4,LSL#4
LDR             R1, [R5,#4]
ADD             R2, R2, R4,LSL#5
LDRSH           R0, [R0]
ADD             R2, R11, R2,LSL#2
ADD             R7, R10, R4,LSL#5
CMP             R0, #0x19; switch 25 cases
ADD             R6, R1, R2
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C04B0; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
DCD loc_1C051C; jump table for switch statement
LDRB            R0, [R9]; jumptable 001C04B0 cases 0,4,21
CMP             R4, R0
BGE             loc_1C0758
LDR             R1, =0x2807
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#8]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDRH            R0, [R7,#0x1E]
LDR             R6, [R6,#0xA4]
CMP             R0, #0
LDRNE           R0, =dword_6D1F40
BLNE            sub_546DB0
MOV             R1, #0
ADD             R0, R6, #0x10
BL              sub_485780
NOP
NOP
B               def_1C04B0; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
LDRB            R0, [R9]; jumptable 001C04B0 case 1
CMP             R4, R0
BGE             loc_1C0758
LDR             R1, =0x2821
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDRSH           R1, [R7,#0x14]
CMN             R1, #1
BEQ             loc_1C05EC
LDR             R0, [R6]
VLDR            S0, =2.0
MOV             R3, #1
MOV             R2, #0
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
B               def_1C04B0; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDRH            R0, [R7,#0x1E]
LDR             R6, [R6,#0xA4]
CMP             R0, #0
MOVNE           R0, #0
BEQ             loc_1C0664
BIC             R1, R0, #1
VMOV            S0, R1
VLDR            S1, =0.5
TST             R0, #1
ADD             R0, R6, #0x10
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VLDRNE          S1, =1.0
VADDNE.F32      S0, S0, S1
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
NOP
NOP
B               def_1C04B0; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
B               loc_1C0620
CMP             R4, #0x3C ; '<'; jumptable 001C04B0 case 17
BLT             loc_1C0690
B               loc_1C0758
CMP             R4, #0x3C ; '<'; jumptable 001C04B0 case 22
BGE             loc_1C0758
LDR             R1, =0x2836
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               def_1C04B0; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
CMP             R4, #0x5F ; '_'; jumptable 001C04B0 case 24
BGE             loc_1C0758
LDR             R1, =0x284A
MOV             R0, R6
BL              sub_543494
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R3, #0
MOV             R1, R0,LSR#16
LDR             R0, [R6]
VLDR            S0, =2.0
MOV             R2, R3
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
LDR             R0, =dword_6D1F40
LDR             R7, [R6,#0xA4]
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, [R6,#0xA4]
VLDR            S1, =0.000015259
LDRSH           R0, [R0,#0x18]
VCVT.F32.U32    S0, S0
VMUL.F32        S1, S0, S1
VMOV            S0, R0
ADD             R0, R7, #0x10
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S1, S0
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
B               def_1C04B0; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
LDR             R0, [R6]
MOV             R1, #0
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
ADD             R4, R4, #1; jumptable 001C04B0 default case, cases 2,3,5-16,18-20,23
CMP             R4, R8
BLT             loc_1C048C
POP             {R4-R12,PC}
