LDRB            R1, [R0,#0x410]
ADD             R0, R0, #0x400
CMP             R1, #1
BEQ             loc_1C4624
VLDR            S0, [R0,#0x18]
VLDR            S1, [R0,#0x14]
LDR             R2, =0x40C90FDB
VADD.F32        S0, S0, S1
VMOV            R1, S0
VSTR            S0, [R0,#0x18]
CMP             R1, R2
VLDRGT          S1, =6.2832
VSUBGT.F32      S0, S0, S1
BLE             locret_1C4620
VSTR            S0, [R0,#0x18]
BX              LR
LDR             R1, =off_6CE118
VLDR            S0, [R0,#4]
LDR             R1, [R1]
ADD             R1, R1, #0x1400
VLDR            S1, [R1,#0x30]
VADD.F32        S0, S0, S1
B               loc_1C461C
