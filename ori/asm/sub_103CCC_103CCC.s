CMP             R1, #0x6E ; 'n'
BEQ             sub_10011C
CMP             R1, #0x70 ; 'p'
BEQ             sub_100390
CMP             R1, #0x66 ; 'f'
BEQ             loc_1201AC
CMP             R1, #0x65 ; 'e'
BEQ             loc_1201AC
CMP             R1, #0x67 ; 'g'
BEQ             loc_1201AC
CMP             R1, #0x61 ; 'a'
BEQ             loc_101480
LDR             R3, [R0]
MOVS            R3, R3,LSR#8
ORRCS           R1, R1, #0x80
CMP             R1, #0x69 ; 'i'
BEQ             sub_1000A8
CMP             R1, #0x64 ; 'd'
BEQ             sub_1000A8
CMP             R1, #0x75 ; 'u'
BEQ             sub_1000A8
CMP             R1, #0x6F ; 'o'
BEQ             sub_100318
CMP             R1, #0x78 ; 'x'
BEQ             sub_39E8D8
CMP             R1, #0xE9
BEQ             sub_100274
CMP             R1, #0xE4
BEQ             sub_100274
CMP             R1, #0xF5
BEQ             sub_100274
CMP             R1, #0xEF
BEQ             sub_39E8D0
CMP             R1, #0xF8
BEQ             sub_39E8C8
LDR             R3, [R0]
MOVS            R3, R3,LSR#7
ORRCS           R1, R1, #0x80
CMP             R1, #0x63 ; 'c'
BEQ             sub_100480
CMP             R1, #0x73 ; 's'
BEQ             sub_39E8C0
CMP             R1, #0xE3
BEQ             sub_1004B8
CMP             R1, #0xF3
BEQ             sub_39E8B8
MOVS            R0, #0
BX              LR
