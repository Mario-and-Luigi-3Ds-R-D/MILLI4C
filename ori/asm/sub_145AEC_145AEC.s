PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, R1
VPUSH           {D8-D10}
MOV             R6, R2
VLDR            S3, [R1,#0x1C]
VLDR            S2, [R1,#4]
VLDR            S1, [R0,#0x18]
VLDR            S0, [R0]
BL              sub_146388
VMOV.F32        S19, S0
VLDR            S3, [R5,#0x18]
VLDR            S2, [R5]
VLDR            S1, [R4,#0x1C]
VLDR            S0, [R4,#4]
BL              sub_146388
VMOV.F32        S20, S0
VLDR            S3, [R5,#0x24]
VLDR            S2, [R5,#0xC]
VLDR            S1, [R4,#0x20]
VLDR            S0, [R4,#8]
BL              sub_146388
VMOV.F32        S17, S0
VLDR            S3, [R5,#0x20]
VLDR            S2, [R5,#8]
VLDR            S1, [R4,#0x24]
VLDR            S0, [R4,#0xC]
BL              sub_146388
VMOV.F32        S18, S0
VLDR            S3, [R5,#0x2C]
VLDR            S2, [R5,#0x14]
VLDR            S1, [R4,#0x28]
VLDR            S0, [R4,#0x10]
BL              sub_146388
VMOV.F32        S16, S0
VLDR            S3, [R5,#0x28]
VLDR            S2, [R5,#0x10]
VLDR            S1, [R4,#0x2C]
VLDR            S0, [R4,#0x14]
BL              sub_146388
VLDR            S6, =2.0
VMOV.F32        S3, S19
VMOV.F32        S4, S0
VMOV.F32        S2, S6
VMOV.F32        S0, S20
LDR             R3, =0xBF800000
VMOV            R0, S3
VLDR            S5, =0.0
MOV             R1, #0
VMOV.F32        S8, S2
CMP             R0, R3
BHI             loc_145BC8
VMOV            R0, S0
CMP             R0, #0x3F800000
BLE             loc_145BD0
MOV             R0, R1
B               loc_145C28
VCMPE.F32       S3, S5
MOV             R0, #0
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S2, S3
MOVCC           R0, #0xFFFFFFFF
BCC             loc_145BF8
VMOV            R2, S3
CMP             R2, #0x3F800000
VMOVLT.F32      S8, S3
VMOVGE.F32      S2, S5
VCMPE.F32       S0, S5
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S2, S0
MOVGT           R0, #1
BGT             loc_145C28
VMOV            R2, S0
CMP             R2, R3
VNEGCC.F32      S8, S0
BCC             loc_145C28
VCMPE.F32       S3, S5
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S2, S5
VMOV.F32        S0, S6
VMOV.F32        S1, S18
VMOV.F32        S3, S0
VMOV            R2, S1
CMP             R2, R3
BHI             loc_145C4C
VMOV            R2, S17
CMP             R2, #0x3F800000
BLE             loc_145C54
MOV             R2, R1
B               loc_145CAC
VCMPE.F32       S1, S5
MOV             R2, #0
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S0, S1
MOVCC           R2, #0xFFFFFFFF
BCC             loc_145C7C
VMOV            R12, S1
CMP             R12, #0x3F800000
VMOVLT.F32      S3, S1
VMOVGE.F32      S0, S5
VCMPE.F32       S17, S5
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S17
MOVGT           R2, #1
BGT             loc_145CAC
VMOV            R12, S17
CMP             R12, R3
VNEGCC.F32      S3, S17
BCC             loc_145CAC
VCMPE.F32       S1, S5
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S5
VMOV.F32        S1, S6
VMOV            R12, S4
CMP             R12, R3
VMOV.F32        S7, S1
BHI             loc_145D24
VMOV            R12, S16
CMP             R12, #0x3F800000
BGT             loc_145D24
VCMPE.F32       S4, S5
MOV             R1, #0
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S1, S4
MOVCC           R1, #0xFFFFFFFF
BCC             loc_145CF4
VMOV            R12, S4
CMP             R12, #0x3F800000
VMOVLT.F32      S7, S4
VMOVGE.F32      S1, S5
VCMPE.F32       S16, S5
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S16
MOVGT           R1, #1
BGT             loc_145D24
VMOV            R12, S16
CMP             R12, R3
VNEGCC.F32      S7, S16
BCC             loc_145D24
VCMPE.F32       S4, S5
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S5
VCMPE.F32       S2, S0
CMP             R0, #0
MOV             R0, #0
MOVGT           R0, #2
MOVLT           R0, #1
VMRS            APSR_nzcv, FPSCR
BCS             loc_145D50
VMOV.F32        S2, S0
CMP             R2, #0
MOVGT           R0, #3
MOVLT           R0, #4
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_145D6C
VMOV.F32        S2, S1
CMP             R1, #0
MOVGT           R0, #5
MOVLT           R0, #6
CMP             R6, #0
VSTRNE          S6, [R6]
VCMPE.F32       S8, S2
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S3, S2
VMRSCS          APSR_nzcv, FPSCR
VCMPECS.F32     S7, S2
VMRSCS          APSR_nzcv, FPSCR
BCC             loc_145D9C
VMOV            R1, S2
CMP             R1, #0x3F800000
BLE             loc_145DA8
VPOP            {D8-D10}
MOV             R0, #0
POP             {R4-R6,PC}
CMP             R6, #0
VSTRNE          S2, [R6]
VPOP            {D8-D10}
POP             {R4-R6,PC}
