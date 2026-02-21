VPUSH           {D8-D9}
ADD             R2, R0, #8
ADD             R1, R0, #4
VLDR            S0, =0.0
VLDR            S1, =-78.0
VSTR            S0, [R0,#4]
VLDR            S2, =160.0
VLDR            S4, =100.0
VLDR            S5, =26.0
MOV             R3, #2
VSTM            R2, {S0-S1}
MOV             R2, #0xE
VLDR            S1, =420.0
VSTR            S2, [R0,#0x10]
VSTR            S1, [R0,#0x14]
VSTR            S4, [R0,#0x18]
VSTR            S0, [R1,#0x18]
VLDR            S1, =30.0
VSTR            S5, [R1,#0x1C]
VSTR            S1, [R1,#0x20]
VLDR            S3, =20.0
STR             R3, [R1,#0x24]
VSTR            S3, [R1,#0x28]
VSTR            S1, [R1,#0x2C]
VLDR            S6, =5.0
VLDR            S7, =9.0
VSTR            S3, [R1,#0x40]
ADD             R3, R1, #0x30 ; '0'
VLDR            S11, =-30.0
VLDR            S12, =140.0
VLDR            S8, =0.4
VLDR            S2, =50.0
VLDR            S9, =0.025
VLDR            S10, =2.0
VLDR            S5, =1.5
VLDR            S13, =-400.0
VLDR            S14, =-40.0
VLDR            S15, =23.0
VLDR            S16, =6.0
VLDR            S17, =-180.0
VLDR            S18, =180.0
VSTM            R3, {S6-S7}
ADD             R3, R1, #0x4C ; 'L'
VSTR            S6, [R1,#0x44]
VSTR            S11, [R1,#0x48]
VSTR            S12, [R1,#0x54]
VSTR            S8, [R1,#0x58]
VSTR            S0, [R1,#0x5C]
VSTR            S3, [R1,#0x60]
VLDR            S11, =3.0
VLDR            S7, =10.0
VLDR            S12, =60.0
VSTM            R3, {S1-S2}
ADD             R3, R1, #0x38 ; '8'
VSTR            S2, [R1,#0x64]
VSTR            S0, [R1,#0x68]
VLDR            S2, =1.0
VSTM            R3, {S9-S10}
STR             R2, [R1,#0x6C]
VSTR            S5, [R1,#0x70]
VSTR            S2, [R1,#0x74]
VSTR            S2, [R1,#0x78]
VLDR            S5, =80.0
VSTR            S0, [R1,#0x7C]
VSTR            S5, [R1,#0x80]
VSTR            S1, [R1,#0x84]
VSTR            S0, [R1,#0x88]
VSTR            S5, [R1,#0x8C]
VSTR            S1, [R1,#0x90]
VLDR            S5, =-0.1
VSTR            S0, [R1,#0x94]
VSTR            S5, [R1,#0x98]
VLDR            S9, =0.6
VLDR            S10, =0.2
VSTR            S0, [R1,#0x9C]
VSTR            S11, [R1,#0xB4]
VSTR            S15, [R1,#0xB8]
VSTR            S11, [R1,#0xBC]
VSTR            S7, [R1,#0xCC]
VSTR            S1, [R1,#0xD0]
VSTR            S8, [R1,#0xD4]
VSTR            S1, [R1,#0xD8]
VSTR            S3, [R1,#0xDC]
VSTR            S0, [R1,#0xE0]
VSTR            S6, [R1,#0xE4]
VSTR            S3, [R1,#0xE8]
VSTR            S0, [R1,#0xEC]
VSTR            S7, [R1,#0xF0]
ADD             R2, R1, #0xA0
VLDR            S19, =50.5
VLDR            S1, =-0.9
ADD             R12, R1, #0x10C
VSTM            R2, {S9-S10}
ADD             R2, R1, #0x104
VSTR            S19, [R1,#0xFC]
VSTR            S0, [R1,#0x100]
LDR             R3, =0xFFFFF768
VLDR            S8, =-2.0
VSTM            R2, {S0-S1}
VLDR            S1, =-10.0
VSTR            S7, [R1,#0x114]
LDR             R2, =0xFFFFFED4
VSTM            R12, {S0-S1}
ADD             R12, R1, #0xF4
VSTR            S0, [R1,#0x118]
VSTR            S4, [R1,#0x11C]
VSTR            S3, [R1,#0x120]
VSTR            S2, [R1,#0x124]
VSTR            S6, [R1,#0x128]
VSTR            S0, [R1,#0x12C]
VSTM            R12, {S9-S10}
ADD             R12, R1, #0xA8
VSTM            R12, {S12-S14}
ADD             R12, R1, #0xC0
VSTM            R12, {S16-S18}
STR             R3, [R1,#0x130]
VSTR            S5, [R1,#0x134]
VSTR            S8, [R1,#0x138]
STR             R2, [R1,#0x13C]
MOV             R1, #0
STR             R1, [R0]
VPOP            {D8-D9}
BX              LR
