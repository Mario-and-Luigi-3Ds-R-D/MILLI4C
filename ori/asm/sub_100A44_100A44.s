PUSH            {R0-R3}
PUSH            {LR}
SUB             SP, SP, #0x34
ADD             R1, SP, #0x48+varg_r2
STR             R0, [SP,#0x48+var_24]
STR             R0, [SP,#0x48+var_1C]
MOVS            R0, #0
MVNS            R0, R0
STR             R1, [SP,#0x48+var_48]
STR             R0, [SP,#0x48+var_20]
MOVS            R0, #0
STR             R0, [SP,#0x48+var_18]
LDR             R0, =(sub_100F10+1 - 0x100A62)
ADD             R0, PC; sub_100F10
STR             R0, [SP,#0x48+var_30]
LDR             R0, =(sub_100F30+1 - 0x100A68)
ADD             R0, PC; sub_100F30
MOV             R2, SP
STR             R0, [SP,#0x48+var_2C]
LDR             R1, [SP,#0x48+varg_r1]
ADD             R0, SP, #0x48+var_24
BL              sub_100EE8
ADD             SP, SP, #0x34 ; '4'
POP             {R3}
ADD             SP, SP, #0x10
BX              R3
