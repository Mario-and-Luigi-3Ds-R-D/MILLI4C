PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R0, [R0,#8]
LDRSH           R1, [R0]
CMP             R1, #0x32; switch 50 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
DCD loc_1B443C; jump table for switch statement
ADD             R5, R4, #0x3800; jumptable 001B436C case 0
ADD             R5, R5, #0x288
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B445C
BL              sub_533330
MOV             R0, #0
STR             R0, [R5]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x28C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B4480
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x178
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B44B8
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1B44B0
LDR             R0, [R5]
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5]
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #0x1A
BNE             loc_1B44E0
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x208E3
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
ADD             R4, R4, #0x3000
ADD             R4, R4, #0xA90
LDR             R0, [R4]
CMP             R0, #0
BEQ             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
NOP
B               loc_1B48AC
LDR             R0, [R0,#0x584]; jumptable 001B436C case 1
CMP             R0, #0
BEQ             loc_1B4534
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1B4534
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x584]
CMP             R0, #0
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x20063
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R1, [R4,#8]
STR             R0, [R1,#0x584]
ADD             SP, SP, #0x10; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R1, [R4,#4]; jumptable 001B436C case 4
VLDR            S0, =0.0
ADD             SP, SP, #0x10
LDR             R0, =0x20061
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
B               sub_1459F8
ADD             R5, R4, #0x3800; jumptable 001B436C case 19
ADD             R5, R5, #0x17C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B45BC
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1B45B4
LDR             R0, [R5]
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x178
LDR             R0, [R5]
CMP             R0, #0
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x20050
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R0, [R5]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
ADD             R4, R4, #0x3800; jumptable 001B436C case 20
ADD             R4, R4, #0x178
LDR             R0, [R4]
CMP             R0, #0
BEQ             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
BL              sub_5CA52C
CMP             R0, #0
NOP
BNE             loc_1B4748
MOV             R0, #0
STR             R0, [R4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S16, =0.0; jumptable 001B436C case 21
LDR             R1, [R4,#4]
LDR             R0, =0x20081
VMOV.F32        S0, S16
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x17C
LDR             R0, [R5]
CMP             R0, #0
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x20051
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R0, [R5]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R1, [R4,#4]; jumptable 001B436C case 22
VLDR            S0, =0.0
ADD             SP, SP, #0x10
LDR             R0, =0x208E2
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
B               sub_1459F8
ADD             R4, R4, #0x3800; jumptable 001B436C cases 26,31
ADD             R4, R4, #0x17C
LDR             R0, [R4]
CMP             R0, #0
BEQ             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1B461C
B               loc_1B4748
ADD             R5, R4, #0x3800; jumptable 001B436C case 28
ADD             R5, R5, #0x17C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B470C
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1B4704
LDR             R0, [R5]
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x178
LDR             R0, [R5]
CMP             R0, #0
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
B               loc_1B45D0
ADD             R4, R4, #0x3800; jumptable 001B436C case 30
ADD             R4, R4, #0x178
LDR             R0, [R4]
CMP             R0, #0
BEQ             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_1B461C
LDR             R0, [R4]
MOV             R1, #0
BL              sub_234A48
NOP
NOP
B               loc_1B461C
VLDR            S16, =0.0; jumptable 001B436C case 34
LDR             R1, [R4,#4]
LDR             R0, =0x20081
VMOV.F32        S0, S16
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x17C
LDR             R0, [R5]
CMP             R0, #0
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
B               loc_1B4660
LDR             R1, [R4,#4]; jumptable 001B436C case 35
VLDR            S0, =0.0
ADD             SP, SP, #0x10
LDR             R0, =0x208E4
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
B               sub_1459F8
DCFS 0.0
DCD 0x208E3
DCD 0x20063
DCD 0x20061
DCD 0x20050
DCD 0x20081
DCD 0x20051
DCD 0x208E2
DCD 0x208E4
LDR             R1, [R4,#4]; jumptable 001B436C case 32
VLDR            S0, =0.0
ADD             SP, SP, #0x10
LDR             R0, =0x208E6
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
B               sub_1459F8
ADD             R3, R4, #0x3800; jumptable 001B436C cases 39-41
ADD             R3, R3, #0x21C
MOV             R2, #0
VLDM            R3, {S0-S1}
ADD             R5, R4, #0x3800
LDR             R0, =0x20052
MOV             R1, R2
BL              sub_1459F8
ADD             R6, R4, #0x3800
ADD             R6, R6, #0x28C
LDR             R0, [R6]
CMP             R0, #0
BNE             loc_1B4850
ADD             R3, R5, #0x21C
MOV             R2, #0
VLDM            R3, {S0-S1}
MOV             R1, R2
LDR             R0, =0x20053
BL              sub_1459F8
STR             R0, [R6]
ADD             R6, R4, #0x3800
ADD             R6, R6, #0x288
LDR             R0, [R6]
CMP             R0, #0
BNE             loc_1B48A0
ADD             R5, R5, #0x21C
VLDR            S0, =67.5
LDM             R5, {R0-R2}
VMOV            S1, R1
STMEA           SP, {R0-R2}
LDR             R0, =off_6D1648
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28+var_24]
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, =0x146
MOV             R3, #0
MOV             R2, SP
BL              sub_168114
STR             R0, [R6]
ADD             R4, R4, #0x3800
ADD             R4, R4, #0x298
MOV             R0, #0xFFFFFFFF
STR             R0, [R4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R6, =off_6D1648; jumptable 001B436C case 44
LDR             R0, [R6]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
ADD             R2, R4, #0x3800
ADD             R2, R2, #0x21C
VLDR            S0, =67.5
LDM             R2, {R0-R2}
VMOV            S1, R1
STMEA           SP, {R0-R2}
LDR             R0, =0x3A64
VADD.F32        S1, S1, S0
VSTR            S1, [SP,#0x28+var_24]
LDRB            R0, [R0,R4]
CMP             R0, #0
VMOVEQ          S1, R2
VADDEQ.F32      S0, S1, S0
BEQ             loc_1B4920
CMP             R0, #3
BNE             loc_1B4924
VMOV            S0, R2
VLDR            S1, =-67.5
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28+var_20]
ADD             R5, R4, #0x3800
ADD             R5, R5, #0x28C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B4948
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0x88
BL              sub_168114
VLDR            S0, =0.0
LDR             R1, [R4,#4]
LDR             R0, =0x20055
VMOV.F32        S1, S0
MOV             R2, #0
BL              sub_1459F8
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R1, [R4,#4]; jumptable 001B436C cases 43,45
VLDR            S0, =0.0
ADD             SP, SP, #0x10
LDR             R0, =0x20054
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
B               sub_1459F8
VLDR            S0, =0.0; jumptable 001B436C case 46
LDR             R1, [R4,#4]
LDR             R0, =0x20082
VMOV.F32        S1, S0
MOV             R2, #0
BL              sub_1459F8
ADD             R5, R4, #0x3000
ADD             R5, R5, #0xA90
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_1B49F4
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x21C
MOV             R2, #0
VLDM            R0, {S0-S1}
MOV             R1, R2
LDR             R0, =0x20056
BL              sub_1459F8
STR             R0, [R5]
ADD             R4, R4, #0x3800
ADD             R4, R4, #0x28C
LDR             R0, [R4]
CMP             R0, #0
BEQ             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R4]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, =0x3A60; jumptable 001B436C case 47
LDR             R0, [R0,R4]
CMP             R0, #0x3F800000
LDR             R0, =off_6D1648
LDR             R0, [R0]
BEQ             loc_1B4AA4
LDR             R0, [R0,#0xBC]
ADD             R2, R4, #0x3800
MOV             R3, #1
ADD             R2, R2, #0x254
MOV             R1, #0x9C
BL              sub_168114
LDR             R1, =0x3A94
STR             R0, [R1,R4]
ADD             R5, R4, #0x3000
ADD             R5, R5, #0xA90
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1B4A80
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R5]
LDR             R1, [R4,#4]
VLDR            S0, =0.0
ADD             SP, SP, #0x10
LDR             R0, =0x20055
VMOV.F32        S1, S0
VPOP            {D8}
MOV             R2, #0
POP             {R4-R6,LR}
B               sub_1459F8
NOP
LDR             R0, [R0,#0xBC]
ADD             R2, R4, #0x3800
MOV             R3, #1
ADD             R2, R2, #0x254
MOV             R1, #0x9B
BL              sub_168114
LDR             R1, =0x3A94
STR             R0, [R1,R4]
B               loc_1B4A5C
ADD             R4, R4, #0x3000; jumptable 001B436C case 48
ADD             R4, R4, #0xA90
LDR             R0, [R4]
CMP             R0, #0
BEQ             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
B               loc_1B4A08
ADD             R5, R4, #0x3000; jumptable 001B436C case 49
ADD             R5, R5, #0xA90
LDR             R0, [R5]
CMP             R0, #0
BNE             def_1B436C; jumptable 001B436C default case, cases 2,3,5-18,23-25,27,29,33,36-38,42
ADD             R0, R4, #0x3800
ADD             R0, R0, #0x21C
MOV             R2, #0
VLDM            R0, {S0-S1}
MOV             R1, R2
LDR             R0, =0x20056
BL              sub_1459F8
STR             R0, [R5]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
