PUSH            {R4,LR}
ADD             R1, R2, #8
VPUSH           {D8}
LDM             R1, {R1,R3}
VLDR            S16, [R2,#0x70]
UXTH            R1, R1
UXTH            R4, R3
CMP             R4, #0xA6; switch 166 cases
LDRCC           PC, [PC,R4,LSL#2]; switch jump
B               def_206DA8; jumptable 00206DA8 default case, case 0
DCD def_206DA8, loc_207048, loc_207048, loc_207048; jump table for switch statement
VMOV.F32        S0, S16; jumptable 00206DA8 cases 1-43
MOV             R2, R4
BL              sub_14B86C
NOP
NOP
B               def_206DA8; jumptable 00206DA8 default case, case 0
VMOV.F32        S0, S16; jumptable 00206DA8 cases 44-61
MOV             R2, R4
BL              sub_20F208
NOP
NOP
B               def_206DA8; jumptable 00206DA8 default case, case 0
LDR             R0, =off_6CE970; jumptable 00206DA8 cases 62-69
LDR             R0, [R0]
BL              sub_52F538
SUB             R1, R4, #0x3E ; '>'
CMP             R1, #7; switch 7 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_206DA8; jumptable 00206DA8 default case, case 0
DCD loc_2070B0; jump table for switch statement
VLDR            S0, =0.0; jumptable 0020708C case 0
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x4B0]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 0020708C case 1
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x4AB]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 0020708C case 2
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x4AE]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VCVT.S32.F32    S0, S16; jumptable 0020708C case 3
VMOV            R1, S0
STRB            R1, [R0,#0x4B6]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VCVT.S32.F32    S0, S16; jumptable 0020708C case 4
VMOV            R1, S0
STRB            R1, [R0,#0x4B5]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VCVT.S32.F32    S0, S16; jumptable 0020708C case 5
VMOV            R1, S0
STRB            R1, [R0,#0x4B7]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 0020708C case 6
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x4B2]
B               def_206DA8; jumptable 00206DA8 default case, case 0
LDR             R0, =off_6CE970; jumptable 00206DA8 cases 70-79
LDR             R0, [R0]
BL              sub_52A63C
SUB             R1, R4, #0x46 ; 'F'
CMP             R1, #9; switch 9 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_206DA8; jumptable 00206DA8 default case, case 0
DCD loc_207190; jump table for switch statement
ADD             R0, R0, R4,LSL#2; jumptable 00207164 cases 0-2
VSTR            S16, [R0,#4]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VSTR            S16, [R0,#0x128]; jumptable 00207164 case 3
B               def_206DA8; jumptable 00206DA8 default case, case 0
VSTR            S16, [R0,#0x12C]; jumptable 00207164 case 4
B               def_206DA8; jumptable 00206DA8 default case, case 0
VSTR            S16, [R0,#0x130]; jumptable 00207164 case 5
B               def_206DA8; jumptable 00206DA8 default case, case 0
VSTR            S16, [R0,#0x134]; jumptable 00207164 case 6
B               def_206DA8; jumptable 00206DA8 default case, case 0
VCVT.U32.F32    S0, S16; jumptable 00207164 case 7
VMOV            R1, S0
STRB            R1, [R0,#0x138]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 00207164 case 8
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x139]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VMOV.F32        S0, S16; jumptable 00206DA8 cases 80-132
MOV             R2, R4
BL              sub_20E560
NOP
NOP
B               def_206DA8; jumptable 00206DA8 default case, case 0
LDR             R0, =off_6CE970; jumptable 00206DA8 cases 133-148
LDR             R0, [R0]
BL              sub_52F368
SUB             R1, R4, #0x85
CMP             R1, #0xD; switch 13 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_206DA8; jumptable 00206DA8 default case, case 0
DCD def_206DA8; jump table for switch statement
VCVT.S32.F32    S0, S16; jumptable 00207214 case 3
ADD             R1, R0, #0x400
VMOV            R0, S0
STRH            R0, [R1,#0x9E]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VCVT.U32.F32    S0, S16; jumptable 00207214 case 5
VMOV            R1, S0
STR             R1, [R0,#0x480]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 00207214 case 9
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x4A2]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 00207214 case 10
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x48C]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 00207214 case 11
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x48D]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VLDR            S0, =0.0; jumptable 00207214 case 12
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R1, #1
MOVEQ           R1, #0
STRB            R1, [R0,#0x4A3]
B               def_206DA8; jumptable 00206DA8 default case, case 0
VMOV.F32        S0, S16; jumptable 00206DA8 cases 149-165
MOV             R2, R4
BL              sub_20E8DC
VPOP            {D8}; jumptable 00206DA8 default case, case 0
MOV             R0, #0
POP             {R4,PC}
