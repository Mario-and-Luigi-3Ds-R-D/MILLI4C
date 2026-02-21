PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S0, =110.0
MOV             R6, R1
VPUSH           {D8-D10}
MOV             R5, R2
VSTR            S0, [R2]
LDR             R0, [R0,#8]
LDRSH           R0, [R0]
SUB             R0, R0, #0x13
CMP             R0, #0x14; switch 20 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B1BC8; jumptable 001B1BC8 default case, cases 0,6,7,9-13,16
DCD def_1B1BC8; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 1
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =180.0
VMOV.F32        S2, S1
VMLA.F32        S1, S0, S2
VLDR            S0, =0.71111
VMUL.F32        S0, S1, S0
BL              sub_464380
VLDR            S1, [R5]
VLDR            S3, =50.0
VLDR            S2, =1.0
VSUB.F32        S3, S1, S3
VDIV.F32        S4, S3, S1
VSUB.F32        S3, S2, S4
VMLA.F32        S2, S0, S3
VMUL.F32        S0, S2, S1
B               loc_1B1E58
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 2
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, [R5]
VLDR            S2, =360.0
VMLA.F32        S1, S0, S2
VSTR            S1, [R5]
B               def_1B1BC8; jumptable 001B1BC8 default case, cases 0,6,7,9-13,16
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 3
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
ADD             R0, R4, #0x3800
VLDR            S1, [R5]
VLDR            S3, [R0,#0x19C]
VLDR            S2, =360.0
VADD.F32        S1, S1, S3
VMLA.F32        S1, S0, S2
VSTR            S1, [R5]
B               def_1B1BC8; jumptable 001B1BC8 default case, cases 0,6,7,9-13,16
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 8
ADD             R0, R0, #6
BL              sub_45AAB8
ADD             R0, R4, #0x3800
VLDR            S2, =1.0
VLDR            S3, [R5]
VLDR            S4, [R0,#0x19C]
VSUB.F32        S2, S2, S0
VLDR            S1, =360.0
VADD.F32        S0, S3, S4
VMLA.F32        S0, S2, S1
B               loc_1B1E58
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 4
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =360.0
LDR             R0, [R4,#8]
VMUL.F32        S16, S0, S1
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S3, =1.0
ADD             R0, R4, #0x3800
VLDR            S2, [R5]
VSUB.F32        S0, S3, S0
VLDR            S1, [R0,#0x19C]
VMLA.F32        S16, S0, S1
VADD.F32        S0, S16, S2
B               loc_1B1E58
LDR             R1, [R4,#8]; jumptable 001B1BC8 case 5
ADD             R0, R4, #0x1000
VMOV.F32        S1, S0
VLDR            S2, =1.0
LDRSH           R1, [R1,#6]
VLDR            S0, [R0,#0x1B8]
VLDR            S4, =0.05
ADD             R0, R1, #1
VSUB.F32        S0, S2, S0
VMOV            S2, R0
VLDR            S3, =360.0
VCVT.F32.S32    S2, S2
VMLA.F32        S0, S2, S4
VMLA.F32        S1, S0, S3
VSTR            S1, [R2]
B               def_1B1BC8; jumptable 001B1BC8 default case, cases 0,6,7,9-13,16
VLDR            S0, =85.0; jumptable 001B1BC8 case 14
VSTR            S0, [R5]
B               loc_1B1C20; jumptable 001B1BC8 case 1
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 15
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, =360.0
VLDR            S1, =85.0
VMUL.F32        S0, S0, S2
VADD.F32        S0, S0, S1
B               loc_1B1E58
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 17
ADD             R0, R0, #6
BL              sub_45AAB8
VSTR            S0, [R5]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S5, =1.0
ADD             R0, R4, #0x3800
VLDR            S1, =400.0
VSUB.F32        S0, S5, S0
VLDR            S3, [R0,#0x19C]
VLDR            S4, [R5]
VLDR            S2, =85.0
VMLA.F32        S1, S0, S3
VMUL.F32        S0, S1, S4
VADD.F32        S0, S0, S2
B               loc_1B1E58
LDR             R0, [R4,#8]; jumptable 001B1BC8 case 18
ADD             R0, R0, #6
BL              sub_45AAB8
ADD             R0, R4, #0x1000
VSTR            S0, [R5]
VLDR            S3, =1.0
VLDR            S5, [R0,#0x1B8]
VLDR            S1, =85.0
VLDR            S2, =400.0
VSUB.F32        S5, S3, S5
VMOV.F32        S3, S1
VLDR            S4, =50.0
VMLA.F32        S3, S5, S2
VADD.F32        S2, S3, S2
VADD.F32        S1, S2, S1
VMUL.F32        S0, S0, S1
VSUB.F32        S0, S0, S4
VSTR            S0, [R5]
LDR             R0, [R4,#8]; jumptable 001B1BC8 default case, cases 0,6,7,9-13,16
VLDR            S16, =75.0
LDRSH           R0, [R0]
SUB             R0, R0, #0x13
CMP             R0, #0x14; switch 20 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B1E70; jumptable 001B1E70 default case, cases 4-7,10-13
DCD loc_1B1F00; jump table for switch statement
DCFS 110.0
DCFS 180.0
DCFS 0.71111
DCFS 50.0
DCFS 1.0
DCFS 90.0
DCFS 360.0
DCFS 0.05
DCFS 85.0
DCFS 400.0
DCFS 75.0
VLDR            S0, =85.0; jumptable 001B1BC8 case 19
VSTR            S0, [R5]
B               loc_1B1CDC; jumptable 001B1BC8 case 8
ADD             R2, R4, #0x11C0; jumptable 001B1E70 cases 0-3,8,9
LDM             R2, {R0-R2}
STM             R6, {R0-R2}
B               def_1B1E70; jumptable 001B1E70 default case, cases 4-7,10-13
ADD             R2, R4, #0x11C0; jumptable 001B1E70 cases 14-19
LDM             R2, {R0-R2}
VMOV            S0, R1
STM             R6, {R0-R2}
LDR             R0, =0x39A8
VSUB.F32        S0, S0, S16
VSTR            S0, [R6,#4]
LDR             R5, [R0,R4]
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
LDRBEQ          R0, [R5,#0xAAC]
ADD             R4, R4, #0x3800
VLDR            S17, =0.017453
CMPEQ           R0, #3
LDREQ           R5, [R5,#0xAA8]
MOVNE           R5, #0
VLDR            S1, [R4,#0x18C]
VLDR            S18, =4.7124
VLDR            S0, [R5,#0x23C]
VLDR            S19, =40.744
VMLA.F32        S0, S1, S17
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
BL              sub_464318
VLDR            S1, [R6]
VLDR            S20, =50.0
VMLA.F32        S1, S0, S20
VSTR            S1, [R6]
VLDR            S0, [R5,#0x23C]
VLDR            S1, [R4,#0x18C]
VMLA.F32        S0, S1, S17
VADD.F32        S0, S0, S18
VMUL.F32        S0, S0, S19
BL              sub_464380
VLDR            S1, [R6,#4]
VMLA.F32        S1, S0, S20
VSTR            S1, [R6,#4]
VLDR            S0, [R6,#4]; jumptable 001B1E70 default case, cases 4-7,10-13
VADD.F32        S0, S0, S16
VSTR            S0, [R6,#4]
VPOP            {D8-D10}
POP             {R4-R6,PC}
