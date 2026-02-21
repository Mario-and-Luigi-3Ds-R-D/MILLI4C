LDR             R0, =off_6D1648
PUSH            {R4,LR}
CMP             R1, #0
VPUSH           {D8}
LDR             R0, [R0]
BEQ             loc_19B658
CMP             R1, #1
BEQ             loc_19B674
CMP             R1, #2
BNE             loc_19B6B0
B               loc_19B694
VLDR            S16, =1.0
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
LDR             R1, [R0]
BIC             R1, R1, #4
B               loc_19B6AC
VLDR            S16, =1.5
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
LDR             R1, [R0]
ORR             R1, R1, #4
STR             R1, [R0]
B               loc_19B6B0
VLDR            S16, =0.5
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
LDR             R1, [R0]
ORR             R1, R1, #4
STR             R1, [R0]
LDR             R1, =unk_6EB568
VMOV.F32        S0, S16
VPOP            {D8}
MOV             R0, R1
POP             {R4,LR}
B               sub_51D000
