PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R5, R1
BL              sub_540C7C
ADD             R3, R5, #0x2000
ADD             R3, R3, #0x670
ADD             R7, R4, #0x2000
LDM             R3, {R3,R6,R12,LR}
ADD             R7, R7, #0x670
MOV             R2, #0x2680
ADD             R0, R5, #0x2400
ADD             R1, R4, #0x2400
STM             R7, {R3,R6,R12,LR}
LDR             R3, [R2,R5]
LDR             R12, =0x2686
AND             R3, R3, #1
STR             R3, [R2,R4]
ADD             R2, R5, #0x2600
ADD             R3, R4, #0x2600
LDRH            LR, [R2,#0x84]
STRH            LR, [R3,#0x84]
MOV             LR, R12
LDRB            R12, [R12,R5]
STRB            R12, [LR,R4]
LDRH            LR, [R2,#0x88]
LDR             R12, =0x268C
STRH            LR, [R3,#0x88]
MOV             R7, R12
ADD             LR, R12, #4
LDR             R12, [R12,R5]
STR             R12, [R7,R4]
LDR             R12, [LR,R5]
ORR             R7, LR, LR,ASR#11
STR             R12, [LR,R4]
LDRB            LR, [R7,R5]
ADD             R12, R5, #0x2400
ADD             R12, R12, #0x298
STRB            LR, [R7,R4]
MOV             R6, R12
LDRB            R12, [R12]
ADD             LR, R4, #0x2400
ADD             LR, LR, #0x298
ADD             R7, R0, #0x2A4
STRB            R12, [LR]
LDR             R12, [R0,#0x29C]
STR             R12, [R1,#0x29C]
LDR             R12, [R0,#0x2A0]
STR             R12, [R1,#0x2A0]
LDR             R12, [R0,#0x2A4]
STR             R12, [R1,#0x2A4]
LDR             R12, [R0,#0x2A8]
STR             R12, [R1,#0x2A8]
LDR             R12, [R0,#0x2AC]
STR             R12, [R1,#0x2AC]
LDR             R12, [R0,#0x2B0]
STR             R12, [R1,#0x2B0]
VLDM            R7, {S0-S3}
ADD             R7, R1, #0x2A4
VSTM            R7, {S0-S3}
ADD             R7, R0, #0x2B4
LDR             R12, [R0,#0x2B4]
STR             R12, [R1,#0x2B4]
LDR             R12, [R0,#0x2B8]
STR             R12, [R1,#0x2B8]
LDR             R12, [R0,#0x2BC]
STR             R12, [R1,#0x2BC]
LDR             R12, [R0,#0x2C0]
STR             R12, [R1,#0x2C0]
VLDM            R7, {S0-S3}
ADD             R7, R1, #0x2B4
VSTM            R7, {S0-S3}
LDR             R12, [R0,#0x2C4]
STR             R12, [R1,#0x2C4]
LDR             R12, [R0,#0x2C8]
STR             R12, [R1,#0x2C8]
LDR             R12, [R0,#0x2CC]
STR             R12, [R1,#0x2CC]
LDR             R12, [R0,#0x2D0]
STR             R12, [R1,#0x2D0]
LDR             R12, [R0,#0x298]
STR             R12, [R1,#0x298]
LDR             R7, [R0,#0x29C]
LDR             R12, =0x26A0
STR             R7, [R1,#0x29C]
MOV             R8, R12
ORR             R7, R12, R12,ASR#13
LDRB            R12, [R12,R5]
STRB            R12, [R8,R4]
MOV             R12, R7
LDRB            R7, [R7,R5]
STRB            R7, [R12,R4]
LDR             R12, [R0,#0x2A4]
LDR             R7, =0x26A8
STR             R12, [R1,#0x2A4]
ADD             R12, R4, R7
LDRB            R7, [R7,R5]
STRB            R7, [R12]
LDR             R7, =0x26A9
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDR             R7, =0x26AA
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDR             R7, =0x26AB
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDR             R7, =0x26AC
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDR             R7, [R0,#0x2B0]
STR             R7, [R1,#0x2B0]
LDR             R7, =0x26B4
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDRH            R7, [R2,#0xB6]
STRH            R7, [R3,#0xB6]
LDR             R7, =0x26B8
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDR             R7, =0x26BC
MOV             R8, R7
LDR             R7, [R7,R5]
STR             R7, [R8,R4]
MOV             R7, #0x26C0
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDR             R7, =0x26C1
MOV             R8, R7
LDRB            R7, [R7,R5]
STRB            R7, [R8,R4]
LDRB            R6, [R6]
STRB            R6, [LR]
LDR             LR, =0x2699
LDRB            R6, [R2,#0x99]
STRB            R6, [LR,R4]
LDRB            R6, [R2,#0x9A]
ADD             LR, LR, #1
STRB            R6, [LR,R4]
ADD             LR, LR, #2
MOV             R6, LR
LDR             LR, [LR,R5]
STR             LR, [R6,R4]
LDRH            LR, [R2,#0xA0]
STRH            LR, [R3,#0xA0]
LDR             R3, =0x26A4
MOV             LR, R3
LDR             R3, [R3,R5]
ADD             R6, R4, #0x2400
ADD             R6, R6, #0x314
STR             R3, [LR,R4]
LDRB            R2, [R2,#0xA8]
STRB            R2, [R12]
LDR             R2, [R0,#0x2D4]
STR             R2, [R1,#0x2D4]
LDR             R0, [R0,#0x2D8]
STR             R0, [R1,#0x2D8]
ADD             R1, R5, #0x2400
ADD             R1, R1, #0x2DC
ADD             R0, R4, #0x2400
LDR             R2, [R1,#4]
ADD             R0, R0, #0x2DC
STR             R2, [R0,#4]
LDR             R2, [R1,#8]
STR             R2, [R0,#8]
LDR             R2, [R1,#0xC]
STR             R2, [R0,#0xC]
LDR             R2, [R1,#0x10]
STR             R2, [R0,#0x10]
LDRB            R2, [R1,#0x14]
STRB            R2, [R0,#0x14]
LDR             R2, [R1,#0x1C]
STR             R2, [R0,#0x1C]
LDRB            R2, [R1,#0x20]
STRB            R2, [R0,#0x20]
LDR             R2, [R1,#0x24]
STR             R2, [R0,#0x24]
LDR             R2, [R1,#0x28]
STR             R2, [R0,#0x28]
LDR             R2, [R1,#0x2C]
STR             R2, [R0,#0x2C]
LDR             R1, [R1,#0x30]
ADD             R2, R5, #0x2400
ADD             R2, R2, #0x314
STR             R1, [R0,#0x30]
LDM             R2, {R2,R3,R12}
ADD             R1, R5, #0x2000
ADD             R1, R1, #0x710
ADD             R0, R4, #0x2000
STM             R6, {R2,R3,R12}
ADD             R2, R5, #0x2000
ADD             R2, R2, #0x720
ADD             R6, R4, #0x2000
LDM             R2, {R2,R3,R12}
ADD             R6, R6, #0x720
ADD             R0, R0, #0x710
STM             R6, {R2,R3,R12}
ADD             R2, R5, #0x2400
ADD             R2, R2, #0x32C
ADD             R6, R4, #0x2400
LDM             R2, {R2,R3,R12}
ADD             R6, R6, #0x32C
STM             R6, {R2,R3,R12}
LDR             R2, [R1,#0x28]
STR             R2, [R0,#0x28]
LDRB            R2, [R1,#0x2C]
STRB            R2, [R0,#0x2C]
LDR             R2, [R1,#0x34]
STR             R2, [R0,#0x34]
LDRB            R2, [R1,#0x38]
STRB            R2, [R0,#0x38]
LDR             R2, [R1,#0x3C]
STR             R2, [R0,#0x3C]
LDR             R2, [R1,#0x40]
STR             R2, [R0,#0x40]
LDR             R2, [R1,#0x44]
STR             R2, [R0,#0x44]
LDR             R2, [R1,#0x48]
STR             R2, [R0,#0x48]
LDRD            R2, R3, [R1,#0x4C]
LDR             R1, [R1,#0x54]
STR             R1, [R0,#0x54]
STRD            R2, R3, [R0,#0x4C]
LDR             R0, =0x2768
ADD             R3, R5, #0x2700
ADD             R3, R3, #0x6D ; 'm'
MOV             R2, R0
LDR             R6, [R0,R5]
ORR             R1, R0, R0,ASR#11
MOV             R0, R1
STR             R6, [R2,R4]
LDRB            R6, [R1,R5]
ORR             R12, R1, R1,ASR#10
ADD             LR, R5, #0x2700
STRB            R6, [R0,R4]
LDRB            R0, [R3]
ADD             LR, LR, #0x6E ; 'n'
ORR             R2, R1, R1,ASR#7
STRB            R0, [R12,R4]
LDRB            R0, [LR]
ADD             R5, R5, #0x2700
ADD             R5, R5, #0x6F ; 'o'
STRB            R0, [R2,R4]
LDRB            R0, [R5]
ORR             R1, R1, R1,ASR#8
STRB            R0, [R1,R4]
MOV             R0, R4
POP             {R4-R8,PC}
