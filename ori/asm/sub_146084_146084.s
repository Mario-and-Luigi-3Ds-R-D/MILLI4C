AND             R1, R0, #0xFF0000
CMP             R1, #0x600000
LDREQ           R1, =unk_65B168
UXTH            R0, R0
BEQ             loc_1461C0
BGT             loc_14616C
CMP             R1, #0x410000
LDREQ           R1, =unk_65B150
BEQ             loc_1461C0
BGT             loc_14610C
CMP             R1, #0x100000
LDREQ           R1, =unk_65B144
BEQ             loc_1461C0
BGT             loc_1460E4
CMP             R1, #0x10000
LDREQ           R1, =unk_65B1A4
BEQ             loc_1461C0
CMP             R1, #0x20000
LDREQ           R1, =unk_65B424
BEQ             loc_1461C0
CMP             R1, #0x30000
LDREQ           R1, =unk_665F64
BEQ             loc_1461C0
B               def_146178; jumptable 00146178 default case, cases 12,13
CMP             R1, #0x200000
LDREQ           R1, =unk_672CF4
BEQ             loc_1461C0
CMP             R1, #0x300000
LDREQ           R1, =unk_65B148
BEQ             loc_1461C0
CMP             R1, #0x400000
LDREQ           R1, =unk_65B14C
BEQ             loc_1461C0
B               def_146178; jumptable 00146178 default case, cases 12,13
CMP             R1, #0x450000
LDREQ           R1, =unk_65B158
BEQ             loc_1461C0
BGT             loc_146144
CMP             R1, #0x420000
LDREQ           R1, =unk_65B154
BEQ             loc_1461C0
CMP             R1, #0x430000
LDREQ           R1, =unk_672D14
BEQ             loc_1461C0
CMP             R1, #0x440000
LDREQ           R1, =unk_672D24
BEQ             loc_1461C0
B               def_146178; jumptable 00146178 default case, cases 12,13
CMP             R1, #0x460000
LDREQ           R1, =unk_65B15C
BEQ             loc_1461C0
CMP             R1, #0x470000
LDREQ           R1, =unk_65B160
BEQ             loc_1461C0
CMP             R1, #0x480000
LDREQ           R1, =unk_65B164
BEQ             loc_1461C0
B               def_146178; jumptable 00146178 default case, cases 12,13
MOV             R1, R1,LSR#16
SUB             R1, R1, #0x61 ; 'a'
CMP             R1, #0x10; switch 16 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_146178; jumptable 00146178 default case, cases 12,13
DCD loc_1461C8; jump table for switch statement
ADD             R0, R1, R0,LSL#4
BX              LR
LDR             R1, =unk_65B16C; jumptable 00146178 case 0
B               loc_1461C0
LDR             R1, =unk_65B170; jumptable 00146178 case 1
B               loc_1461C0
LDR             R1, =unk_65B174; jumptable 00146178 case 2
B               loc_1461C0
LDR             R1, =unk_65B178; jumptable 00146178 case 3
B               loc_1461C0
LDR             R1, =unk_65B17C; jumptable 00146178 case 4
B               loc_1461C0
LDR             R1, =unk_65B180; jumptable 00146178 case 5
B               loc_1461C0
LDR             R1, =unk_65B184; jumptable 00146178 case 6
B               loc_1461C0
LDR             R1, =unk_65B188; jumptable 00146178 case 7
B               loc_1461C0
LDR             R1, =unk_65B18C; jumptable 00146178 case 8
B               loc_1461C0
LDR             R1, =unk_65B190; jumptable 00146178 case 9
B               loc_1461C0
LDR             R1, =unk_65B194; jumptable 00146178 case 10
B               loc_1461C0
LDR             R1, =unk_65B198; jumptable 00146178 case 11
B               loc_1461C0
LDR             R1, =unk_65B19C; jumptable 00146178 case 14
B               loc_1461C0
LDR             R1, =unk_65B1A0; jumptable 00146178 case 15
B               loc_1461C0
MOV             R0, #0; jumptable 00146178 default case, cases 12,13
BX              LR
