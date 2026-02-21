PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, R1
LDR             R7, =off_6D1648
VPUSH           {D8-D13}
VMOV.F32        S22, S1
VMOV.F32        S16, S0
LDR             R0, [R0,#4]
VLDR            S3, [R4,#0x7C]
VLDR            S0, [R4,#0x80]
ADD             R0, R0, #0x108
VLDM            R0, {S1-S2}
LDR             R0, [R7]
VADD.F32        S24, S1, S3
VADD.F32        S25, S2, S0
BL              sub_1E4614
VLDR            S1, =1.5
VLDR            S0, =3.1416
MOV             R5, R0
VADD.F32        S1, S16, S1
VMUL.F32        S23, S16, S0
VLDR            S16, =40.744
VMUL.F32        S1, S1, S0
VMUL.F32        S18, S1, S16
VMOV.F32        S0, S18
BL              sub_464318
VMUL.F32        S17, S23, S16
VLDR            S1, [R4,#0x98]
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S17
BL              sub_464318
VLDR            S1, [R4,#0x94]
VMLA.F32        S19, S0, S1
VMOV.F32        S0, S18
VADD.F32        S16, S19, S24
VMOV.F32        S20, S16
BL              sub_464380
VLDR            S1, [R4,#0x98]
VMUL.F32        S18, S0, S1
VMOV.F32        S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x94]
VLDR            S26, =0.0
LDR             R0, [R7]
VMLA.F32        S18, S0, S1
VMOV.F32        S19, S26
VADD.F32        S17, S18, S25
VMOV.F32        S18, S26
VMOV.F32        S21, S17
LDR             R0, [R0,#0xBC]
BL              sub_5C6058
CMP             R0, #0
BEQ             loc_235878
LDR             R0, [R7]
BL              sub_1E4604
ADD             R1, R0, #0x108
VMOV.F32        S0, S26
LDM             R1, {R1,R3,R12}
ADD             R8, R0, #0x118
VMOV.F32        S1, S26
ADD             R2, R0, #0x400
STM             R8, {R1,R3,R12}
VSTR            S0, [R0,#0x110]
VSTR            S23, [R0,#0xF8]
ADD             R0, R0, #0x108
VSTM            R0, {S16-S17}
VSTR            S1, [R2,#0xC4]
CMP             R6, #6; switch 6 cases
LDRCC           PC, [PC,R6,LSL#2]; switch jump
B               def_23587C; jumptable 0023587C default case, case 0
DCD def_23587C; jump table for switch statement
VMOV.F32        S16, S24; jumptable 0023587C case 1
VLDR            S0, [R4,#0x94]
VMLA.F32        S16, S0, S22
B               loc_2358E4
VMOV.F32        S17, S25; jumptable 0023587C case 2
VLDR            S0, [R4,#0x94]
VMLA.F32        S17, S0, S22
B               loc_2358C8
ADD             R0, R5, #0x108; jumptable 0023587C case 3
VLDM            R0, {S16-S17}
VSUB.F32        S18, S20, S16
VSUB.F32        S19, S21, S17
B               def_23587C; jumptable 0023587C default case, case 0
VMOV.F32        S16, S24; jumptable 0023587C case 4
VLDR            S0, [R4,#0x94]
VLDR            S17, [R5,#0x10C]
VSUB.F32        S19, S21, S17
VMLA.F32        S16, S0, S22
VSUB.F32        S18, S20, S16
B               def_23587C; jumptable 0023587C default case, case 0
VMOV.F32        S17, S25; jumptable 0023587C case 5
VLDR            S0, [R4,#0x94]
VLDR            S16, [R5,#0x108]
VSUB.F32        S18, S20, S16
VMLA.F32        S17, S0, S22
VSUB.F32        S19, S21, S17
ADD             R1, R5, #0x108; jumptable 0023587C default case, case 0
ADD             R4, R5, #0x118
LDM             R1, {R1-R3}
VMOV.F32        S0, S26
ADD             R0, R5, #0x400
STM             R4, {R1-R3}
ADD             R1, R5, #0x108
VSTR            S26, [R5,#0x110]
VSTR            S23, [R5,#0xF8]
VSTM            R1, {S16-S17}
ADD             R1, R5, #0x140
VSTM            R1, {S18-S19}
VSTR            S0, [R0,#0xC4]
VPOP            {D8-D13}
POP             {R4-R8,PC}
