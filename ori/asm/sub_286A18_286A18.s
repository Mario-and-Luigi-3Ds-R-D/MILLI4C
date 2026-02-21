PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x14
VLDR            S0, =0.0
VLDR            S1, =3.0
ADD             R1, R0, #0xC
VLDR            S13, =-180.0
VLDR            S2, =160.0
VLDR            S3, =80.0
VLDR            S4, =30.0
VLDR            S5, =2.0
VLDR            S6, =25.0
VLDR            S7, =50.0
VLDR            S8, =60.0
VLDR            S9, =95.0
VLDR            S10, =0.25
VLDR            S11, =24.0
VLDR            S12, =180.0
MOV             R5, #0
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x4C ; 'L'
VSTR            S0, [R0,#0x24]
VSTR            S1, [R0,#0x30]
VSTR            S0, [R0,#0x3C]
VSTR            S13, [R0,#0x40]
VSTR            S0, [R0,#0x44]
VLDR            S0, =20.0
VLDR            S1, =-32.0
VSTM            R0, {S2-S4}
VLDR            S2, =40.0
VSTR            S2, [R0,#0x48]
VLDR            S2, =-10.0
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x60 ; '`'
VLDR            S1, =-6.0
VLDR            S0, =6.0
VSTR            S1, [R0,#0x54]
VSTR            S0, [R0,#0x58]
VSTR            S2, [R0,#0x5C]
VLDR            S1, =42.0
VLDR            S2, =10.0
VSTM            R1, {S0-S2}
ADD             R1, R0, #0x14
VSTM            R1, {S5-S8}
ADD             R1, R0, #0x28 ; '('
ADD             R0, R0, #0x34 ; '4'
VSTM            R1, {S9-S10}
LDR             R1, =0xC00E
VSTM            R0, {S11-S12}
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52FACC
STR             R0, [R4,#0xC]
STR             R5, [R4]
STR             R5, [R4,#4]
MOV             R1, #1
STR             R5, [R4,#8]
MOV             R0, R4
STRB            R1, [R4,#0x10]
POP             {R4-R6,PC}
