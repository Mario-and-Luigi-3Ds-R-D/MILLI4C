PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xFC]
MOV             R5, R1
STR             R1, [R4,#8]
TST             R0, #2
BEQ             loc_15A210
ADR             R2, aMastacheRTop; "mastache_R_top"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x14]
ADR             R2, aMastacheR2; "mastache_R2"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x18]
ADR             R2, aMastacheR; "mastache_R"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x1C]
B               loc_15A24C
ADR             R2, aMastacheLTop; "mastache_L_top"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x14]
ADR             R2, aMastacheL2; "mastache_L2"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x18]
ADR             R2, aMastacheL; "mastache_L"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x1C]
LDR             R0, [R4,#0x14]
ADD             R3, R4, #0xB0
ADD             R5, R4, #0xC0
LDR             R1, [R0,#0xC]
LDR             R2, [R0,#0x1C]
STM             R3, {R1,R2}
LDR             R1, [R4,#0x18]
LDR             R2, [R1,#0xC]
LDR             R3, [R1,#0x1C]
STRD            R2, R3, [R4,#0xB8]
LDR             R2, [R4,#0x1C]
LDR             R3, [R2,#0xC]
LDR             R12, [R2,#0x1C]
STM             R5, {R3,R12}
ADD             R3, R4, #0x20 ; ' '
ADD             R5, R4, #0x70 ; 'p'
VLDM            R0, {S0-S7}
ADD             R0, R0, #0x20 ; ' '
VSTM            R3, {S0-S7}
VLDM            R0, {S0-S3}
ADD             R0, R4, #0x40 ; '@'
VSTM            R0, {S0-S3}
ADD             R0, R4, #0x50 ; 'P'
VLDM            R1, {S0-S7}
VSTM            R0, {S0-S7}
ADD             R0, R1, #0x20 ; ' '
LDM             R0, {R0,R3,R12}
LDR             R1, [R1,#0x2C]
STR             R1, [R4,#0x7C]
STM             R5, {R0,R3,R12}
ADD             R0, R4, #0x80
VLDM            R2, {S0-S7}
VSTM            R0, {S0-S7}
ADD             R0, R2, #0x20 ; ' '
LDR             R2, [R2,#0x2C]
LDM             R0, {R0,R1,R3}
STR             R2, [R4,#0xAC]
ADD             R4, R4, #0xA0
STM             R4, {R0,R1,R3}
POP             {R4-R6,PC}
