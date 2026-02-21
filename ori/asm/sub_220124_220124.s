PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R6, R0, #0x54 ; 'T'
LDR             R8, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0x50
LDR             R0, [R0,#0xF8]
VLDR            S19, =0.5
VLDR            S18, =1.0
VLDR            S17, =0.0
CMP             R0, #0
BEQ             loc_220484
LDRB            R0, [R6,#0xC]
TST             R0, #0xF
BEQ             loc_2201CC
LDR             R0, [R6]
ADD             R1, R6, #0xC
LDR             R2, [R0,#0x1C]
MOV             R0, R6
BLX             R2
LDR             R0, [R6]
ADD             R1, R6, #0xC
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
LDRB            R0, [R6,#0xC]
TST             R0, #0xF
BNE             loc_22035C
LDR             R0, [R4,#0x1C4]
TST             R0, #2
MOVEQ           R5, #0
BNE             loc_22035C
RSB             R0, R5, R5,LSL#3
ADD             R0, R0, R5,LSL#4
MOV             R1, #0
ADD             R0, R4, R0,LSL#3
ADD             R0, R0, #0x54 ; 'T'
BL              sub_194BC0
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_2201A4
B               loc_22035C
LDR             R0, [R4,#4]
MOV             R5, #0
LDR             R1, [R0,#0x19C]
CMP             R1, R4
BEQ             loc_220294
LDRB            R1, [R0,#0x705]
CMP             R1, #0
BNE             loc_220294
LDR             R1, [R8]
LDR             R2, [R1,#0xC8]
TST             R2, #0x10
BEQ             loc_220294
LDR             R0, [R0,#0xB10]
AND             R2, R0, #0x200000
MOVS            R2, R2,LSR#21
BEQ             loc_220294
AND             R0, R0, #0x400000
MOVS            R0, R0,LSR#22
BEQ             loc_220294
MOV             R0, R1
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x1B4]
TST             R0, #1
BEQ             loc_220294
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
NOP
BNE             loc_220294
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R7, [R0,#0x1CC]
LDR             R0, [R7]
LDR             R1, [R0,#0x5C]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BNE             loc_220294
LDR             R0, [R7]
LDR             R1, [R0,#0xDC]
MOV             R0, R7
BLX             R1
CMP             R0, #0
MOVNE           R5, #1
LDR             R0, [R4,#0x1C4]
MOV             R1, R0,LSL#30
CMP             R5, R1,LSR#31
BEQ             loc_22035C
MOV             R1, #2
AND             R2, R1, R5,LSL#1
LDR             R1, =dword_6D1598
BIC             R0, R0, #2
ORR             R0, R0, R2
TST             R0, #2
LDR             R1, [R1]
MOV             R10, #0xFF
MOV             R9, #0
STR             R1, [SP,#0x88+var_64]
STR             R0, [R4,#0x1C4]
STRBEQ          R10, [R6,#7]
MOVNE           R5, #0
STRBEQ          R9, [SP,#0x88+var_64+3]
BEQ             loc_220318
RSB             R0, R5, R5,LSL#3
ADD             R0, R0, R5,LSL#4
MOV             R1, #1
ADD             R7, R4, R0,LSL#3
ADD             R0, R7, #0x54 ; 'T'
BL              sub_194BC0
LDR             R0, [R7,#0xF8]
MOV             R1, #0
BL              sub_593084
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_2202E0
STRB            R9, [R6,#7]
STRB            R10, [SP,#0x88+var_64+3]
ADD             R2, R6, #0xC
ADD             R5, SP, #0x88+var_7C
STR             R2, [SP,#0x88+var_70]
MOV             R3, #1
MOV             R1, #6
ADD             R12, R6, #4
STR             R9, [SP,#0x88+var_88]
STR             R9, [SP,#0x88+var_84]
STR             R9, [SP,#0x88+var_80]
STM             R5, {R1,R3,R12}
MOV             R0, R6
LDR             R1, [R6]
ADD             R3, SP, #0x88+var_64
ADD             R2, R6, #4
LDR             R12, [R1,#0xC]
MOV             R1, #0
BLX             R12
LDR             R0, [R6]
LDR             R1, [R0,#0x48]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BEQ             loc_220484
LDR             R0, =dword_6E1340
ADD             R5, SP, #0x88+var_68
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2203D8
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2203D8
LDR             R0, =flt_71203C
ADD             R1, R0, #0x10
VSTR            S18, [R0]
VSTR            S17, [R0,#(flt_712040 - 0x71203C)]
VSTR            S17, [R0,#(flt_712044 - 0x71203C)]
VSTR            S17, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S17-S18}
ADD             R1, R0, #0x24 ; '$'
VSTR            S17, [R0,#(flt_712054 - 0x71203C)]
VSTR            S17, [R0,#(flt_712058 - 0x71203C)]
VSTR            S17, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S17-S18}
VSTR            S17, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, R5
BL              sub_1169CC
VLDR            S0, =200.0
VLDR            S20, =-88.0
VLDR            S16, =88.0
VSTR            S0, [SP,#0x88+var_3C]
MOV             R5, #0
CMP             R5, #0
VSTREQ          S20, [SP,#0x88+var_5C]
VSTREQ          S20, [SP,#0x88+var_4C]
VSTRNE          S16, [SP,#0x88+var_5C]
VSTRNE          S16, [SP,#0x88+var_4C]
RSB             R0, R5, R5,LSL#3
ADD             R0, R0, R5,LSL#4
ADD             R2, SP, #0x88+var_60
ADD             R1, R4, R0,LSL#3
VLDR            S7, [SP,#0x88+var_68]
LDR             R0, [R1,#0xF8]
VLDR            S1, [SP,#0x88+var_64]
VLDR            S0, [SP,#0x88+var_54]
VLDR            S6, [SP,#0x88+var_50]
VLDR            S5, [SP,#0x88+var_4C]
ADD             R9, SP, #0x88+var_48
VLDM            R2, {S2-S4}
ADD             R2, R0, #0x24 ; '$'
VSTR            S7, [R0,#0x20]
VSTR            S0, [R0,#0x34]
VSTR            S6, [R0,#0x38]
VSTR            S5, [R0,#0x3C]
ADD             R0, R0, #0x40 ; '@'
VSTM            R2, {S1-S4}
LDM             R9, {R2,R3,R7,R12}
STM             R0, {R2,R3,R7,R12}
ADD             R2, SP, #0x88+var_80
LDR             R0, [R6,#4]
STR             R0, [SP,#0x88+var_80]
LDR             R0, [R1,#0xF8]
MOV             R1, #0
BL              sub_12C9C4
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_2203F8
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x1B4]
TST             R0, #1
LDR             R0, [R4,#0x1C4]
BICEQ           R0, R0, #4
BEQ             loc_2205D8
TST             R0, #4
BNE             loc_2205DC
LDR             R1, [R8]
LDR             R1, [R1,#0xC8]
TST             R1, #0x10
BEQ             loc_2205DC
ORR             R0, R0, #4
STR             R0, [R4,#0x1C4]
LDR             R0, [R4,#4]
VLDR            S16, =2.0
ADD             R0, R0, #0x400
VMOV.F32        S1, S16
ADD             R0, R0, #0x2C8
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
BL              sub_5F63A4
VMOV            R0, S0
VSTR            S0, [R4,#0x24]
CMP             R0, #0x3E800000
BLE             loc_220568
VMOV            R0, S0
CMP             R0, #0x3F400000
VSTRLE          S19, [R4,#0x24]
BLE             loc_22056C
LDR             R1, =0x3FA00000
B               loc_220540
DCFS 0.5
DCFS 1.0
DCFS 0.0
DCD off_6D1648
DCD dword_6D1598
DCD dword_6E1340
DCD flt_71203C
DCFS 200.0
DCFS -88.0
DCFS 88.0
DCFS 2.0
DCD 0x3FA00000
VMOV            R0, S0
CMP             R0, R1
VSTRLE          S18, [R4,#0x24]
BLE             loc_22056C
LDR             R1, =0x3FE00000
VMOV            R0, S0
CMP             R0, R1
VLDRLE          S0, =1.5
VSTRLE          S0, [R4,#0x24]
BLE             loc_22056C
VSTR            S17, [R4,#0x24]
LDR             R0, [R4,#4]
VMOV.F32        S1, S16
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
VLDR            S0, [R0]
VADD.F32        S0, S0, S1
BL              sub_5F63A4
VMOV.F32        S1, S0
VLDR            S0, [R4,#0x24]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BEQ             loc_2205E8
LDR             R0, [R4,#4]
VMOV.F32        S2, S17
VLDR            S1, =0.041667
ADD             R0, R0, #0x400
ADD             R0, R0, #0x2C8
BL              sub_1C86E8
LDR             R0, [R4,#4]
MOV             R3, #1
MOV             R2, R3
MOV             R1, #0
STR             R4, [R0,#0x19C]
LDR             R0, [R4,#4]
BL              sub_507CD8
LDR             R0, [R4,#0x1C4]
ORR             R0, R0, #1
STR             R0, [R4,#0x1C4]
ADD             SP, SP, #0x50 ; 'P'
VPOP            {D8-D10}
POP             {R4-R10,PC}
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #6
NOP
BNE             loc_220620
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
VLDR            S0, [R4,#0x24]
LDR             R0, [R0,#0x1CC]
BL              sub_2D5C10
LDR             R0, [R4,#4]
BL              sub_50976C
ADD             SP, SP, #0x50 ; 'P'
MOV             R0, R4
VPOP            {D8-D10}
POP             {R4-R10,LR}
B               sub_2CF4BC
