PUSH            {R4-R11,LR}
MOV             R5, R1
MOV             R10, #0
MOV             R11, R0
LDR             R0, =off_6CE098
LDR             R9, =off_6CE970
LDR             R7, =off_6BBA6C
LDR             R8, =off_6BBAA4
LDR             R6, =off_6C0770
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
LDR             R4, [R0,#0x8C]
LDR             R0, [R0,#0x5C]
LDR             R1, [R0]
MOV             R0, #0
STR             R0, [R11]
ADD             R0, R11, #4
STR             R0, [R11,#8]
CMP             R1, #0x12C
STR             R0, [R11,#4]
BCC             loc_24AFF4
ADD             R0, R4, #0x400
ADD             R0, R0, #0x98
LDM             R0, {R0,R1}
VMOV            S0, R0
VMOV            S1, R1
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S1, S1
BL              sub_47EAA4
ADD             R0, R4, #0x400
VMOV.F32        S16, S0
VLDR            S0, [R0,#0xA4]
LDR             R0, =dword_6D1F40
VMOV.F32        S1, S0
BL              sub_47EAA4
VMOV.F32        S17, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOVS            R0, R0,LSR#16
BEQ             loc_24AE74
CMP             R0, #1
BEQ             loc_24AED8
CMP             R0, #2
BEQ             loc_24AF68
CMP             R0, #3
BNE             loc_24B31C
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x34 ; '4'
BL              sub_10A358
CMP             R0, #0
BEQ             loc_24AE38
LDR             R1, =off_6BBA88
ADD             R7, R0, #8
STM             R0, {R1,R5}
ADD             R5, R5, #0x54 ; 'T'
LDM             R5, {R1-R3}
STM             R7, {R1-R3}
ADD             R2, R0, #0x14
VSTM            R2, {S16-S17}
STR             R6, [R0,#0x28]
STR             R10, [R0,#0x2C]
STRB            R10, [R0,#0x30]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
STRNE           R5, [R0,#4]
STRNE           R7, [R0]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x2C ; ','
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_24AF2C
STR             R5, [R0,#4]
ADD             R5, R5, #0x54 ; 'T'
STR             R8, [R0]
LDM             R5, {R1-R3}
ADD             R7, R0, #8
STM             R7, {R1-R3}
ADD             R2, R0, #0x14
VSTM            R2, {S16-S17}
STR             R6, [R0,#0x20]
STR             R10, [R0,#0x24]
STRB            R10, [R0,#0x28]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x34 ; '4'
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_24AFB8
LDR             R1, =off_6BBAC0
ADD             R7, R0, #0xC
STM             R0, {R1,R5}
ADD             R5, R5, #0x54 ; 'T'
LDM             R5, {R1-R3}
STM             R7, {R1-R3}
ADD             R2, R0, #0x18
VSTM            R2, {S16-S17}
STR             R6, [R0,#0x2C]
STR             R10, [R0,#0x30]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
CMP             R1, #0xC8
BCC             loc_24B14C
ADD             R0, R4, #0x400
ADD             R0, R0, #0x88
LDM             R0, {R0,R1}
VMOV            S0, R0
VMOV            S1, R1
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S1, S1
BL              sub_47EAA4
ADD             R0, R4, #0x400
VMOV.F32        S16, S0
VLDR            S0, [R0,#0x94]
LDR             R0, =dword_6D1F40
VMOV.F32        S1, S0
BL              sub_47EAA4
VMOV.F32        S17, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOVS            R0, R0,LSR#16
BEQ             loc_24B0E8
CMP             R0, #1
BNE             loc_24B31C
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x2C ; ','
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_24B0AC
STR             R5, [R0,#4]
ADD             R5, R5, #0x54 ; 'T'
STR             R8, [R0]
LDM             R5, {R1-R3}
ADD             R7, R0, #8
STM             R7, {R1-R3}
ADD             R2, R0, #0x14
VSTM            R2, {S16-S17}
STR             R6, [R0,#0x20]
STR             R10, [R0,#0x24]
STRB            R10, [R0,#0x28]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
STRNE           R5, [R0,#4]
STRNE           R7, [R0]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
CMP             R1, #0x64 ; 'd'
BCC             loc_24B2B0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x78 ; 'x'
LDM             R0, {R0,R1}
VMOV            S0, R0
VMOV            S1, R1
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S1, S1
BL              sub_47EAA4
ADD             R0, R4, #0x400
VMOV.F32        S16, S0
VLDR            S0, [R0,#0x84]
LDR             R0, =dword_6D1F40
VMOV.F32        S1, S0
BL              sub_47EAA4
VMOV.F32        S17, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOVS            R0, R0,LSR#16
BEQ             loc_24B240
CMP             R0, #1
BNE             loc_24B31C
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #0x2C ; ','
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_24B204
STR             R5, [R0,#4]
ADD             R5, R5, #0x54 ; 'T'
STR             R8, [R0]
LDM             R5, {R1-R3}
ADD             R7, R0, #8
STM             R7, {R1-R3}
ADD             R2, R0, #0x14
VSTM            R2, {S16-S17}
STR             R6, [R0,#0x20]
STR             R10, [R0,#0x24]
STRB            R10, [R0,#0x28]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
B               loc_24B310
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
STRNE           R5, [R0,#4]
STRNE           R7, [R0]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BEQ             loc_24B310
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_24B310
LDR             R0, [R9]
MOV             R3, #0
MOV             R4, SP
ADD             R1, R0, #0x68 ; 'h'
MOV             R2, R3
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
STRNE           R5, [R0,#4]
STRNE           R7, [R0]
STR             R0, [SP,#0x38+var_38]
ADD             R0, R4, #4
STR             R0, [SP,#0x38+var_30]
STR             R0, [SP,#0x38+var_34]
MOV             R1, R4
MOV             R0, R11
BL              sub_6292A8
LDR             R1, [SP,#0x38+var_30]
ADD             R0, SP, #0x38+var_34
CMP             R1, R0
BNE             loc_24B310
LDR             R0, [SP,#0x38+var_38]
CMP             R0, #0
BNE             loc_24B2A0
LDRD            R0, R1, [SP,#0x38+var_34]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
