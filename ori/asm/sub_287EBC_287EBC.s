MOV             R2, #0
STR             R2, [R0]
VLDR            S0, =0.0
STR             R2, [R0,#4]
STR             R2, [R0,#8]
VLDR            S1, =390.0
VSTR            S0, [R0,#0xC]
ADD             R3, R0, #0x10
ADD             R1, R0, #0xC
VSTM            R3, {S0-S1}
ADD             R3, R0, #0x1C
VLDR            S1, =33.0
VLDR            S6, =7.0
VSTR            S1, [R0,#0x18]
VLDR            S1, =-20.0
ADD             R12, R1, #0x18
VSTM            R3, {S0-S1}
MOV             R3, #0x64 ; 'd'
VLDR            S1, =300.0
VSTR            S6, [R1,#0x20]
VLDR            S7, =80.0
VLDR            S2, =10.0
VLDR            S11, =-200.0
VLDR            S8, =200.0
VLDR            S3, =0.5
VLDR            S4, =9.5
VLDR            S5, =11.0
VLDR            S9, =130.0
VLDR            S10, =50.0
VLDR            S12, =490.0
VLDR            S13, =-400.0
VSTM            R12, {S0-S1}
STR             R3, [R1,#0x24]
VSTR            S7, [R1,#0x34]
VSTR            S2, [R1,#0x40]
VSTR            S11, [R1,#0x44]
VSTR            S8, [R1,#0x48]
VLDR            S1, =20.0
ADD             R3, R1, #0x54 ; 'T'
VLDR            S7, =150.0
VLDR            S11, =140.0
VSTM            R3, {S0-S1}
ADD             R3, R1, #0x28 ; '('
VSTR            S0, [R1,#0x5C]
VSTM            R3, {S3-S5}
ADD             R3, R1, #0x38 ; '8'
VLDR            S4, =60.0
VSTR            S0, [R1,#0x60]
VSTR            S0, [R1,#0x64]
VSTR            S4, [R1,#0x68]
VLDR            S3, =18.0
VLDR            S5, =30.0
VSTM            R3, {S9-S10}
ADD             R3, R1, #0x4C ; 'L'
VLDR            S9, =3.5
VLDR            S10, =-30.0
VSTM            R3, {S12-S13}
VSTR            S9, [R1,#0x6C]
VSTR            S3, [R1,#0x70]
VSTR            S10, [R1,#0x74]
VSTR            S5, [R1,#0x78]
VSTR            S2, [R1,#0x7C]
VSTR            S7, [R1,#0x88]
VSTR            S7, [R1,#0x8C]
VSTR            S5, [R1,#0x98]
VSTR            S5, [R1,#0x9C]
VSTR            S5, [R1,#0xA0]
VLDR            S13, =0.97
VSTR            S1, [R1,#0xA4]
VSTR            S4, [R1,#0xA8]
VSTR            S13, [R1,#0xAC]
VSTR            S0, [R1,#0xB0]
VLDR            S12, =-100.0
VSTR            S2, [R1,#0xB4]
VSTR            S0, [R1,#0xB8]
VSTR            S0, [R1,#0xBC]
VSTR            S3, [R1,#0xC0]
VLDR            S3, =64.0
VLDR            S2, =1.1
VSTR            S3, [R1,#0xCC]
VSTR            S2, [R1,#0xD0]
VSTR            S2, [R1,#0xD4]
VSTR            S2, [R1,#0xD8]
ADD             R12, R1, #0xC4
MOV             R3, #0x14
VSTM            R12, {S0-S1}
ADD             R12, R1, #0x90
VLDR            S4, =160.0
VLDR            S1, =1.0
VSTM            R12, {S7-S8}
ADD             R12, R1, #0x80
VSTM            R12, {S11-S12}
STR             R3, [R1,#0xDC]
VSTR            S4, [R1,#0xE0]
VSTR            S1, [R0,#0xF0]
STRB            R2, [R0,#0xFC]
VSTR            S0, [R0,#0xF8]
VSTR            S6, [R0,#0xF4]
BX              LR
