PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
LDR             R1, [R0,#4]
LDRB            R0, [R1,#0xDE]
TST             R0, #1
BEQ             def_202728; jumptable 00202728 default case, cases 0,1
ADD             R0, R1, #0x400
LDR             R1, [R1,#0x648]
LDR             R10, =off_6D1648
ADD             R0, R0, #0x248
TST             R1, #0x20
BICNE           R1, R1, #0x20 ; ' '
STRNE           R1, [R0]
LDRB            R5, [R4,#0x1D3]
LDR             R1, [R10]
VLDR            S17, =40.744
MOV             R8, #0
VLDR            S16, =0.0
CMP             R5, #3; switch 3 cases
MOV             R11, #4
MOV             R9, #1
MOV             R6, R8
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_201EC4; jumptable 00201EC4 default case
DCD loc_201ED8; jump table for switch statement
LDRB            R0, [R4,#0x1D2]; jumptable 00201EC4 case 0
CMP             R0, #0
BEQ             def_201EC4; jumptable 00201EC4 default case
MOV             R0, R1
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_357C10
CMP             R0, #0
VSTRNE          S16, [R4,#0x1D8]
STRBNE          R9, [R4,#0x1D3]
BNE             def_201EC4; jumptable 00201EC4 default case
LDRB            R0, [R4,#0x1D0]
CMP             R0, #0
BEQ             def_201EC4; jumptable 00201EC4 default case
LDR             R0, [R10]
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_35802C
CMP             R0, #0
NOP
BNE             loc_2020B0
LDR             R0, [R10]
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_3582B0
CMP             R0, #0
NOP
BEQ             loc_2020B0
LDRB            R0, [R4,#0x1D1]
CMP             R0, #0
BEQ             loc_201F70
CMP             R0, #1
BEQ             loc_202004
CMP             R0, #4
BNE             def_201EC4; jumptable 00201EC4 default case
LDR             R0, [R4,#4]
MOV             R1, #3
LDR             R0, [R0,#0x8C4]
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BD5FC
STR             R0, [SP,#0x50+var_50]
LDR             R7, [R4,#4]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7,#0x758]!
MOV             R3, #0
MOV             R1, SP
LDR             R12, [R0,#0x30]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#4]
MOV             R1, #0x200
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_123CE8
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #8
STRH            R9, [R0,#6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_485780
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
LDRH            R1, [R0,#0xA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xA]
STRB            R9, [R4,#0x1D1]
LDR             R1, [R4,#4]
LDR             R0, =0x812
LDRH            R0, [R0,R1]
TST             R0, #1
BNE             def_201EC4; jumptable 00201EC4 default case
LDR             R0, [R1,#0x8C4]
MOV             R1, #2
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BD5FC
STR             R0, [SP,#0x50+var_50]
LDR             R7, [R4,#4]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7,#0x758]!
MOV             R3, #0
MOV             R1, SP
LDR             R12, [R0,#0x30]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#4]
MOV             R1, #0x200
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_123CE8
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #8
STRH            R8, [R0,#6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_485780
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
LDRH            R1, [R0,#0xA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xA]
MOV             R0, #2
STRB            R0, [R4,#0x1D1]
B               def_201EC4; jumptable 00201EC4 default case
LDRB            R0, [R4,#0x1D1]
CMP             R0, #0
BEQ             loc_202174
CMP             R0, #2
BEQ             loc_2020D0
CMP             R0, #4
BNE             def_201EC4; jumptable 00201EC4 default case
B               loc_202174
LDR             R0, [R4,#4]
MOV             R1, R0
LDR             R0, [R0,#0x808]
CMP             R0, #0
BNE             loc_202174
LDR             R0, [R1,#0x8C4]
MOV             R1, #1
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BD5FC
STR             R0, [SP,#0x50+var_50]
LDR             R7, [R4,#4]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7,#0x758]!
MOV             R3, #0
MOV             R1, SP
LDR             R12, [R0,#0x30]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#4]
MOV             R1, #0x200
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_123CE8
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #8
STRH            R9, [R0,#6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_485780
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
LDRH            R1, [R0,#0xA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xA]
STRB            R8, [R4,#0x1D1]
LDR             R1, [R4,#4]
LDR             R0, =0x812
LDRH            R0, [R0,R1]
TST             R0, #1
BNE             def_201EC4; jumptable 00201EC4 default case
LDR             R0, [R1,#0x8C4]
MOV             R1, #0
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BD5FC
STR             R0, [SP,#0x50+var_50]
LDR             R7, [R4,#4]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7,#0x758]!
MOV             R3, #0
MOV             R1, SP
LDR             R12, [R0,#0x30]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#4]
MOV             R1, #0x200
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_123CE8
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #8
STRH            R8, [R0,#6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_485780
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
LDRH            R1, [R0,#0xA]
ORR             R1, R1, #1
STRH            R1, [R0,#0xA]
STRB            R8, [R4,#0x1D1]
B               def_201EC4; jumptable 00201EC4 default case
DCD off_6D1648
DCFS 40.744
DCFS 0.0
DCD 0x812
LDRB            R0, [R4,#0x1D0]; jumptable 00201EC4 case 1
CMP             R0, #0
LDRBNE          R0, [R4,#0x1D1]
CMPNE           R0, #4
BEQ             loc_2022D4
LDR             R0, [R4,#4]
MOV             R1, #0
LDR             R0, [R0,#0x8C4]
ADD             R0, R0, #0x38 ; '8'
BL              sub_4BD5FC
STR             R0, [SP,#0x50+var_50]
LDR             R7, [R4,#4]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R2, R0, #0xCC
LDR             R0, [R7,#0x758]!
MOV             R3, #0
MOV             R1, SP
LDR             R12, [R0,#0x30]
MOV             R0, R7
BLX             R12
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_123CE8
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x800
ADD             R0, R0, #8
STRH            R8, [R0,#6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
BL              sub_485780
LDR             R0, [R4,#4]
ADD             R0, R0, #0x800
ADD             R0, R0, #8
LDRH            R1, [R0,#0xA]
BIC             R1, R1, #1
STRH            R1, [R0,#0xA]
STRB            R11, [R4,#0x1D1]
LDR             R0, [R10]
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_358578
CMP             R0, #0
NOP
BNE             loc_2023CC
ADD             R0, R4, #0x1D8
VLDR            S18, =1.5708
VLDM            R0, {S0-S1}
ADD             R0, R4, #0x1C0
VADD.F32        S0, S0, S1
VSTR            S0, [R4,#0x1D8]
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
VLDR            S0, [R4,#0x1D8]
VMUL.F32        S0, S0, S18
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S2, [R4,#0x1E0]
VLDR            S1, [SP,#0x50+var_4C]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S2, S0
VSTR            S1, [SP,#0x50+var_4C]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
LDR             R0, [R10]
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_358578
CMP             R0, #0
NOP
BEQ             loc_2023CC
ADD             R0, R4, #0x1D8
VLDM            R0, {S0-S1}
VSUB.F32        S0, S0, S1
VSTR            S0, [R4,#0x1D8]
LDR             R0, [R4,#0x1C0]
STR             R0, [SP,#0x50+var_50]
LDR             R0, [R4,#0x1C4]
STR             R0, [SP,#0x50+var_4C]
LDR             R0, [R4,#0x1C8]
STR             R0, [SP,#0x50+var_48]
VLDR            S0, [R4,#0x1D8]
VMUL.F32        S0, S0, S18
VMUL.F32        S0, S0, S17
BL              sub_464380
VLDR            S2, [R4,#0x1E0]
VLDR            S1, [SP,#0x50+var_4C]
VSUB.F32        S2, S2, S1
VMLA.F32        S1, S2, S0
VSTR            S1, [SP,#0x50+var_4C]
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
LDR             R0, [R4,#0x1D8]
CMP             R0, #0x3F800000
MOVGE           R0, #2
VSTRGE          S16, [R4,#0x1D8]
BGE             loc_20247C
LDR             R0, [R10]
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_357C10
CMP             R0, #0
NOP
BEQ             loc_202478
B               def_201EC4; jumptable 00201EC4 default case
VLDR            S1, [R4,#0x1D8]; jumptable 00201EC4 case 2
VLDR            S0, =0.016667
VADD.F32        S0, S0, S1
VMOV            R0, S0
VSTR            S0, [R4,#0x1D8]
CMP             R0, #0x3F800000
VSTRGE          S16, [R4,#0x1D8]
BGE             def_201EC4; jumptable 00201EC4 default case
MOV             R0, R1
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_357C10
CMP             R0, #0
NOP
BEQ             loc_202478
LDR             R0, [R10]
BL              sub_1E4614
LDR             R1, [R4,#4]
NOP
BL              sub_357E50
TST             R0, #0xA
MOV             R6, R0
BEQ             def_201EC4; jumptable 00201EC4 default case
LDR             R0, [R4,#0x1BC]
STRB            R11, [R4,#0x1D3]
CMP             R0, #0
BEQ             loc_202484
B               def_201EC4; jumptable 00201EC4 default case
MOV             R0, #3
STRB            R0, [R4,#0x1D3]
B               def_201EC4; jumptable 00201EC4 default case
LDR             R0, [R10]
BL              sub_1E4614
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x128
LDR             R1, [R0]
STR             R1, [SP,#0x50+var_50]
LDR             R1, [R0,#4]
STR             R1, [SP,#0x50+var_4C]
LDR             R0, [R0,#8]
STR             R0, [SP,#0x50+var_48]
LDR             R0, [R10]
BL              sub_1E4614
ADD             R0, R0, #0x108
VLDR            S0, [SP,#0x50+var_50]
VLDR            S1, [R0]
TST             R6, #2
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_50]
VLDR            S2, [R0,#4]
VLDR            S1, [SP,#0x50+var_4C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x50+var_4C]
VLDR            S3, [R0,#8]
VLDR            S2, [SP,#0x50+var_48]
VADD.F32        S2, S2, S3
VLDR            S3, =23.5
VADD.F32        S1, S1, S3
VSTR            S2, [SP,#0x50+var_48]
VLDR            S2, =12.0
VSTR            S1, [SP,#0x50+var_4C]
BEQ             loc_202538
VADD.F32        S0, S0, S2
VSTR            S0, [SP,#0x50+var_50]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0x8A
BL              sub_168114
ADD             R1, R4, #0x1BC
STR             R0, [R4,#0x1BC]
STR             R1, [R0,#0x180]
NOP
NOP
B               def_201EC4; jumptable 00201EC4 default case
VSUB.F32        S0, S0, S2
VSTR            S0, [SP,#0x50+var_50]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0x8A
BL              sub_168114
ADD             R1, R4, #0x1BC
STR             R0, [R4,#0x1BC]
STR             R1, [R0,#0x180]
LDRB            R0, [R4,#0x1D3]; jumptable 00201EC4 default case
CMP             R0, R5
BEQ             def_202584; jumptable 00202584 default case, case 0
CMP             R0, #5; switch 5 cases
VLDR            S18, =2.0
VLDR            S0, =6.2832
VLDR            S19, =7.5
STRB            R5, [R4,#0x1D4]
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_202584; jumptable 00202584 default case, case 0
DCD def_202584; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 00202584 case 1
ADD             R5, R4, #0x1C0
LDR             R1, [R0,#0x4EC]
BIC             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
LDR             R1, [R4,#4]
ADD             R0, R1, #0x108
LDM             R0, {R0,R2,R3}
VMOV            S2, R2
STM             R5, {R0,R2,R3}
MOV             R2, #0
VLDR            S0, [R4,#0x1E0]
VLDR            S1, [R4,#0x1F0]
LDR             R0, =0x208F4
VSUB.F32        S0, S0, S2
VMUL.F32        S1, S1, S18
VDIV.F32        S2, S1, S0
VMOV.F32        S0, S16
VSTR            S2, [R4,#0x1DC]
VMOV.F32        S1, S0
B               loc_20271C
DCFS 1.5708
DCFS 0.016667
DCFS 23.5
DCFS 12.0
DCFS 2.0
DCFS 6.2832
DCFS 7.5
DCD 0x208F4
CMP             R5, #4; jumptable 00202584 case 2
BNE             loc_20263C
VLDR            S1, [R4,#0x1D8]
VMUL.F32        S0, S1, S0
VMUL.F32        S0, S0, S17
BL              sub_464380
LDR             R0, [R4,#4]
VLDR            S1, [R0,#0x10C]
VMLS.F32        S1, S0, S19
VSTR            S1, [R0,#0x10C]
LDR             R2, [R4,#4]
ADD             R3, R4, #0x1C0
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
B               def_202584; jumptable 00202584 default case, case 0
LDR             R0, [R4,#4]; jumptable 00202584 case 3
CMP             R5, #2
LDR             R1, [R0,#0x4EC]
ORR             R1, R1, #0x10
STR             R1, [R0,#0x4EC]
BNE             def_202584; jumptable 00202584 default case, case 0
VLDR            S1, [R4,#0x1D8]
VMUL.F32        S0, S1, S0
VMUL.F32        S0, S0, S17
BL              sub_464380
LDR             R0, [R4,#4]
VLDR            S1, [R0,#0x10C]
VMLA.F32        S1, S0, S19
VSTR            S1, [R0,#0x10C]
B               def_202584; jumptable 00202584 default case, case 0
VLDR            S1, [R4,#0x1D8]; jumptable 00202584 case 4
VMUL.F32        S0, S1, S0
VMUL.F32        S0, S0, S17
BL              sub_464380
LDR             R0, [R4,#4]
TST             R6, #2
MOV             R1, #0x3F ; '?'
VMOV.F32        S3, S16
VLDR            S1, [R0,#0x10C]
MOV             R3, #0x3F ; '?'
VMLA.F32        S1, S0, S19
VLDRNE          S0, =10000.0
VLDREQ          S0, =-10000.0
VSTR            S1, [R0,#0x10C]
VSTR            S0, [SP,#0x50+var_40]
VSTR            S16, [SP,#0x50+var_3C]
VSTR            S16, [SP,#0x50+var_38]
VLDR            S0, [R4,#0x1EC]
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
VMUL.F32        S0, S0, S18
ADD             R2, R0, #0x164
STR             R2, [SP,#0x50+var_44]
STMEA           SP, {R1,R8,R9}
ADD             R2, SP, #0x50+var_40
LDR             R1, [R0]
LDR             R12, [R1,#0x1E0]
VMOV.F32        S2, S0
MOV             R1, #1
BLX             R12
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x208F5
MOV             R2, #0
BL              sub_1459F8
LDRB            R0, [R4,#0x1D3]; jumptable 00202584 default case, case 0
CMP             R0, #3; switch 3 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_202728; jumptable 00202728 default case, cases 0,1
DCD def_202728; jump table for switch statement
ADD             R0, R4, #0x1C0; jumptable 00202728 case 2
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
LDR             R0, [R4,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x6C]
MOV             R1, SP
BLX             R2
ADD             SP, SP, #0x1C; jumptable 00202728 default case, cases 0,1
VPOP            {D8-D9}
POP             {R4-R11,PC}
