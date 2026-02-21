PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R4, #0
LDR             R0, =byte_68DBBC
LDRB            R0, [R0]
CMP             R0, #0
BLS             locret_1B5FE0
LDR             R10, =unk_68D002
LDR             R9, =byte_68DBBC
LDR             R8, =0x19C98
LDR             R0, [R5,#8]
RSB             R2, R4, R4,LSL#4
ADD             R3, R2, R4,LSL#5
LDR             R1, [R5,#4]
LDRSH           R0, [R0]
RSB             R2, R4, R4,LSL#4
ADD             R3, R8, R3,LSL#2
CMP             R0, #0x20; switch 32 cases
ADD             R7, R10, R2,LSL#1
ADD             R6, R1, R3
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B5C88; jumptable 001B5C88 default case, cases 2,4-16,18-25,27-30
DCD loc_1B5D10; jump table for switch statement
LDR             R1, =0x3015; jumptable 001B5C88 case 0
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#8]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BNE             loc_1B5F20
ADD             R0, R6, #0x10
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_485780
NOP
NOP
B               def_1B5C88; jumptable 001B5C88 default case, cases 2,4-16,18-25,27-30
LDR             R1, =0x302E; jumptable 001B5C88 case 1
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_1B5D70
B               loc_1B5F20
LDR             R1, =0x302E; jumptable 001B5C88 case 3
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#0x12]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
RSB             R0, R0, R0,LSL#4
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_1B5D70
B               loc_1B5F20
LDR             R1, =0x3015; jumptable 001B5C88 case 17
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#8]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
VLDR            S1, =0.5
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_1B5D70
B               loc_1B5F20
LDR             R1, =0x303A; jumptable 001B5C88 case 26
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#8]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
VLDR            S1, =0.5
MOV             R0, R0,LSL#2
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
BEQ             loc_1B5D70
VLDR            S1, =1.0
VADD.F32        S0, S0, S1
B               loc_1B5D70
LDR             R1, =0x303A; jumptable 001B5C88 case 31
MOV             R0, R6
BL              sub_543494
LDR             R0, [R6]
MOV             R3, #0
LDRSH           R1, [R7,#8]
VLDR            S0, =2.0
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R6
BLX             R12
LDR             R6, [R6,#0xA4]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
VLDR            S1, =0.5
MOV             R0, R0,LSL#2
MOV             R0, R0,LSR#16
BIC             R1, R0, #1
VMOV            S0, R1
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
LDRB            R1, [R9]
LDR             R0, [R5,#4]
MOV             R1, R1,LSL#1
RSB             R2, R1, R1,LSL#4
ADD             R1, R2, R1,LSL#5
ADD             R1, R8, R1,LSL#2
ADD             R0, R0, R1
MOV             R1, #0
BL              sub_194BC0
LDRB            R0, [R9]; jumptable 001B5C88 default case, cases 2,4-16,18-25,27-30
ADD             R1, R4, #1
UXTH            R4, R1
CMP             R4, R0
BCC             loc_1B5C60
POP             {R4-R10,PC}
