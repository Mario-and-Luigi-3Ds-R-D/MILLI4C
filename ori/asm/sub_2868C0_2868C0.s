PUSH            {R4-R7}
ADD             R1, R0, #8
MOV             R2, #6
MOV             R7, #0xC
STM             R1, {R2,R7}
ADD             R7, R0, #0x10
MOV             R3, #8
MOV             R12, #0xFFFFFFA6
ADD             R6, R2, #0x144
STM             R7, {R2,R3,R12}
ADD             R2, R0, #0x1C
MOV             R4, #0x5A ; 'Z'
MOV             R5, #0x64 ; 'd'
VLDR            S1, =60.0
STM             R2, {R4-R6}
MOV             R12, #7
VLDR            S0, =20.0
VSTR            S1, [R0,#0x28]
VSTR            S0, [R0,#0x2C]
VLDR            S0, =0.0
VLDR            S2, =200.0
VSTR            S0, [R0,#0x30]
VSTR            S0, [R0,#0x34]
VSTR            S2, [R0,#0x38]
VLDR            S6, =-0.55
VLDR            S7, =10.0
VSTR            S6, [R1,#0x34]
STR             R12, [R1,#0x38]
VSTR            S7, [R1,#0x3C]
VSTR            S1, [R1,#0x40]
VSTR            S1, [R1,#0x44]
VLDR            S8, =8.0
VSTR            S1, [R1,#0x4C]
VLDR            S2, =450.0
MOV             R2, #0
MOV             R3, #4
VSTR            S8, [R1,#0x54]
STRD            R2, R3, [R1,#0x58]
VSTR            S2, [R1,#0x48]
VSTR            S2, [R1,#0x50]
VLDR            S2, =-22.0
VLDR            S3, =30.0
VSTR            S2, [R1,#0x6C]
VLDR            S4, =35.0
VLDR            S5, =40.0
ADD             R2, R1, #0x60 ; '`'
VLDR            S1, =-12.0
VLDR            S2, =12.0
VSTM            R2, {S3-S5}
ADD             R2, R1, #0x70 ; 'p'
VLDR            S4, =26.0
VLDR            S3, =32.0
VSTR            S4, [R1,#0x78]
VSTR            S3, [R1,#0x7C]
VLDR            S3, =-50.0
VSTM            R2, {S0-S1}
ADD             R2, R1, #0x88
VSTM            R2, {S0-S1}
ADD             R2, R1, #0x80
VLDR            S1, =50.0
VLDR            S0, =100.0
VSTR            S1, [R1,#0x90]
VSTR            S0, [R1,#0x94]
VSTM            R2, {S2-S3}
VSTR            S2, [R1,#0x98]
POP             {R4-R7}
BX              LR
