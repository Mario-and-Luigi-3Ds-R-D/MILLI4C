PUSH            {R4-R11,LR}
MOV             R6, R2
MOV             R7, #0
MOV             R4, R0
MOV             R5, R1
LDR             R3, =unk_643138
MOV             R8, R7
VPUSH           {D8-D9}
SUB             SP, SP, #0x1C
MOV             R11, #1
LDRB            R2, [R1]
CMP             R2, #0
BEQ             loc_1CD67C
ADD             R12, R3, #0x24 ; '$'
SUB             R12, R12, R3
MOV             R1, R3
MOV             R0, #1
ADD             R12, R11, R12,ASR#2
LDRB            R9, [R1]
CMP             R9, R2
BEQ             loc_1CD680
ADD             R0, R0, #1
CMP             R12, R0
ADD             R1, R1, #4
BGT             loc_1CD660
MOV             R1, R8
LDRB            R12, [R4,#0x28]
LDR             R10, =off_6CE970
CMP             R12, #0
BEQ             loc_1CD6F0
LDRB            R0, [R4,#0x20]
CMP             R0, #0
BNE             loc_1CD6F0
ADD             R9, R3, #0x24 ; '$'
LDR             R0, =unk_643138
SUB             R3, R9, R3
MOV             R2, #1
ADD             R3, R11, R3,ASR#2
LDRB            R9, [R0]
CMP             R9, R12
BNE             loc_1CD6E0
CMP             R0, #0
BEQ             loc_1CD6F0
LDRB            R1, [R1,#2]
LDRB            R0, [R0,#2]
CMP             R0, R1
BHI             loc_1CD6F0
CMP             R7, #0
BNE             loc_1CD75C
B               loc_1CD8A0
ADD             R2, R2, #1
CMP             R3, R2
ADD             R0, R0, #4
BGT             loc_1CD6B0
LDR             R0, [R4,#0x18]
LDR             R0, [R0]
LDRH            R0, [R0,#0x10]
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1CD75C
LDR             R0, [R4,#0x18]
LDR             R12, [R10]
MOV             R3, #1
MOV             R2, #0x25 ; '%'
LDR             R0, [R0]
STR             R8, [SP,#0x50+var_50]
LDRB            R1, [R0,#0x495]
MOV             R0, R12
BL              sub_5EEC7C
CMP             R0, #0
LDRBNE          R0, [R5]
CMPNE           R0, #0
BEQ             loc_1CD75C
CMP             R0, #7
CMPNE           R0, #8
CMPNE           R0, #9
BNE             loc_1CD8A0
LDRH            R0, [R5,#8]
CMP             R0, #0x64 ; 'd'
BCC             loc_1CD8A0
LDR             R0, [R4,#0x18]
LDRH            R1, [R5,#8]
LDRB            R3, [R5,#1]
LDR             R0, [R0]
CMP             R1, #0x64 ; 'd'
LDRB            R1, [R5]
MOVCC           R2, #1
LDR             R12, [R0]
MOVCS           R2, #0
LDR             R12, [R12,#0x68]
BLX             R12
LDR             R2, =dword_6D1F40
MOV             R1, #0x64 ; 'd'
BL              sub_480134
CMP             R0, #0
STR             R0, [SP,#0x50+var_44]
BEQ             loc_1CD8A0
LDR             R0, [R5]
STR             R0, [R4,#0x28]
LDR             R0, [R5,#4]
STR             R0, [R4,#0x2C]
LDR             R0, [R5,#8]
STR             R0, [R4,#0x30]
LDRSB           R0, [R4,#0x2B]
CMP             R0, #0x64 ; 'd'
MOVGE           R0, #0x64 ; 'd'
BGE             loc_1CD7D0
CMP             R0, #0
MOVLE           R0, #0
STRH            R0, [R4,#0x22]
LDRSB           R0, [R4,#0x2D]
CMP             R0, #0x64 ; 'd'
MOVGE           R0, #0x64 ; 'd'
BGE             loc_1CD7EC
CMP             R0, #0
MOVLE           R0, #0
STRH            R0, [R4,#0x24]
STRB            R6, [R4,#0x26]
LDR             R1, =off_106490
LDR             R0, [R10]
LDR             R2, =0x10647C
LDR             R1, [R0,R1]; off_106490
ADD             R0, R0, R2; loc_10647C
STR             R1, [R4,#0x1C]
MOV             R1, R4
BL              sub_58E500
STRB            R11, [R4,#0x14]
LDR             R0, [R4,#0x38]
CMP             R0, #0
BEQ             loc_1CD838
BL              sub_533330
LDR             R0, [R4,#0x38]
CMP             R0, #0
STRNE           R8, [R0,#0x184]
STRNE           R8, [R4,#0x38]
LDR             R0, [R4,#0x18]
LDR             R5, [R0]
LDR             R6, [R5,#0x18]
LDRH            R0, [R5,#0x10]
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1CD864
LDRH            R1, [R5,#0x10]
LDR             R0, [R10]
BL              sub_52F368
LDRB            R1, [R4,#0x28]
STR             R0, [SP,#0x50+var_48]
CMP             R1, #0xA; switch 10 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1CD870; jumptable 001CD870 default case, case 0
DCD def_1CD870; jump table for switch statement
ADD             SP, SP, #0x1C
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R11,PC}
NOP; jumptable 001CD870 case 1
BL              sub_4E2764
LDR             R0, [SP,#0x50+var_48]
NOP
BL              sub_47D398
NOP
NOP
B               def_1CD870; jumptable 001CD870 default case, case 0
LDRH            R0, [R5,#0x10]; jumptable 001CD870 cases 2,3
BL              sub_47FF28
CMP             R0, #0
LDRB            R0, [R4,#0x28]
BEQ             loc_1CD92C
CMP             R0, #2
LDREQ           R2, =0x3001B
LDRNE           R2, =0x3001C
LDR             R0, =0xFFE683CC
LDR             R12, [R10]
LDRH            R1, [R5,#0x10]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
MOV             R0, R4
NOP
BL              sub_1CD328
LDR             R0, [SP,#0x50+var_48]
NOP
BL              sub_47D398
NOP
NOP
B               def_1CD870; jumptable 001CD870 default case, case 0
CMP             R0, #2
LDRNE           R2, =0x3002B
LDREQ           R2, =0x3002A
B               loc_1CD8F0
LDRH            R0, [R5,#0x10]; jumptable 001CD870 case 4
BL              sub_47FF28
CMP             R0, #0
NOP
BEQ             loc_1CD9F8
LDR             R0, [SP,#0x50+var_48]
LDR             R7, =0x35A
LDR             R9, [R10]
ADD             R1, R0, #0x400
LDRB            R1, [R1,#0x95]
ORR             R0, R7, R7,ASR#8
CMP             R1, #0
MOVNE           R7, R0
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1CD9B0
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1CD9B0
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
MOV             R0, #0x27 ; '''
STMEA           SP, {R0,R8}
LDR             R3, =flt_711FE4
MOV             R2, R6
MOV             R1, R7
MOV             R0, R9
BL              sub_52C764
MOV             R6, R0
LDR             R0, =0xFFE683CC
LDR             R12, [R10]
LDRH            R1, [R5,#0x10]
LDR             R2, =0x3001D
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
NOP
NOP
B               loc_1CDAD4
ADD             R0, R5, #0x158
VLDR            S0, =0.0
LDM             R0, {R0,R1}
ADD             R3, SP, #0x50+var_40
MOV             R2, R6
STRD            R0, R1, [SP,#0x50+var_40]
LDR             R1, =0x10307
VSTR            S0, [SP,#0x50+var_38]
LDR             R0, [R10]
STMEA           SP, {R1,R8}
MOV             R1, #0x360
BL              sub_52C764
MOV             R6, R0
MOV             R0, R5
BL              sub_5ED140
CMP             R0, #0
NOP
BEQ             loc_1CDAB8
LDR             R7, [R4,#0x18]
MOV             R9, #0x14
LDR             R0, [R7,#0xF8]
CMP             R0, #0
STRNE           R9, [R0,#0x1C]
BNE             loc_1CDAB8
LDR             R0, [R10]
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063BC - 0x106000)]
MOV             R0, #0x20 ; ' '
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1CDAA0
MOV             R2, #0
MOV             R1, #1
BL              sub_1DFBC4
LDR             R1, =off_6BB6B4
STR             R1, [R0]
ADD             R1, R0, #0x18
STM             R1, {R7,R9}
MOV             R1, R0
STR             R0, [R7,#0xF8]
LDR             R0, =0x1064D8
LDR             R2, [R10]
ADD             R0, R0, R2; loc_1064D8
BL              sub_1DFCE0
LDR             R0, =0xFFE683CC
LDR             R12, [R10]
LDRH            R1, [R5,#0x10]
LDR             R2, =0x3002C
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
CMP             R6, #0
BEQ             loc_1CDAFC
STRH            R8, [R6,#0xA]
LDR             R0, [R4,#0x34]
ADD             R7, R4, #0x34 ; '4'
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
STR             R6, [R7,#4]
STR             R7, [R6,#0x184]
LDR             R0, [SP,#0x50+var_48]
BL              sub_47D398
NOP
NOP
B               def_1CD870; jumptable 001CD870 default case, case 0
NOP; jumptable 001CD870 cases 5,6
BL              sub_47D398
NOP
NOP
B               def_1CD870; jumptable 001CD870 default case, case 0
LDRH            R0, [R5,#0x10]; jumptable 001CD870 cases 7-9
BL              sub_47FF28
CMP             R0, #0
LDRH            R0, [R4,#0x30]
BEQ             loc_1CDCC8
CMP             R0, #0x64 ; 'd'
LDRCC           R2, =0x30020
LDRCS           R2, =0x3001F
LDR             R0, =0xFFE683CC
LDR             R12, [R10]
LDRH            R1, [R5,#0x10]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
LDR             R0, [R10]; jumptable 001CD870 default case, case 0
MOV             R3, #0
MOV             R2, R3
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x6000
LDR             R1, [R0,#(loc_1063B4 - 0x106000)]
MOV             R0, #0x1D8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1CDFE0
LDR             R1, [R4,#0x18]
LDRH            R7, [R5,#0x10]
ADD             R6, R1, #0xF4
BL              sub_14CB8C
LDR             R1, =off_643164
STR             R1, [R0],#0x100
STR             R6, [R0],#4
BL              sub_5A2BD0
LDR             R1, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R1, R0, #0x30 ; '0'
STR             R1, [R0,#0x28]
MOV             R1, #0
STRB            R11, [R0,#0x2C]
REV             R1, R1
VLDR            S16, =0.0
STR             R1, [R0,#0x58]!
MOV             R1, #0
REV             R1, R1
STR             R1, [R0,#4]
MOV             R1, #0
REV             R1, R1
STR             R1, [R0,#8]
VSTR            S16, [R0,#0xC]
VSTR            S16, [R0,#0x10]
VSTR            S16, [R0,#0x14]
VSTR            S16, [R0,#0x18]
ADD             R0, R0, #0x1C
BL              sub_5A2F28
ADD             R0, R0, #0x1C
NOP
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R11, [R0,#0x14]
SUB             R5, R0, #0x194
STRB            R8, [R0,#0x40]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1CDD04
B               loc_1CDCD8
DCD unk_643138
DCD off_6CE970
DCD dword_6D1F40
DCD off_106490
DCD 0x10647C
DCD 0x3001B
DCD 0x3001C
DCD 0xFFE683CC
DCD 0x3002B
DCD 0x3002A
DCD 0x35A
DCD dword_6E1330
DCFS 0.0
DCD flt_711FE4
DCD 0x3001D
DCD 0x10307
DCD off_6BB6B4
DCD 0x1064D8
DCD 0x3002C
DCD 0x30020
DCD 0x3001F
DCD off_643164
DCD off_6B7BFC
DCD sub_5A39D0
DCD off_6B7BEC
DCD sub_5A2F28
CMP             R0, #0x64 ; 'd'
LDRCC           R2, =0x3002E
LDRCS           R2, =0x3002D
B               loc_1CDB44
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1CDD04
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, R5, #0x30 ; '0'
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
MOV             R1, R7
LDR             R0, [R10]
BL              sub_52F538
MOV             R9, R0
MOV             R1, #0
MOV             R0, R5
BL              sub_14C3E8
LDRB            R1, [R4,#0x28]
LDRH            R0, [R4,#0x30]
CMP             R1, #0xA; switch 10 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1CDD3C; jumptable 001CDD3C default case, cases 0,5
DCD def_1CDD3C; jump table for switch statement
MOV             R0, #4; jumptable 001CDD3C case 1
B               loc_1CDDC8
MOV             R0, #3; jumptable 001CDD3C case 2
B               loc_1CDDC8
MOV             R0, #2; jumptable 001CDD3C case 3
B               loc_1CDDC8
MOV             R0, #1; jumptable 001CDD3C case 4
B               loc_1CDDC8
MOV             R0, #0; jumptable 001CDD3C case 6
B               loc_1CDDC8
CMP             R0, #0x64 ; 'd'; jumptable 001CDD3C case 7
MOVCC           R0, #6
MOVCS           R0, #5
B               loc_1CDDC8
CMP             R0, #0x64 ; 'd'; jumptable 001CDD3C case 8
MOVCC           R0, #8
MOVCS           R0, #7
B               loc_1CDDC8
CMP             R0, #0x64 ; 'd'; jumptable 001CDD3C case 9
MOVCC           R0, #0xA
MOVCS           R0, #9
B               loc_1CDDC8
MOV             R0, #0xFF; jumptable 001CDD3C default case, cases 0,5
STRB            R0, [R5,#0x1D6]
LDR             R2, [R5,#0x100]
LDR             R1, [R2]
CLZ             R0, R1
CMP             R0, #0
BEQ             loc_1CDF10
RSB             R0, R0, #0x20 ; ' '
AND             R0, R0, #0xFF
ORR             R1, R1, R11,LSL R0
STR             R1, [R2]
STRB            R0, [R5,#0x1D4]
MOV             R0, R7
BL              sub_47FF28
CMP             R0, #0
LDR             R0, =flt_6E2A58
LDR             R10, =flt_6E2A58
ADDNE           R6, R0, #0x258
ADDEQ           R6, R0, #0x264
LDRB            R0, [R5,#0x1D4]
VLDR            S3, [R10,#(flt_6E2CCC - 0x6E2A58)]
VLDR            S17, [R6]
VMOV            S0, R0
VLDR            S16, [R6,#4]
VLDR            S18, [R10,#(flt_6E2CD4 - 0x6E2A58)]
VLDR            S1, [R10,#(flt_6E2CD0 - 0x6E2A58)]
LDR             R0, [R9]
VCVT.F32.U32    S5, S0
VCVT.F32.U32    S4, S0
VCVT.F32.U32    S0, S0
LDR             R1, [R0,#0x50]
MOV             R0, R9
VMLA.F32        S18, S3, S5
VMLA.F32        S17, S3, S4
VMLA.F32        S16, S1, S0
BLX             R1
CMP             R0, #0
VLDREQ          S19, [R6,#8]
VLDRNE          S19, [R10,#(flt_6E2CC8 - 0x6E2A58)]
VSTR            S18, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_4C]
VMOV            R1, S16
VMOV            R2, S19
VSTR            S19, [SP,#0x50+var_48]
ADD             R3, R5, #0x28 ; '('
VSTR            S18, [R5,#0x24]
ADD             R6, R5, #0x104
MOV             R0, R6
STM             R3, {R1,R2}
BL              sub_5A26D0
LDMFD           SP, {R0-R2}
ADD             R3, R6, #0x1C
ADD             R6, R6, #4
STM             R3, {R0-R2}
STM             R6, {R0-R2}
MOV             R2, SP
VSTR            S17, [SP,#0x50+var_50]
VSTR            S16, [SP,#0x50+var_4C]
VSTR            S19, [SP,#0x50+var_48]
VLDR            S0, [R10,#(flt_6E2CD8 - 0x6E2A58)]
MOV             R1, #0
ADD             R0, R5, #0x104
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
ADD             R6, R5, #0x15C
REV             R7, R0
MOV             R0, R6
STR             R7, [R5,#0x9C]
BL              sub_4E63E0
MOV             R0, #0xFFFFFFFF
STR             R7, [R6,#4]
REV             R0, R0
STR             R7, [R6]
STR             R0, [SP,#0x50+var_40]
ADD             R1, SP, #0x50+var_40
VLDR            S0, [R10,#(flt_6E2CD8 - 0x6E2A58)]
ADD             R0, R5, #0x15C
BL              sub_4E665C
LDR             R0, =dword_6E132C
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1CDF7C
B               loc_1CDF4C
TST             R1, R11,LSL R0
BEQ             loc_1CDF38
ADD             R2, R0, #1
TST             R1, R11,LSL R2
BEQ             loc_1CDF40
ADD             R0, R0, #2
CMP             R0, #0x20 ; ' '
BCC             loc_1CDF10
MOV             R0, #0x20 ; ' '
B               loc_1CDDF0
AND             R0, R0, #0xFF
B               loc_1CDDF0
ADD             R0, R0, #1
AND             R0, R0, #0xFF
B               loc_1CDDF0
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1CDF7C
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R1, =flt_711FD8
ADD             R6, R5, #0x194
MOV             R0, R6
LDM             R1, {R2,R3,R12}
STRD            R2, R3, [R5,#0x5C]
STR             R12, [R5,#0x64]
LDR             R7, [R1,#(flt_711FDC - 0x711FD8)]
BL              sub_5A18EC
STR             R7, [R6,#0xC]
ADD             R0, R5, #0x194
STR             R7, [R6,#4]
BL              sub_5A18EC
VLDR            S0, =1.0
MOV             R2, #0x300
VSTR            S0, [R5,#0x1A0]
VSTR            S0, [R5,#0x198]
MOV             R1, R9
MOV             R0, R5
BL              sub_1CF9C4
MOV             R2, #0
MOV             R1, #1
MOV             R0, R5
STRB            R8, [R5,#0xF1]
BL              sub_14B798
STRB            R8, [R5,#0x1D5]
LDRB            R0, [R4,#0x28]
STRB            R0, [R4,#0x27]
LDR             R0, [SP,#0x50+var_44]
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R11,PC}
