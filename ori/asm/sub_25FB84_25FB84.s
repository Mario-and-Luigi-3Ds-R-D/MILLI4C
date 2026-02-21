VLDR            S4, =5.5
VLDR            S5, =7.5
VLDR            S6, =0.2
VLDR            S7, =-0.3
PUSH            {R4,R5}
MOV             R1, #5
VSTM            R0, {S4-S7}
MOV             R2, #0x14
MOV             R3, #0xA
STR             R1, [R0,#0x10]
ADD             R1, R0, #0x14
MOV             R4, #0x1E
MOV             R5, #0xF
MOV             R12, #7
STM             R1, {R2-R5,R12}
ADD             R1, R0, #0x28 ; '('
ADD             R2, R0, #0x68 ; 'h'
VLDR            S2, =-30.0
VLDR            S3, =1.0
VSTR            S2, [R0,#0x38]
VLDR            S8, =80.0
VSTR            S3, [R0,#0x30]
VLDR            S0, =2.5
VLDR            S1, =120.0
VSTR            S8, [R0,#0x34]
VLDR            S2, =-460.0
VLDR            S4, =358.0
VLDR            S7, =-20.0
VLDR            S5, =-20.0
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x3C ; '<'
VLDR            S0, =0.0
VLDR            S1, =-223.0
VSTM            R1, {S0-S2}
MOV             R1, #4
VLDR            S2, =-42.0
VLDR            S1, =448.0
VSTR            S2, [R0,#0x48]
VSTR            S4, [R0,#0x4C]
VSTR            S1, [R0,#0x50]
VLDR            S1, =40.0
VLDR            S2, =49.0
VSTR            S1, [R0,#0x54]
VLDR            S1, =20.0
VSTR            S2, [R0,#0x58]
VSTR            S1, [R0,#0x5C]
VLDR            S2, =108.0
VSTR            S7, [R0,#0x60]
VSTR            S2, [R0,#0x64]
VLDR            S4, =-24.0
VLDR            S2, =-135.0
VSTM            R2, {S4-S5}
VLDR            S4, =-96.0
VSTR            S2, [R0,#0x70]
VSTR            S4, [R0,#0x74]
VLDR            S2, =68.0
STR             R1, [R0,#0x78]
VLDR            S4, =76.0
VSTR            S2, [R0,#0x7C]
VSTR            S4, [R0,#0x80]
VLDR            S2, =-24.0
VSTR            S0, [R0,#0x84]
VSTR            S2, [R0,#0x88]
VSTR            S0, [R0,#0x8C]
VLDR            S2, =24.0
VSTR            S0, [R0,#0x90]
VSTR            S2, [R0,#0x94]
VSTR            S0, [R0,#0x98]
VLDR            S2, =90.0
VSTR            S0, [R0,#0x9C]
VSTR            S2, [R0,#0xA0]
VSTR            S1, [R0,#0xA4]
VLDR            S5, =100.0
VSTR            S0, [R0,#0xA8]
VSTR            S5, [R0,#0xAC]
VSTR            S1, [R0,#0xB0]
VLDR            S2, =110.0
VSTR            S0, [R0,#0xB4]
VSTR            S2, [R0,#0xB8]
VLDR            S2, =22.0
VLDR            S11, =130.0
VSTR            S2, [R0,#0xBC]
VLDR            S2, =132.0
VSTR            S0, [R0,#0xC0]
VSTR            S2, [R0,#0xC4]
VSTR            S1, [R0,#0xC8]
VLDR            S2, =90.0
VSTR            S0, [R0,#0xCC]
VSTR            S2, [R0,#0xD0]
VLDR            S2, =460.0
VLDR            S4, =60.0
VSTR            S2, [R0,#0xD4]
VLDR            S2, =0.97
VSTR            S1, [R0,#0xEC]
VSTR            S2, [R0,#0xF4]
VSTR            S11, [R0,#0xD8]
VLDR            S2, =30.0
VSTR            S4, [R0,#0xDC]
VSTR            S2, [R0,#0xE0]
VSTR            S2, [R0,#0xE4]
VSTR            S2, [R0,#0xE8]
VSTR            S4, [R0,#0xF0]
VLDR            S6, =10.0
VSTR            S0, [R0,#0xF8]
VSTR            S6, [R0,#0xFC]
VSTR            S0, [R0,#0x100]
VLDR            S9, =18.0
VSTR            S0, [R0,#0x104]
VSTR            S9, [R0,#0x108]
ADD             R2, R0, #0x10C
VSTM            R2, {S0-S1}
MOV             R2, #0x14
VLDR            S0, =64.0
VSTR            S0, [R0,#0x114]
VLDR            S0, =160.0
STR             R2, [R0,#0x124]
VSTR            S0, [R0,#0x128]
VLDR            S0, =18.0
MOV             R2, #0
VSTR            S0, [R0,#0x12C]
VLDR            S0, =12.0
VSTR            S6, [R0,#0x130]
VSTR            S0, [R0,#0x134]
VSTR            S6, [R0,#0x138]
VSTR            S1, [R0,#0x140]
VSTR            S4, [R0,#0x144]
VSTR            S4, [R0,#0x148]
VSTR            S6, [R0,#0x14C]
VSTR            S6, [R0,#0x150]
VSTR            S1, [R0,#0x154]
VSTR            S1, [R0,#0x158]
VSTR            S6, [R0,#0x15C]
STR             R2, [R0,#0x160]
ADD             R2, R5, #0x158
STR             R2, [R0,#0x164]
MOV             R2, #0x64 ; 'd'
STR             R2, [R0,#0x168]
MOV             R2, #0xFA
STR             R2, [R0,#0x16C]
MOV             R2, #0
STR             R2, [R0,#0x170]
ADD             R2, R5, #0x158
STR             R2, [R0,#0x174]
MOV             R2, #0x64 ; 'd'
STR             R2, [R0,#0x178]
MOV             R2, #0xFA
STR             R2, [R0,#0x17C]
MOV             R2, #0x32 ; '2'
VLDR            S0, =40.0
STR             R2, [R0,#0x180]
VSTR            S0, [R0,#0x188]
VSTR            S8, [R0,#0x18C]
VLDR            S0, =120.0
VSTR            S8, [R0,#0x190]
VSTR            S0, [R0,#0x194]
VLDR            S0, =14.0
VSTR            S6, [R0,#0x198]
VSTR            S0, [R0,#0x19C]
VLDR            S0, =0.4
VLDR            S14, =5.0
VSTR            S0, [R0,#0x1A0]
VLDR            S0, =1.1
MOV             R2, #0x96
VSTR            S0, [R0,#0x118]
VSTR            S0, [R0,#0x11C]
VSTR            S0, [R0,#0x120]
VSTR            S14, [R0,#0x13C]
ADD             R3, R0, #0x1A4
STR             R2, [R0,#0x184]
VLDR            S0, =26.0
VLDR            S6, =41.0
VSTM            R3, {S1-S3}
ADD             R3, R0, #0x1B0
VSTM            R3, {S1-S3}
ADD             R3, R0, #0x1C8
VSTR            S1, [R0,#0x1BC]
VSTR            S0, [R0,#0x1C0]
VSTR            S3, [R0,#0x1C4]
VLDR            S0, =19.0
VSTR            S3, [R0,#0x1D0]
VSTM            R3, {S0-S1}
ADD             R3, R0, #0x220
VLDR            S0, =21.0
VLDR            S1, =4000.0
VSTR            S0, [R0,#0x1D4]
VLDR            S0, =19.0
VSTR            S0, [R0,#0x1D8]
VLDR            S0, =15.0
VSTR            S3, [R0,#0x1DC]
VSTR            S0, [R0,#0x1E0]
VLDR            S0, =340.0
VLDR            S3, =172.0
VSTR            S0, [R0,#0x1E4]
VLDR            S0, =530.0
VSTR            S0, [R0,#0x1E8]
VLDR            S0, =0.0
VSTR            S1, [R0,#0x1EC]
VSTR            S0, [R0,#0x1F0]
VSTR            S3, [R0,#0x1F4]
VLDR            S1, =-72.0
VSTR            S6, [R0,#0x1F8]
VLDR            S3, =509.0
VSTR            S1, [R0,#0x1FC]
VSTR            S3, [R0,#0x200]
VLDR            S3, =41.0
VLDR            S1, =-25.0
VSTR            S0, [R0,#0x204]
VSTR            S3, [R0,#0x208]
VSTR            S1, [R0,#0x20C]
VLDR            S1, =28.0
VLDR            S3, =-475.0
VSTR            S1, [R0,#0x210]
VLDR            S1, =150.0
VSTR            S4, [R0,#0x214]
VSTR            S1, [R0,#0x218]
VSTR            S0, [R0,#0x21C]
VSTR            S3, [R0,#0x228]
VLDR            S1, =-438.0
VLDR            S3, =448.0
VLDR            S6, =70.0
VSTM            R3, {S0-S1}
ADD             R3, R0, #0x22C
VLDR            S1, =280.0
VSTR            S3, [R0,#0x234]
VSTR            S6, [R0,#0x238]
VLDR            S6, =-223.0
VLDR            S8, =-460.0
VLDR            S12, =6.0
VLDR            S9, =8.0
VSTM            R3, {S0-S1}
ADD             R3, R0, #0x23C
VSTR            S3, [R0,#0x244]
VSTM            R3, {S0-S1}
ADD             R3, R0, #0x258
VSTR            S0, [R0,#0x248]
VSTR            S6, [R0,#0x24C]
VLDR            S6, =155.0
VSTR            S8, [R0,#0x250]
VSTR            S6, [R0,#0x254]
VLDR            S6, =72.0
VSTR            S0, [R0,#0x260]
VSTM            R3, {S5-S6}
VLDR            S6, =3.0
VSTR            S6, [R0,#0x264]
VSTR            S12, [R0,#0x268]
VSTR            S9, [R0,#0x26C]
VLDR            S6, =150.0
B               loc_260074
DCFS 5.5
DCFS 7.5
DCFS 0.2
DCFS -0.3
DCFS 2.5
DCFS 120.0
DCFS 1.0
DCFS 80.0
DCFS -30.0
DCFS 0.0
DCFS -223.0
DCFS -460.0
DCFS -42.0
DCFS 358.0
DCFS 448.0
DCFS 40.0
DCFS 20.0
DCFS -20.0
DCFS 49.0
DCFS 108.0
DCFS -24.0
DCFS -135.0
DCFS -96.0
DCFS 68.0
DCFS 76.0
DCFS 24.0
DCFS 90.0
DCFS 100.0
DCFS 110.0
DCFS 22.0
DCFS 132.0
DCFS 460.0
DCFS 0.97
DCFS 130.0
DCFS 60.0
DCFS 30.0
DCFS 10.0
DCFS 18.0
DCFS 64.0
DCFS 160.0
DCFS 12.0
DCFS 14.0
DCFS 0.4
DCFS 1.1
DCFS 5.0
DCFS 26.0
DCFS 19.0
DCFS 21.0
DCFS 15.0
DCFS 340.0
DCFS 530.0
DCFS 4000.0
DCFS 172.0
DCFS 41.0
DCFS -72.0
DCFS 509.0
DCFS -25.0
DCFS 28.0
DCFS 150.0
DCFS -438.0
DCFS -475.0
DCFS 280.0
DCFS 70.0
DCFS 155.0
DCFS 72.0
DCFS 3.0
DCFS 6.0
DCFS 8.0
VSTR            S6, [R0,#0x270]
VLDR            S6, =120.0
VLDR            S13, =80.0
VSTR            S6, [R0,#0x274]
VSTR            S5, [R0,#0x278]
VSTR            S13, [R0,#0x27C]
MOV             R3, #0x5A ; 'Z'
STR             R3, [R0,#0x280]
ADD             R3, R2, #0x8C
STR             R3, [R0,#0x284]
MOV             R3, #0x5A ; 'Z'
STR             R3, [R0,#0x288]
MOV             R3, #0xDC
STR             R3, [R0,#0x28C]
MOV             R3, #0x28 ; '('
STR             R3, [R0,#0x290]
MOV             R3, #0x3C ; '<'
VLDR            S6, =-0.8
STR             R3, [R0,#0x294]
VSTR            S6, [R0,#0x298]
MOV             R3, #0x1E
STR             R2, [R0,#0x2A0]
VLDR            S6, =20.0
STR             R3, [R0,#0x29C]
VSTR            S12, [R0,#0x2A4]
VSTR            S6, [R0,#0x2A8]
STR             R3, [R0,#0x2AC]
VLDR            S8, =40.0
VSTR            S13, [R0,#0x2B0]
VSTR            S8, [R0,#0x2B4]
ADD             R3, R0, #0x2B8
VLDR            S10, =16.0
MOV             R2, #8
VSTM            R3, {S7-S8}
VLDR            S7, =1.0
VLDR            S15, =-16.0
VSTR            S7, [R0,#0x2C0]
VSTR            S10, [R0,#0x2C4]
VSTR            S6, [R0,#0x2C8]
VLDR            S7, =35.0
STR             R1, [R0,#0x2D0]
STR             R2, [R0,#0x2CC]
VSTR            S7, [R0,#0x2D4]
VLDR            S7, =50.0
MOV             R1, #1
VSTR            S7, [R0,#0x2D8]
STR             R1, [R0,#0x2DC]
VSTR            S10, [R0,#0x2E0]
VSTR            S0, [R0,#0x2E4]
VSTR            S0, [R0,#0x2E8]
VSTR            S15, [R0,#0x2EC]
VSTR            S0, [R0,#0x2F0]
VLDR            S15, =4.0
VSTR            S0, [R0,#0x2F4]
VSTR            S15, [R0,#0x2F8]
VLDR            S15, =-2.5
VSTR            S15, [R0,#0x2FC]
VSTR            S9, [R0,#0x300]
VSTR            S2, [R0,#0x304]
VSTR            S10, [R0,#0x308]
VSTR            S9, [R0,#0x30C]
VSTR            S12, [R0,#0x310]
VSTR            S9, [R0,#0x314]
VSTR            S6, [R0,#0x318]
VSTR            S2, [R0,#0x31C]
VSTR            S7, [R0,#0x320]
VSTR            S4, [R0,#0x324]
VSTR            S2, [R0,#0x328]
VSTR            S7, [R0,#0x32C]
VLDR            S10, =70.0
VSTR            S4, [R0,#0x330]
VSTR            S10, [R0,#0x334]
VLDR            S10, =-2.5
VSTR            S10, [R0,#0x338]
VSTR            S9, [R0,#0x33C]
VLDR            S9, =-2.0
VSTR            S14, [R0,#0x340]
VSTR            S9, [R0,#0x344]
VSTR            S6, [R0,#0x348]
VSTR            S13, [R0,#0x34C]
VLDR            S9, =70.0
VSTR            S6, [R0,#0x350]
VSTR            S9, [R0,#0x354]
STR             R1, [R0,#0x358]
VSTR            S8, [R0,#0x35C]
VLDR            S9, =-10.0
VSTR            S2, [R0,#0x360]
VSTR            S9, [R0,#0x364]
VLDR            S9, =160.0
ADD             R3, R0, #0x3A4
VSTR            S9, [R0,#0x368]
VLDR            S9, =200.0
VSTR            S9, [R0,#0x36C]
VSTR            S7, [R0,#0x370]
VSTR            S7, [R0,#0x374]
VSTR            S4, [R0,#0x378]
VSTR            S7, [R0,#0x37C]
VSTR            S4, [R0,#0x380]
VSTR            S8, [R0,#0x384]
VSTR            S7, [R0,#0x388]
VSTR            S5, [R0,#0x38C]
VSTR            S12, [R0,#0x390]
VSTR            S2, [R0,#0x394]
VSTR            S1, [R0,#0x398]
VSTR            S3, [R0,#0x39C]
VSTR            S2, [R0,#0x3A0]
VLDR            S1, =380.0
VLDR            S2, =512.0
VSTM            R3, {S1-S2}
ADD             R3, R0, #0x3F8
VLDR            S2, =360.0
VSTR            S2, [R0,#0x3AC]
VLDR            S2, =260.0
VSTR            S2, [R0,#0x3B0]
VLDR            S2, =-223.0
VSTR            S0, [R0,#0x3B4]
VSTR            S2, [R0,#0x3B8]
VLDR            S2, =-460.0
VSTR            S2, [R0,#0x3BC]
VSTR            S6, [R0,#0x3C0]
VSTR            S6, [R0,#0x3C4]
VSTR            S1, [R0,#0x3C8]
VLDR            S1, =320.0
VLDR            S2, =27.0
VSTR            S1, [R0,#0x3CC]
STR             R1, [R0,#0x3D0]
MOV             R1, #0x23 ; '#'
STR             R1, [R0,#0x3D4]
MOV             R1, #0x19
STR             R1, [R0,#0x3D8]
MOV             R1, #0x28 ; '('
VLDR            S1, =-30.0
STR             R1, [R0,#0x3DC]
VSTR            S1, [R0,#0x3E0]
VLDR            S1, =120.0
ADD             R1, R0, #0x3FC
VSTR            S1, [R0,#0x3E4]
VSTR            S4, [R0,#0x3E8]
VSTR            S6, [R0,#0x3EC]
VLDR            S1, =400.0
VSTR            S4, [R0,#0x3F0]
VSTR            S1, [R0,#0x3F4]
VSTR            S5, [R1,#4]
VSTM            R3, {S1-S2}
VSTR            S0, [R1,#8]
ADD             R1, R0, #0x400
VLDR            S0, =50.0
VLDR            S2, =80.0
VSTR            S11, [R1,#8]
VSTR            S11, [R1,#0xC]
ADD             R2, R0, #0x410
VLDR            S3, =70.0
ADD             R1, R1, #0x4C ; 'L'
VSTM            R2, {S0-S2}
ADD             R2, R0, #0x400
VLDR            S0, =0.0
VLDR            S1, =1.0
ADD             R2, R2, #0x1C
VLDR            S2, =1.2
VSTM            R2, {S0-S1}
VSTR            S0, [R2,#8]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x28 ; '('
VSTR            S0, [R2]
VSTR            S2, [R2,#4]
VSTR            S0, [R2,#8]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x34 ; '4'
VLDR            S2, =160.0
VSTR            S0, [R2]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x38 ; '8'
VSTM            R2, {S0-S1}
ADD             R2, R0, #0x440
VLDR            S1, =-3.0
VSTR            S0, [R2]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x44 ; 'D'
VSTM            R2, {S0-S1}
VLDR            S0, =0.01
VLDR            S1, =0.8
VSTM            R1, {S0-S3}
ADD             R1, R0, #0x400
ADD             R1, R1, #0x5C ; '\'
VLDR            S0, =40.0
VLDR            S1, =20.0
VLDR            S2, =-32.0
VSTM            R1, {S0-S2}
POP             {R4,R5}
BX              LR
