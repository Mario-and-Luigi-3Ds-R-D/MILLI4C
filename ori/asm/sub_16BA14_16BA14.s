PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x2600
ADD             R0, R0, #0x86
LDRB            R0, [R0]
CMP             R0, #1
BEQ             loc_16BA98
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_16BAAC
CMP             R0, #4
BEQ             loc_16BAC0
MOV             R0, R4
BL              sub_53EB54
ADD             R7, R4, #0x2400
VLDR            S1, =0.0
VLDR            S0, [R7,#0x2D4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             locret_16BA94
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BEQ             loc_16BAD4
VLDR            S2, [R4,#0x124]
VMUL.F32        S2, S0, S2
VCMPE.F32       S1, S2
VMRS            APSR_nzcv, FPSCR
BLE             locret_16BA94
VLDR            S1, [R4,#0x108]
VLDR            S2, =0.5
VMLA.F32        S1, S0, S2
VSTR            S1, [R4,#0x108]
POP             {R4-R8,PC}
LDR             R0, [R4]
LDR             R1, [R0,#0x414]
MOV             R0, R4
POP             {R4-R8,LR}
BX              R1
LDR             R0, [R4]
LDR             R1, [R0,#0x418]
MOV             R0, R4
POP             {R4-R8,LR}
BX              R1
LDR             R0, [R4]
LDR             R1, [R0,#0x41C]
MOV             R0, R4
POP             {R4-R8,LR}
BX              R1
VLDR            S2, [R4,#0x108]
VCMPE.F32       S0, S1
VADD.F32        S2, S2, S0
VMRS            APSR_nzcv, FPSCR
VSTR            S2, [R4,#0x108]
BCS             loc_16BB1C
VLDR            S4, [R4,#0x118]
VLDR            S3, [R7,#0x2D8]
VCMPE.F32       S4, S3
VMRS            APSR_nzcv, FPSCR
BLT             loc_16BB1C
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
BCS             loc_16BB1C
VLDR            S3, [R4,#0x124]
VCMPE.F32       S3, S1
VMRS            APSR_nzcv, FPSCR
BGE             loc_16BB58
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             locret_16BA94
VLDR            S3, [R4,#0x118]
VLDR            S0, [R7,#0x2D8]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
BHI             locret_16BA94
VCMPE.F32       S2, S0
VMRS            APSR_nzcv, FPSCR
BLE             locret_16BA94
VLDR            S0, [R4,#0x124]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             locret_16BA94
LDR             R8, =off_6D1648
MOV             R5, #0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R6, R5, R5,LSL#2
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x16C00
ADD             R0, R0, #0x38 ; '8'
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_16BBFC
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x16C00
VLDR            S1, [R4,#0x108]
VLDR            S0, [R0,#0x40]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_16BBF0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x16C00
VLDR            S1, [R4,#0x108]
VLDR            S0, [R0,#0x44]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_16BBF0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x16C00
VLDR            S1, [R4,#0x10C]
VLDR            S0, [R0,#0x48]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             locret_16BA94
ADD             R5, R5, #1
CMP             R5, #8
BLT             loc_16BB60
LDR             R0, [R7,#0x2D8]
STR             R0, [R4,#0x108]
POP             {R4-R8,PC}
