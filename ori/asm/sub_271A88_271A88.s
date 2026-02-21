PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
VMOV.F32        S17, S0
LDR             R0, [R0]
SUB             SP, SP, #0x48
VLDR            S16, =1.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
MOV             R0, R4
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, [R4,#0x28]
VSUB.F32        S0, S1, S0
VSTR            S0, [R4,#0x28]
BL              sub_26C578
LDRB            R0, [R4,#0x18]
LDR             R10, =off_6CDF98
VLDR            S1, =0.0
CMP             R0, #8; switch 8 cases
MOV             R5, #8
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_271AEC; jumptable 00271AEC default case, case 0
DCD def_271AEC; jump table for switch statement
VMOV.F32        S0, S17; jumptable 00271AEC case 1
LDR             R0, [R4,#0x1C]
BL              sub_271F00
LDR             R0, [R4,#0x1C]
LDR             R1, [R0,#0x6C8]
CMP             R1, #0
BEQ             loc_271B54
LDRB            R0, [R0,#0x4C9]
CMP             R0, #0
BEQ             loc_271B88
LDR             R0, [R10]
BL              sub_5CD764
CMP             R0, #0
MOVNE           R0, #2
BEQ             loc_271B88
B               loc_271D84
NOP
BL              sub_5CC720
CMP             R0, #0
NOP
BEQ             loc_271ED8
LDR             R0, [R10]
LDR             R5, [R0,#0x124]
LDR             R0, [R4,#0x1C]
BL              sub_5CC4B0
STR             R0, [R4,#0x2C]
LDR             R1, [R5,#0x640]
MOV             R0, #4
B               loc_271D80
LDR             R0, [R10]
LDR             R8, [R0,#0x124]
LDR             R0, [R4,#0x1C]
ADD             R0, R0, #0x580
LDM             R0, {R5,R7}
CMP             R5, R7
BEQ             def_271AEC; jumptable 00271AEC default case, case 0
ADD             R6, SP, #0x70+var_64
ADD             R9, SP, #0x70+var_40
LDR             R0, [R5]
ADD             R1, SP, #0x70+var_64
ADD             R2, SP, #0x70+var_68
STR             R0, [SP,#0x70+var_68]
ADD             R0, R5, #4
STR             R0, [SP,#0x70+var_64]
LDR             R3, [R5,#8]
ADD             R0, SP, #0x70+var_44
STR             R3, [SP,#0x70+var_60]
STR             R1, [R3]
STR             R1, [R5,#8]
LDR             R1, [R10]
ADD             R3, SP, #0x70+var_38
BL              sub_5CCB94
LDR             R0, [SP,#0x70+var_60]
CMP             R0, R6
BNE             loc_271C08
LDR             R0, [SP,#0x70+var_68]
CMP             R0, #0
BEQ             loc_271C08
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x70+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x70+var_44]
CMP             R0, #0
BEQ             loc_271CFC
VLDR            S2, [R8,#0x288]
VLDR            S0, =0.5
VLDR            S1, [SP,#0x70+var_34]
VMUL.F32        S0, S2, S0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S1
VSTR            S0, [SP,#0x70+var_34]
VLDR            S0, [R8,#0xD8]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x70+var_30]
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, SP, #0x70+var_38
BLX             R2
LDR             R2, [SP,#0x70+var_44]
ADD             R0, SP, #0x70+var_58
ADD             R1, SP, #0x70+var_5C
STR             R2, [SP,#0x70+var_5C]
ADD             R2, SP, #0x70+var_40
STR             R2, [SP,#0x70+var_58]
LDR             R2, [SP,#0x70+var_3C]
STR             R2, [SP,#0x70+var_54]
STR             R0, [R2]
STR             R0, [SP,#0x70+var_3C]
LDR             R0, [R4,#0x1C]
BL              sub_26E69C
LDR             R1, [SP,#0x70+var_54]
ADD             R0, SP, #0x70+var_58
CMP             R1, R0
BNE             loc_271CB4
LDR             R0, [SP,#0x70+var_5C]
CMP             R0, #0
BEQ             loc_271CB4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x70+var_58]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [SP,#0x70+var_3C]
CMP             R0, R9
BNE             loc_271CE4
LDR             R0, [SP,#0x70+var_44]
CMP             R0, #0
BEQ             loc_271CE4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x70+var_40]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x48 ; 'H'; jumptable 00271AEC default case, case 0
VPOP            {D8}
POP             {R4-R10,PC}
LDRD            R0, R1, [SP,#0x70+var_40]
ADD             R5, R5, #0xC
CMP             R5, R7
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_271BAC
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R0, [R4,#0x2C]; jumptable 00271AEC case 4
CMP             R0, #0
VLDRNE          S0, [R4,#0x28]
VCMPENE.F32     S1, S0
VMRSNE          APSR_nzcv, FPSCR
BLE             def_271AEC; jumptable 00271AEC default case, case 0
LDR             R0, [R10]
LDR             R2, =dword_6D1F40
LDR             R0, [R0,#0x124]
ADD             R0, R0, #0x620
LDM             R0, {R0,R1}
BL              sub_47EADC
VMOV            S0, R0
MOV             R0, R4
VCVT.F32.S32    S0, S0
VSTR            S0, [R4,#0x28]
BL              sub_26BF24
LDR             R0, [R4,#0x2C]
CMP             R0, #0
BNE             def_271AEC; jumptable 00271AEC default case, case 0
LDR             R1, [R10]
MOV             R0, #5
LDR             R1, [R1,#0x124]
LDR             R1, [R1,#0x644]
STR             R1, [R4,#0x28]
STRB            R0, [R4,#0x18]
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8}
POP             {R4-R10,PC}
DCFS 0.0039062
DCFS 1.0
DCD off_6CE970
DCFS 0.0
DCD off_6CDF98
DCFS 0.5
DCD dword_6D1F40
VLDR            S0, [R4,#0x28]; jumptable 00271AEC case 5
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCS             def_271AEC; jumptable 00271AEC default case, case 0
LDR             R0, [R10]
MOV             R5, #0
BL              sub_5CCB84
CMP             R0, #0
NOP
BEQ             loc_271E18
LDR             R0, [R10]
ADD             R1, SP, #0x70+var_6C
MOV             R5, #1
LDR             R2, [R0,#0xD0]!
ADD             R0, R0, #4
STR             R0, [SP,#0x70+var_6C]
STR             R2, [SP,#0x70+var_70]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x70+var_68]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x70+var_70]
LDRB            R0, [R0,#0x420]
CMP             R0, #0
MOVNE           R6, #1
BNE             loc_271E1C
MOV             R6, #0
CMP             R5, #0
BEQ             loc_271E58
LDR             R1, [SP,#0x70+var_68]
ADD             R0, SP, #0x70+var_6C
CMP             R1, R0
BNE             loc_271E4C
LDR             R0, [SP,#0x70+var_70]
CMP             R0, #0
BEQ             loc_271E4C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x70+var_6C]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R6, #0
BEQ             loc_271EC4
LDR             R0, [R10]
ADD             R1, SP, #0x70+var_60
LDR             R2, [R0,#0xD0]!
ADD             R0, R0, #4
STR             R0, [SP,#0x70+var_60]
STR             R2, [SP,#0x70+var_64]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x70+var_5C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x70+var_64]
BL              sub_27F0AC
LDR             R1, [SP,#0x70+var_5C]
ADD             R0, SP, #0x70+var_60
CMP             R1, R0
BNE             loc_271EB8
LDR             R0, [SP,#0x70+var_64]
CMP             R0, #0
BEQ             loc_271EB8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x70+var_60]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, #6
B               loc_271D84
LDRD            R0, R1, [R4,#0xC]; jumptable 00271AEC case 6
CMP             R0, R1
BNE             def_271AEC; jumptable 00271AEC default case, case 0
STRB            R5, [R4,#0x18]
ADD             SP, SP, #0x48 ; 'H'
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R0, [R4,#0x1C]; jumptable 00271AEC cases 2,3,7
ADD             SP, SP, #0x48 ; 'H'
VMOV.F32        S0, S17
VPOP            {D8}
POP             {R4-R10,LR}
NOP
