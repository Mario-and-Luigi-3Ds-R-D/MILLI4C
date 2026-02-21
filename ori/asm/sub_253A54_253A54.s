PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R3, #0
MOV             R2, R3
LDR             R0, =off_6CE098
LDR             R5, =off_6CE970
VPUSH           {D8-D9}
SUB             SP, SP, #0xAC
LDR             R0, [R0]
LDR             R0, [R0,#0x8C]
STR             R0, [SP,#0xE0+var_A4]
LDR             R0, [R0,#0x7C]
LDR             R1, [R5]
ADD             R0, R0, R0,LSL#1
ADD             R1, R1, #0x68 ; 'h'
MOV             R0, R0,LSL#2
BL              sub_1143B4
LDR             R1, [SP,#0xE0+var_A4]
LDR             R2, [R1,#0x7C]
STR             R0, [SP,#0xE0+var_68]
ADD             R1, R2, R2,LSL#1
ADD             R0, R0, R1,LSL#2
LDR             R1, [SP,#0xE0+var_A4]
STR             R0, [SP,#0xE0+var_A0]
LDR             R0, [SP,#0xE0+var_68]
VLDR            S0, [R1,#0x74]
MOV             R1, R0
MOV             R0, R6
BL              sub_5CB764
LDR             R0, [SP,#0xE0+var_A4]
LDR             R2, =dword_6D1F40
LDRD            R0, R1, [R0,#0x80]
BL              sub_47EADC
MOV             R1, R5
MOV             R4, R0
LDR             R1, [R1]
MOV             R3, #0
MOV             R0, R0,LSL#2
MOV             R2, R3
ADD             R1, R1, #0x68 ; 'h'
BL              sub_1143B4
MOV             R7, R0
ADD             R11, R0, R4,LSL#2
LDR             R0, [SP,#0xE0+var_A4]
CMP             R7, R11
MOV             R4, R7
MOV             R5, #0
LDR             R0, [R0,#0x7C]
SUB             R8, R0, #1
BEQ             loc_253B70
LDR             R2, =dword_6D1F40
MOV             R1, R8
MOV             R0, R5
BL              sub_47EADC
STR             R0, [R4]
LDR             R1, [R6,#0x8C]
MOV             R2, R7
LDR             R1, [R1,#0x88]
CMP             R2, R4
BEQ             loc_253B60
LDR             R12, [R2]
ADD             R3, R1, R12
CMP             R3, R0
SUBHI           R3, R12, R1
CMPHI           R0, R3
ADDLS           R2, R2, #4
BLS             loc_253B3C
CMP             R2, R4
ADDEQ           R4, R4, #4
CMPEQ           R4, R11
BNE             loc_253B1C
MOV             R8, R11
CMP             R7, R8
MOV             R4, R7
BEQ             loc_253D20
SUB             R5, R8, R4
MOV             R1, R11
MOV             R2, R5,ASR#2
MOV             R0, R7
BL              sub_639F18
MOV             R0, #0x10
CMP             R0, R5,ASR#2
BGE             loc_253C84
ADD             R3, R4, #0x40 ; '@'
ADD             R0, R4, #4
CMP             R0, R3
BEQ             loc_253C44
LDR             R1, [R0]
LDR             R2, [R4]
MOV             R5, R4
CMP             R2, R1
MOVLS           R2, R0
MOVLS           R12, R0
BLS             loc_253C20
SUB             R2, R0, R5
MOV             R9, R0
MOV             R12, R2,ASR#2
CMP             R12, #0
ADD             R10, R0, #4
BLE             loc_253C18
MOVS            R12, R2,LSL#29
BPL             loc_253BF8
LDR             R12, [R0,#-4]
SUB             R9, R0, #4
STR             R12, [R10,#-4]!
MOVS            R2, R2,ASR#3
BEQ             loc_253C18
LDR             R12, [R9,#-4]
SUBS            R2, R2, #1
STR             R12, [R10,#-4]
LDR             R12, [R9,#-8]!
STR             R12, [R10,#-8]!
BNE             loc_253C00
STR             R1, [R4]
B               loc_253C38
LDR             R5, [R12,#-4]!
CMP             R1, R5
STRCC           R5, [R2]
MOVCC           R2, R12
BCC             loc_253C20
STR             R1, [R2]
ADD             R0, R0, #4
CMP             R0, R3
BNE             loc_253BB0
CMP             R3, R8
MOV             R0, R3
BEQ             loc_253D20
LDR             R2, [R0]
MOV             R1, R0
MOV             R3, R0
LDR             R12, [R3,#-4]!
CMP             R12, R2
STRHI           R12, [R1]
MOVHI           R1, R3
BHI             loc_253C5C
ADD             R0, R0, #4
CMP             R0, R8
STR             R2, [R1]
BNE             loc_253C50
B               loc_253D20
ADD             R0, R4, #4
CMP             R0, R8
BEQ             loc_253D20
LDR             R1, [R0]
LDR             R2, [R4]
CMP             R2, R1
MOVLS           R2, R0
MOVLS           R3, R0
BLS             loc_253CFC
SUB             R2, R0, R4
MOV             R12, R0
MOV             R3, R2,ASR#2
CMP             R3, #0
ADD             R5, R0, #4
BLE             loc_253CF4
MOVS            R3, R2,LSL#29
BPL             loc_253CD4
LDR             R3, [R0,#-4]
SUB             R12, R0, #4
STR             R3, [R5,#-4]!
MOVS            R2, R2,ASR#3
BEQ             loc_253CF4
LDR             R3, [R12,#-4]
SUBS            R2, R2, #1
STR             R3, [R5,#-4]
LDR             R3, [R12,#-8]!
STR             R3, [R5,#-8]!
BNE             loc_253CDC
STR             R1, [R4]
B               loc_253D14
LDR             R12, [R3,#-4]!
CMP             R1, R12
STRCC           R12, [R2]
MOVCC           R2, R3
BCC             loc_253CFC
STR             R1, [R2]
ADD             R0, R0, #4
CMP             R0, R8
BNE             loc_253C90
SUB             R0, R11, R7
SUB             R1, R0, #4
MOV             R0, R1,ASR#2
CMP             R0, #0
ADDGT           R0, R7, #4
MOVGT           R1, R1,ASR#2
BLE             loc_253D68
LDR             R3, [R6,#0x8C]
SUB             R2, R0, #4
LDM             R2, {R2,R12}
LDR             R3, [R3,#0x88]
SUB             R12, R12, R2
CMP             R12, R3
ADDCC           R2, R2, R3
STRCC           R2, [R0]
SUBS            R1, R1, #1
ADD             R0, R0, #4
BNE             loc_253D3C
CMP             R7, R11
MOV             R0, R7
BEQ             loc_253DB4
ADD             R1, R0, #4
SUB             R3, R11, R1
MOV             R2, R3,ASR#2
CMP             R2, #0
BLE             loc_253DB4
MOV             R2, R1
MOV             R12, #0
MOV             R3, R3,ASR#2
LDR             R5, [R0]
LDR             R4, [R2]
ADD             R2, R2, #4
CMP             R5, R4
ADDCC           R0, R1, R12,LSL#2
SUBS            R3, R3, #1
ADD             R12, R12, #1
BNE             loc_253D94
LDR             R1, [SP,#0xE0+var_A4]
LDR             R0, [R0]
LDR             R1, [R1,#0x7C]
CMP             R1, R0
BLS             loc_253B00
LDR             R1, =off_6CE970
LDR             R0, [SP,#0xE0+var_A4]
MOV             R3, #0
MOV             R2, R3
LDR             R1, [R1]
LDR             R0, [R0,#0x7C]
ADD             R1, R1, #0x68 ; 'h'
BL              sub_1143B4
MOV             R10, R0
LDR             R0, [SP,#0xE0+var_A4]
MOV             R1, R7
LDR             R2, [R0,#0x7C]
CMP             R2, #0
BEQ             loc_253E30
MOV             R0, #0
MOV             R3, #1
MOV             R12, R0
LDR             R4, [R1]
CMP             R4, R0
ADD             R4, R10, R0
ADDEQ           R1, R1, #4
STRBEQ          R12, [R4]
STRBNE          R3, [R4]
SUBS            R2, R2, #1
ADD             R0, R0, #1
BNE             loc_253E0C
ADD             R1, SP, #0xE0+var_A4
LDR             R4, [SP,#0xE0+var_68]
LDM             R1, {R0,R9}
MOV             R5, #0
CMP             R4, R9
VLDR            S18, [R0,#0xB0]
VLDR            S17, [R0,#0xB8]
VLDR            S16, [R0,#0xBC]
ADD             R0, R6, #0x12800
ADD             R0, R0, #0x1F4
STR             R0, [SP,#0xE0+var_64]
BEQ             loc_254064
ADD             R0, R6, #0x12400
ADD             R0, R0, #0x394
LDR             R8, =0x2AAAAAAB
STR             R0, [SP,#0xE0+var_70]
ADD             R0, SP, #0xE0+var_AC
ADD             R11, SP, #0xE0+var_B8
STR             R0, [SP,#0xE0+var_90]
LDRB            R1, [R10,R5]
CMP             R1, #0
BEQ             loc_253F6C
VCVT.U32.F32    S0, S18
LDM             R4, {R0-R2}
ADD             R3, SP, #0xE0+var_84
STM             R3, {R0-R2}
VSTR            S0, [SP,#0xE0+var_88]
VSTR            S17, [SP,#0xE0+var_78]
VSTR            S16, [SP,#0xE0+var_74]
LDR             R0, [R6,#0x38]
MOVS            R2, R0
LDR             R1, [R0]
STR             R1, [R6,#0x38]
LDR             R1, [R6,#0x3C]
SUB             R1, R1, #1
STR             R1, [R6,#0x3C]
BEQ             loc_253ED0
ADD             R1, SP, #0xE0+var_88
BL              sub_24ACD8
MOV             R2, R0
LDR             R1, [SP,#0xE0+var_70]
STR             R2, [SP,#0xE0+var_BC]
ADD             R2, SP, #0xE0+var_B8
STR             R2, [SP,#0xE0+var_B4]
STR             R2, [SP,#0xE0+var_B8]
LDR             R2, [R1,#0x25C]
LDR             R3, [R1,#0x258]
ADD             R0, SP, #0xE0+var_BC
SUB             R3, R2, R3
SMULL           R12, R3, R8, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0x32 ; '2'
BHI             loc_253F40
CMP             R2, #0
BEQ             loc_253F34
LDR             R3, [SP,#0xE0+var_BC]
ADD             R0, R0, #4
STR             R3, [R2],#4
STR             R0, [R2]
LDR             R0, [SP,#0xE0+var_B4]
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R2, [SP,#0xE0+var_B4]
LDR             R2, [R1,#0x25C]
ADD             R2, R2, #0xC
STR             R2, [R1,#0x25C]
LDR             R1, [SP,#0xE0+var_B4]
CMP             R1, R11
BNE             loc_253F5C
LDR             R1, [SP,#0xE0+var_BC]
CMP             R1, #0
ADDNE           R0, SP, #0xE0+var_AC
BLNE            sub_5CAE88
LDRD            R0, R1, [SP,#0xE0+var_B8]
STR             R1, [R0,#4]
STR             R0, [R1]
B               loc_254034
LDR             R0, [R6,#0x4C]
MOVS            R2, R0
LDR             R1, [R0]
STR             R1, [R6,#0x4C]
LDR             R1, [R6,#0x50]
SUB             R1, R1, #1
STR             R1, [R6,#0x50]
BEQ             loc_253F98
MOV             R1, R4
BL              sub_24D050
MOV             R2, R0
LDR             R1, [SP,#0xE0+var_64]
STR             R2, [SP,#0xE0+var_B0]
ADD             R2, SP, #0xE0+var_AC
STR             R2, [SP,#0xE0+var_A8]
STR             R2, [SP,#0xE0+var_AC]
LDR             R2, [R1,#0x25C]
LDR             R3, [R1,#0x258]
ADD             R0, SP, #0xE0+var_B0
SUB             R3, R2, R3
SMULL           R12, R3, R8, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0x32 ; '2'
BHI             loc_254008
CMP             R2, #0
BEQ             loc_253FFC
LDR             R3, [SP,#0xE0+var_B0]
ADD             R0, R0, #4
STR             R3, [R2],#4
STR             R0, [R2]
LDR             R0, [SP,#0xE0+var_A8]
STR             R0, [R2,#4]
STR             R2, [R0]
STR             R2, [SP,#0xE0+var_A8]
LDR             R2, [R1,#0x25C]
ADD             R2, R2, #0xC
STR             R2, [R1,#0x25C]
LDR             R0, [SP,#0xE0+var_90]
LDR             R1, [SP,#0xE0+var_A8]
CMP             R1, R0
BNE             loc_254028
LDR             R1, [SP,#0xE0+var_B0]
CMP             R1, #0
ADDNE           R0, SP, #0xE0+var_B8
BLNE            sub_5CBAC4
LDRD            R0, R1, [SP,#0xE0+var_AC]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R1, [SP,#0xE0+var_A4]
LDR             R2, [SP,#0xE0+var_A4]
ADD             R4, R4, #0xC
ADD             R1, R1, #0xC0
CMP             R4, R9
VLDM            R1, {S0-S1}
ADD             R5, R5, #1
VLDR            S2, [R2,#0xB4]
VADD.F32        S17, S17, S0
VADD.F32        S18, S2, S18
VADD.F32        S16, S16, S1
BNE             loc_253E7C
ADD             R0, R6, #0x13000
STR             R0, [SP,#0xE0+var_5C]
LDR             R0, [R0,#0x25C]
CMP             R0, #1
BLS             loc_254A34
LDR             R0, [R6,#0x5C]
ADD             R1, SP, #0xE0+var_48
LDR             R4, [R0]
LDR             R0, [SP,#0xE0+var_A4]
MOV             R2, R4
BL              sub_5CB148
ADD             R1, SP, #0xE0+var_48
ADD             R0, SP, #0xE0+var_58
BL              sub_24CC20
LDR             R0, [SP,#0xE0+var_5C]
MOV             R1, R4
LDR             R0, [R0,#0x25C]
CMP             R0, #4
MOVCC           R0, #1
MOVCS           R0, #0
STR             R0, [SP,#0xE0+var_84]
LDR             R0, [SP,#0xE0+var_A4]
BL              sub_5CB088
MOV             R11, R0
LDR             R0, [SP,#0xE0+var_A4]
MOV             R5, #1
MOV             R1, R11
LDR             R8, [R0,#0x2C0]
MOV             R0, #0
STR             R0, [SP,#0xE0+var_98]
STR             R0, [SP,#0xE0+var_94]
STR             R0, [SP,#0xE0+var_90]
STR             R0, [SP,#0xE0+var_8C]
LDR             R0, =off_6CE970
STR             R5, [SP,#0xE0+var_9C]
LDR             R0, [R0]
ADD             R0, R0, #0x68 ; 'h'
STR             R0, [SP,#0xE0+var_A0]
ADD             R0, SP, #0xE0+var_A0
BL              sub_62853C
CMP             R11, #0
MOV             R4, #0
BLS             loc_254608
LDR             R0, [SP,#0xE0+var_84]
CMP             R0, #0
MOVNE           R12, #0
BNE             loc_25412C
ADD             R0, SP, #0xE0+var_58
BL              sub_5CB008
MOV             R12, R0
LDR             R2, [SP,#0xE0+var_90]
LDR             R3, [SP,#0xE0+var_94]
LDR             R1, [SP,#0xE0+var_8C]
MOV             R0, #1
SUB             R2, R2, R3
ADD             R5, SP, #0xE0+var_A0
ADD             R2, R0, R2,ASR#2
CMP             R2, R1
MOV             R9, R12
BLS             loc_254298
LDR             R0, [SP,#0xE0+var_A0]
LDR             R1, [SP,#0xE0+var_9C]
STR             R2, [SP,#0xE0+var_A8]
STR             R0, [SP,#0xE0+var_E0]
CMP             R1, #1
MOV             R2, #1
MOV             R0, #0
MOVHI           R2, R1
MOV             R1, R0
STRD            R0, R1, [SP,#0xE0+var_D8]
STR             R2, [SP,#0xE0+var_DC]
STR             R0, [SP,#0xE0+var_D0]
STR             R0, [SP,#0xE0+var_CC]
LDR             R0, [SP,#0xE0+var_8C]
LDR             R1, [SP,#0xE0+var_A8]
MOV             R0, R0,LSL#1
CMP             R0, R1
MOVCC           R0, R1
CMP             R0, #0
BLS             loc_2544E0
LDR             R1, [SP,#0xE0+var_E0]
CMP             R1, #0
BEQ             loc_254328
CMP             R2, #1
MOV             R1, R2
MOVLS           R0, R0,LSL#2
ADDHI           R0, R1, R0,LSL#2
SUBHI           R0, R0, #1
MOV             R3, #0
STR             R2, [SP,#0xE0+var_80]
LDR             R1, [SP,#0xE0+var_E0]
MOV             R2, R3
STR             R0, [SP,#0xE0+var_C4]
BL              sub_1143B4
MOVS            R2, R0
STR             R0, [SP,#0xE0+var_BC]
BEQ             loc_254328
LDR             R1, [SP,#0xE0+var_80]
CMP             R1, #1
BLS             loc_2542B4
LDR             R3, [SP,#0xE0+var_C4]
MOV             R0, R1
STR             R1, [SP,#0xE0+var_C4]
CMP             R1, R3
SUBLS           R0, R3, R0
LDR             R1, [SP,#0xE0+var_D0]
LDR             R3, [SP,#0xE0+var_D4]
ADDLS           R0, R0, #1
STR             R2, [SP,#0xE0+var_B8]
MOVLS           R0, R0,LSR#2
SUB             R3, R1, R3
MOVHI           R0, #0
CMP             R0, R3,ASR#2
BCC             loc_254310
STR             R0, [SP,#0xE0+var_CC]
LDR             R1, [SP,#0xE0+var_C4]
MOV             R0, R2
BL              sub_2FEFCC
MOVS            R0, R1
NOP
BEQ             loc_25425C
LDR             R1, [SP,#0xE0+var_C4]
LDR             R2, [SP,#0xE0+var_B8]
SUB             R0, R1, R0
ADD             R0, R0, R2
STR             R0, [SP,#0xE0+var_B8]
LDR             R12, [SP,#0xE0+var_B8]
LDRD            R0, R1, [SP,#0xE0+var_D4]
MOV             R2, R12
CMP             R0, R1
BEQ             loc_25428C
CMP             R2, #0
VLDRNE          S0, [R0]
ADD             R0, R0, #4
VSTRNE          S0, [R2]
CMP             R0, R1
ADD             R2, R2, #4
BNE             loc_254270
STR             R2, [SP,#0xE0+var_D0]
STR             R12, [SP,#0xE0+var_D4]
B               loc_254310
LDR             R0, [SP,#0xE0+var_90]
CMP             R0, #0
STRNE           R12, [R0]
LDR             R0, [SP,#0xE0+var_90]
ADD             R0, R0, #4
STR             R0, [SP,#0xE0+var_90]
B               loc_2545FC
MOV             R12, R2
LDR             R3, [SP,#0xE0+var_C4]
LDR             R1, [SP,#0xE0+var_D0]
LDR             R2, [SP,#0xE0+var_D4]
MOV             R3, R3,LSR#2
SUB             R1, R1, R2
CMP             R3, R1,ASR#2
BCC             loc_254310
MOV             R1, R2
LDR             R2, [SP,#0xE0+var_D0]
MOV             R0, R12
STR             R3, [SP,#0xE0+var_CC]
CMP             R1, R2
BEQ             loc_254308
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_2542EC
STR             R0, [SP,#0xE0+var_D0]
STR             R12, [SP,#0xE0+var_D4]
LDR             R0, [SP,#0xE0+var_D8]
LDR             R1, [SP,#0xE0+var_BC]
CMP             R0, #0
STR             R1, [SP,#0xE0+var_D8]
BEQ             loc_2544E0
B               loc_2544D8
LDR             R0, [SP,#0xE0+var_CC]
LDR             R1, [SP,#0xE0+var_A8]
CMP             R0, R1
BCS             loc_2544E0
LDR             R0, [SP,#0xE0+var_E0]
CMP             R0, #0
BEQ             loc_25442C
LDR             R0, [SP,#0xE0+var_DC]
MOV             R3, #0
MOV             R2, R3
CMP             R0, #1
STR             R0, [SP,#0xE0+var_A8]
ADDHI           R0, R0, R1,LSL#2
MOVLS           R0, R1,LSL#2
SUBHI           R0, R0, #1
LDR             R1, [SP,#0xE0+var_E0]
STR             R0, [SP,#0xE0+var_C4]
BL              sub_1143B4
MOVS            R2, R0
STR             R0, [SP,#0xE0+var_AC]
BEQ             loc_254434
LDR             R1, [SP,#0xE0+var_A8]
CMP             R1, #1
BLS             loc_254468
LDR             R3, [SP,#0xE0+var_C4]
MOV             R0, R1
STR             R2, [SP,#0xE0+var_BC]
CMP             R1, R3
SUBLS           R0, R3, R0
STR             R1, [SP,#0xE0+var_C4]
LDR             R1, [SP,#0xE0+var_D0]
LDR             R3, [SP,#0xE0+var_D4]
ADDLS           R0, R0, #1
MOVLS           R0, R0,LSR#2
SUB             R3, R1, R3
MOVHI           R0, #0
CMP             R0, R3,ASR#2
BCC             loc_2544C4
STR             R0, [SP,#0xE0+var_CC]
LDR             R1, [SP,#0xE0+var_C4]
MOV             R0, R2
BL              sub_2FEFCC
MOVS            R0, R1
NOP
BEQ             loc_2543F0
LDR             R1, [SP,#0xE0+var_C4]
LDR             R2, [SP,#0xE0+var_BC]
SUB             R0, R1, R0
ADD             R0, R0, R2
STR             R0, [SP,#0xE0+var_BC]
LDR             R12, [SP,#0xE0+var_BC]
LDRD            R0, R1, [SP,#0xE0+var_D4]
MOV             R2, R12
CMP             R0, R1
BEQ             loc_254420
CMP             R2, #0
VLDRNE          S0, [R0]
ADD             R0, R0, #4
VSTRNE          S0, [R2]
CMP             R0, R1
ADD             R2, R2, #4
BNE             loc_254404
STR             R2, [SP,#0xE0+var_D0]
STR             R12, [SP,#0xE0+var_D4]
B               loc_2544C4
CMP             R1, #0
BEQ             loc_2544E0
MOV             R0, #0
LDR             R1, [SP,#0xE0+var_D8]
STR             R0, [SP,#0xE0+var_CC]
STR             R0, [SP,#0xE0+var_D4]
CMP             R1, #0
STR             R0, [SP,#0xE0+var_D0]
STR             R0, [SP,#0xE0+var_D8]
MOVNE           R0, R1
BLNE            sub_2FF5D4
LDR             R0, [SP,#0xE0+var_D8]
CMP             R0, #0
BEQ             loc_2545FC
B               loc_2545F4
MOV             R12, R2
LDR             R3, [SP,#0xE0+var_C4]
LDR             R1, [SP,#0xE0+var_D0]
LDR             R2, [SP,#0xE0+var_D4]
MOV             R3, R3,LSR#2
SUB             R1, R1, R2
CMP             R3, R1,ASR#2
BCC             loc_2544C4
MOV             R1, R2
LDR             R2, [SP,#0xE0+var_D0]
MOV             R0, R12
STR             R3, [SP,#0xE0+var_CC]
CMP             R1, R2
BEQ             loc_2544BC
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_2544A0
STR             R0, [SP,#0xE0+var_D0]
STR             R12, [SP,#0xE0+var_D4]
LDR             R0, [SP,#0xE0+var_D8]
LDR             R1, [SP,#0xE0+var_AC]
CMP             R0, #0
STR             R1, [SP,#0xE0+var_D8]
BEQ             loc_2544E0
NOP
BL              sub_2FF5D4
ADD             R3, SP, #0xE0+var_94
LDR             R0, [SP,#0xE0+var_CC]
LDM             R3, {R1,R2}
ADD             R3, SP, #0xE0+var_D4
SUB             R12, R2, R1
MOV             R12, R12,ASR#2
CMP             R12, R0
BHI             loc_254530
LDR             R0, [SP,#0xE0+var_D4]
CMP             R1, R2
STREQ           R0, [SP,#0xE0+var_D0]
BEQ             loc_254530
CMP             R0, #0
VLDRNE          S0, [R1]
ADD             R1, R1, #4
VSTRNE          S0, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_254510
STR             R0, [R3,#4]
ADD             R12, SP, #0xE0+var_D0
LDR             R2, [SP,#0xE0+var_D4]
LDM             R12, {R1,R3}
MOV             R0, #1
SUB             R1, R1, R2
ADD             R0, R0, R1,ASR#2
CMP             R0, R3
BHI             loc_254568
LDR             R0, [SP,#0xE0+var_D0]
CMP             R0, #0
STRNE           R9, [R0]
LDR             R0, [SP,#0xE0+var_D0]
ADD             R0, R0, #4
STR             R0, [SP,#0xE0+var_D0]
ADD             R9, SP, #0xE0+var_A0
LDMFD           SP, {R1,R2}
LDM             R9, {R0,R12}
ADD             R3, R5, #8
ADD             R5, R5, #0xC
STR             R0, [SP,#0xE0+var_E0]
STR             R12, [SP,#0xE0+var_DC]
STM             R9, {R1,R2}
MOV             R0, #0
LDR             R9, [R3]
LDR             R12, [SP,#0xE0+var_D8]
STR             R9, [SP,#0xE0+var_D8]
STR             R12, [R3]
LDR             R12, [R5]
LDR             R3, [SP,#0xE0+var_D4]
STR             R12, [SP,#0xE0+var_D4]
STR             R3, [R5]
LDR             R12, [R5,#4]
LDR             R3, [SP,#0xE0+var_D0]
STR             R12, [SP,#0xE0+var_D0]
STR             R3, [R5,#4]
LDR             R1, [SP,#0xE0+var_CC]
LDR             R3, [R5,#8]
STR             R1, [R5,#8]
LDR             R1, [SP,#0xE0+var_D8]
STR             R0, [SP,#0xE0+var_CC]
STR             R0, [SP,#0xE0+var_D4]
CMP             R1, #0
STR             R0, [SP,#0xE0+var_D0]
STR             R0, [SP,#0xE0+var_D8]
MOVNE           R0, R1
BLNE            sub_2FF5D4
LDR             R0, [SP,#0xE0+var_D8]
CMP             R0, #0
BEQ             loc_2545FC
NOP
BL              sub_2FF5D4
ADD             R4, R4, #1
CMP             R4, R11
BCC             loc_254110
LDR             R4, [SP,#0xE0+var_90]
LDR             R5, [SP,#0xE0+var_94]
CMP             R5, R4
BEQ             loc_2547CC
SUB             R9, R4, R5
MOV             R1, R4
MOV             R2, R9,ASR#2
MOV             R0, R5
BL              sub_63A254
MOV             R0, #0x10
CMP             R0, R9,ASR#2
MOV             R1, R5
STR             R4, [SP,#0xE0+var_84]
BGE             loc_25472C
ADD             LR, R1, #0x40 ; '@'
ADD             R0, R1, #4
CMP             R0, LR
BEQ             loc_2546E8
LDR             R2, [R0]
LDR             R3, [R1]
CMP             R3, R2
MOVCS           R3, R0
MOVCS           R12, R0
BCS             loc_2546C4
SUB             R9, R0, R1
MOV             R12, R0
MOV             R3, R9,ASR#2
CMP             R3, #0
ADD             R4, R0, #4
BLE             loc_2546BC
MOVS            R3, R9,LSL#29
BPL             loc_254694
LDR             R3, [R0,#-4]
SUB             R12, R0, #4
STR             R3, [R4,#-4]!
MOVS            R3, R9,ASR#3
BEQ             loc_2546BC
VLDR            S0, [R12,#-4]
SUB             R12, R12, #8
VSTR            S0, [R4,#-4]
SUB             R4, R4, #8
VLDR            S0, [R12]
SUBS            R3, R3, #1
VSTR            S0, [R4]
BNE             loc_25469C
STR             R2, [R1]
B               loc_2546DC
LDR             R4, [R12,#-4]!
CMP             R2, R4
STRHI           R4, [R3]
MOVHI           R3, R12
BHI             loc_2546C4
STR             R2, [R3]
ADD             R0, R0, #4
CMP             R0, LR
BNE             loc_254650
ADD             R0, R5, #0x40 ; '@'
LDR             R5, [SP,#0xE0+var_84]
CMP             R0, R5
BEQ             loc_2547CC
LDR             R2, [R0]
MOV             R1, R0
MOV             R3, R0
LDR             R12, [R3,#-4]!
CMP             R12, R2
STRCC           R12, [R1]
MOVCC           R1, R3
BCC             loc_254704
ADD             R0, R0, #4
CMP             R0, R5
STR             R2, [R1]
BNE             loc_2546F8
B               loc_2547CC
MOV             R5, R4
ADD             R0, R1, #4
CMP             R0, R5
BEQ             loc_2547CC
LDR             R2, [R0]
LDR             R3, [R1]
CMP             R3, R2
MOVCS           R3, R0
MOVCS           R12, R0
BCS             loc_2547A8
SUB             R9, R0, R1
MOV             R12, R0
MOV             R3, R9,ASR#2
CMP             R3, #0
ADD             R4, R0, #4
BLE             loc_2547A0
MOVS            R3, R9,LSL#29
BPL             loc_254780
LDR             R3, [R0,#-4]
SUB             R12, R0, #4
STR             R3, [R4,#-4]!
MOVS            R3, R9,ASR#3
BEQ             loc_2547A0
LDR             R9, [R12,#-4]
SUBS            R3, R3, #1
STR             R9, [R4,#-4]
LDR             R9, [R12,#-8]!
STR             R9, [R4,#-8]!
BNE             loc_254788
STR             R2, [R1]
B               loc_2547C0
LDR             R4, [R12,#-4]!
CMP             R2, R4
STRHI           R4, [R3]
MOVHI           R3, R12
BHI             loc_2547A8
STR             R2, [R3]
ADD             R0, R0, #4
CMP             R0, R5
BNE             loc_25473C
CMP             R11, #0
MOV             R9, #0
BLS             loc_2549E0
ADD             R0, SP, #0xE0+var_AC
VLDR            S16, =0.0
STR             R0, [SP,#0xE0+var_A4]
LDR             R0, =dword_6E1330
MOV             R5, #0xFFFFFFFF
LDR             R0, [R0]
TST             R0, #1
BNE             loc_254824
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_254824
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R2, =flt_711FE4
ADD             R3, SP, #0xE0+var_78
MOV             R4, #0
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [SP,#0xE0+var_94]
LDR             R0, [R0,R9,LSL#2]
AND             R0, R0, #0xFF
STR             R0, [SP,#0xE0+var_4C]
LDR             R2, [SP,#0xE0+var_4C]
ADD             R1, SP, #0xE0+var_84
MOV             R0, R6
BL              sub_5CB1F0
VMOV.F32        S0, S16
LDR             R0, [SP,#0xE0+var_7C]
ADD             R4, R4, #1
ADD             R2, SP, #0xE0+var_40
ADD             R1, SP, #0xE0+var_84
VSTR            S0, [SP,#0xE0+var_40]
VSTR            S0, [SP,#0xE0+var_3C]
STR             R0, [SP,#0xE0+var_38]
LDR             R3, [SP,#0xE0+var_4C]
MOV             R0, R6
BL              sub_5CB3B4
CMP             R5, R0
NOP
BLS             loc_2548A4
ADD             R12, SP, #0xE0+var_84
MOV             R5, R0
LDM             R12, {R1-R3}
ADD             R12, SP, #0xE0+var_78
STM             R12, {R1-R3}
CMP             R4, R8
BCS             loc_2548B4
TST             R0, #0x80000000
BNE             loc_254848
LDR             R0, [SP,#0xE0+var_4C]
ADD             R1, SP, #0xE0+var_78
CMP             R0, #0
BEQ             loc_2548D0
CMP             R0, #1
BNE             loc_254930
B               loc_254900
LDR             R0, [R6,#0x4C]
CMP             R0, #0
LDR             R2, [R0]
STR             R2, [R6,#0x4C]
LDR             R2, [R6,#0x50]
SUB             R2, R2, #1
STR             R2, [R6,#0x50]
BEQ             loc_25492C
BL              sub_24A368
NOP
NOP
B               loc_254924
LDR             R0, [R6,#0x4C]
CMP             R0, #0
LDR             R2, [R0]
STR             R2, [R6,#0x4C]
LDR             R2, [R6,#0x50]
SUB             R2, R2, #1
STR             R2, [R6,#0x50]
BEQ             loc_25492C
BL              sub_2563E0
MOV             R1, R0
B               loc_254930
MOV             R1, #0
LDR             R0, [SP,#0xE0+var_64]
STR             R1, [SP,#0xE0+var_B0]
ADD             R1, SP, #0xE0+var_AC
STR             R1, [SP,#0xE0+var_A8]
STR             R1, [SP,#0xE0+var_AC]
LDR             R1, [R0,#0x25C]
LDR             R12, [R0,#0x258]
LDR             R3, =0x2AAAAAAB
ADD             R2, SP, #0xE0+var_B0
SUB             R12, R1, R12
SMULL           R12, R3, R3, R12
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0x32 ; '2'
BHI             loc_2549A4
CMP             R1, #0
BEQ             loc_254998
LDR             R3, [SP,#0xE0+var_B0]
ADD             R2, R2, #4
STR             R3, [R1],#4
STR             R2, [R1]
LDR             R2, [SP,#0xE0+var_A8]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [SP,#0xE0+var_A8]
LDR             R1, [R0,#0x25C]
ADD             R1, R1, #0xC
STR             R1, [R0,#0x25C]
LDRD            R0, R1, [SP,#0xE0+var_A8]
CMP             R0, R1
BNE             loc_2549C8
LDR             R0, [SP,#0xE0+var_B0]
CMP             R0, #0
BEQ             loc_2549C8
MOV             R1, R0
ADD             R0, SP, #0xE0+var_C4
BL              sub_5CBAC4
LDRD            R0, R1, [SP,#0xE0+var_AC]
ADD             R9, R9, #1
CMP             R9, R11
STR             R1, [R0,#4]
STR             R0, [R1]
BCC             loc_2547E4
MOV             R1, #0
LDR             R0, [SP,#0xE0+var_98]
STR             R1, [SP,#0xE0+var_8C]
STR             R1, [SP,#0xE0+var_94]
CMP             R0, #0
STR             R1, [SP,#0xE0+var_90]
STR             R1, [SP,#0xE0+var_98]
BLNE            sub_2FF5D4
NOP
NOP
B               loc_254A28
DCD off_6CE098
DCD off_6CE970
DCD dword_6D1F40
DCD 0x2AAAAAAB
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
LDR             R0, [SP,#0xE0+var_98]
CMP             R0, #0
BLNE            sub_2FF5D4
LDR             R0, [SP,#0xE0+var_5C]
CMP             R10, #0
LDR             R0, [R0,#0x25C]
ADD             R1, R0, #1
LDR             R0, [SP,#0xE0+var_5C]
STR             R1, [R0,#0x25C]
MOVNE           R0, R10
BLNE            sub_2FF5D4
CMP             R7, #0
MOVNE           R0, R7
BLNE            sub_2FF5D4
LDR             R0, [SP,#0xE0+var_68]
CMP             R0, #0
BLNE            sub_2FF5D4
ADD             SP, SP, #0xAC
VPOP            {D8-D9}
POP             {R4-R11,PC}
