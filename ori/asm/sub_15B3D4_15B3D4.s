VLDR            S2, [R0,#0xF8]
VLDR            S1, =0.0
VLDR            S0, =6.2832
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCS             loc_15B400
VADD.F32        S2, S2, S0
VSTR            S2, [R0,#0xF8]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BCC             loc_15B3EC
LDR             R1, =0x40C90FDB
VMOV            R2, S2
CMP             R2, R1
BLE             loc_15B428
VLDR            S1, [R0,#0xF8]
VSUB.F32        S1, S1, S0
VMOV            R2, S1
VSTR            S1, [R0,#0xF8]
CMP             R2, R1
BGT             loc_15B410
LDR             R0, [R0,#0xF8]
LDR             R1, =0xC0B6F025
LDR             R2, =0x166DE05
ADD             R3, R0, R1
CMP             R3, R2
BCS             loc_15B484
LDR             R2, =0xCDBC09
ADD             R1, R1, R0
CMP             R1, R2
MOVCC           R0, #3
BCC             locret_15B488
LDR             R1, =0x4016CBE4
LDR             R2, =unk_6487EE
SUB             R1, R0, R1
CMP             R1, R2
MOVCC           R0, #2
BCC             locret_15B488
LDR             R1, =0xBF84AC2E
LDR             R2, =0x349A0E
ADD             R0, R0, R1
CMP             R0, R2
MOVCC           R0, #1
BCC             locret_15B488
MOV             R0, #0
BX              LR
