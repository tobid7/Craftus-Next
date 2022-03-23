	.arch armv6k
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Player.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Player_Init,"ax",%progbits
	.align	2
	.global	Player_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_Init, %function
Player_Init:
.LVL0:
.LFB144:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/entity/Player.c"
	.loc 1 7 48 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 2 view .LVU1
	.loc 1 8 21 is_stmt 0 view .LVU2
	mov	r3, #0
	.loc 1 7 48 view .LVU3
	push	{r4, r5, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 14 19 view .LVU4
	mov	r2, #0
	.loc 1 18 20 view .LVU5
	mov	ip, #1
.LBB106:
	.loc 1 52 26 view .LVU6
	mov	r4, #12
.LBE106:
	.loc 1 24 17 view .LVU7
	vldr.32	s15, .L8
	.loc 1 37 30 view .LVU8
	mov	r9, #9
	.loc 1 29 23 view .LVU9
	mov	r8, #65536
	.loc 1 8 21 view .LVU10
	str	r3, [r0]	@ float
	str	r3, [r0, #4]	@ float
	str	r3, [r0, #8]	@ float
	.loc 1 10 2 is_stmt 1 view .LVU11
	.loc 1 10 18 is_stmt 0 view .LVU12
	str	r3, [r0, #20]	@ float
	.loc 1 11 2 is_stmt 1 view .LVU13
	.loc 1 11 16 is_stmt 0 view .LVU14
	str	r3, [r0, #12]	@ float
	.loc 1 12 2 is_stmt 1 view .LVU15
	.loc 1 12 14 is_stmt 0 view .LVU16
	str	r3, [r0, #16]	@ float
	.loc 1 14 2 is_stmt 1 view .LVU17
	.loc 1 20 17 is_stmt 0 view .LVU18
	str	r3, [r0, #24]	@ float
	.loc 1 21 20 view .LVU19
	str	r3, [r0, #28]	@ float
	.loc 1 24 17 view .LVU20
	str	r3, [r0, #44]	@ float
	str	r3, [r0, #48]	@ float
	.loc 1 32 21 view .LVU21
	str	r3, [r0, #60]	@ float
	str	r3, [r0, #64]	@ float
	str	r3, [r0, #68]	@ float
	.loc 1 33 23 view .LVU22
	str	r3, [r0, #72]	@ float
	.loc 1 35 28 view .LVU23
	str	r3, [r0, #76]	@ float
	.loc 1 16 16 view .LVU24
	str	r1, [r0, #40]
.LBB116:
.LBB107:
.LBB108:
	.loc 1 53 55 view .LVU25
	mov	lr, #13
	mov	r1, r0
.LVL1:
	.loc 1 53 55 view .LVU26
.LBE108:
.LBE107:
	.loc 1 52 26 view .LVU27
	mov	r3, r0
	.loc 1 42 26 view .LVU28
	ldr	r7, .L8+4
	.loc 1 44 26 view .LVU29
	ldr	r6, .L8+8
	.loc 1 45 26 view .LVU30
	ldr	r5, .L8+12
	.loc 1 42 26 view .LVU31
	str	r7, [r0, #196]
	.loc 1 44 26 view .LVU32
	str	r6, [r0, #200]
	.loc 1 48 26 view .LVU33
	ldr	r7, .L8+16
	ldr	r6, .L8+20
	.loc 1 45 26 view .LVU34
	str	r5, [r0, #204]
.LBE116:
	.loc 1 24 17 view .LVU35
	vstr.32	s15, [r0, #52]
.LBB117:
	.loc 1 49 26 view .LVU36
	ldr	r5, .L8+24
.LBE117:
	.loc 1 37 30 view .LVU37
	str	r9, [r0, #132]
	.loc 1 29 23 view .LVU38
	str	r8, [r0, #192]
	.loc 1 14 19 view .LVU39
	strb	r2, [r0, #32]
	.loc 1 15 2 is_stmt 1 view .LVU40
	.loc 1 16 2 view .LVU41
	.loc 1 17 2 view .LVU42
	.loc 1 17 18 is_stmt 0 view .LVU43
	str	r2, [r0, #124]
	.loc 1 18 2 is_stmt 1 view .LVU44
	.loc 1 18 20 is_stmt 0 view .LVU45
	str	ip, [r0, #100]
	.loc 1 20 2 is_stmt 1 view .LVU46
	.loc 1 21 2 view .LVU47
	.loc 1 22 2 view .LVU48
	.loc 1 22 21 is_stmt 0 view .LVU49
	str	r2, [r0, #80]
	.loc 1 24 2 is_stmt 1 view .LVU50
	.loc 1 26 2 view .LVU51
	.loc 1 27 2 view .LVU52
	.loc 1 15 20 is_stmt 0 view .LVU53
	strh	r2, [r0, #34]	@ movhi
	.loc 1 26 20 view .LVU54
	strb	r2, [r0, #36]
	.loc 1 29 2 is_stmt 1 view .LVU55
	.loc 1 30 2 view .LVU56
	.loc 1 32 2 view .LVU57
	.loc 1 33 2 view .LVU58
	.loc 1 35 2 view .LVU59
	.loc 1 37 2 view .LVU60
	.loc 1 38 2 view .LVU61
	.loc 1 38 29 is_stmt 0 view .LVU62
	str	r2, [r0, #136]
	.loc 1 39 2 is_stmt 1 view .LVU63
	.loc 1 39 24 is_stmt 0 view .LVU64
	str	ip, [r0, #140]
.LBB118:
	.loc 1 41 3 is_stmt 1 view .LVU65
.LVL2:
	.loc 1 42 3 view .LVU66
	.loc 1 43 3 view .LVU67
	.loc 1 44 3 view .LVU68
	.loc 1 45 3 view .LVU69
	.loc 1 46 3 view .LVU70
	.loc 1 47 3 view .LVU71
	.loc 1 48 3 view .LVU72
	.loc 1 49 3 view .LVU73
	.loc 1 50 3 view .LVU74
	.loc 1 51 3 view .LVU75
	.loc 1 52 3 view .LVU76
	.loc 1 48 26 is_stmt 0 view .LVU77
	strd	r6, [r0, #208]
	.loc 1 52 26 view .LVU78
	strh	r4, [r0, #224]	@ movhi
	.loc 1 50 26 view .LVU79
	ldr	r4, .L8+28
	.loc 1 49 26 view .LVU80
	str	r5, [r0, #216]
	.loc 1 52 26 view .LVU81
	strb	ip, [r0, #226]
	.loc 1 53 3 is_stmt 1 view .LVU82
.LBB111:
	.loc 1 53 8 view .LVU83
.LVL3:
	.loc 1 53 21 view .LVU84
.LBE111:
	.loc 1 50 26 is_stmt 0 view .LVU85
	str	r4, [r0, #220]
.LVL4:
.L2:
.LBB112:
.LBB109:
	.loc 1 53 32 is_stmt 1 discriminator 3 view .LVU86
	.loc 1 53 55 is_stmt 0 discriminator 3 view .LVU87
	strb	r2, [r3, #228]
.LBE109:
	.loc 1 53 28 discriminator 3 view .LVU88
	add	r2, r2, #1
.LVL5:
	.loc 1 53 21 discriminator 3 view .LVU89
	cmp	r2, #16
.LBB110:
	.loc 1 53 55 discriminator 3 view .LVU90
	strb	lr, [r3, #227]
	strb	ip, [r3, #229]
.LBE110:
	.loc 1 53 28 is_stmt 1 discriminator 3 view .LVU91
.LVL6:
	.loc 1 53 21 discriminator 3 view .LVU92
	add	r3, r3, #3
	bne	.L2
.LBE112:
	.loc 1 54 3 view .LVU93
.LVL7:
	.loc 1 55 3 view .LVU94
	.loc 1 56 3 view .LVU95
	.loc 1 57 3 view .LVU96
	.loc 1 58 3 view .LVU97
	.loc 1 59 3 view .LVU98
	.loc 1 60 3 view .LVU99
	.loc 1 61 3 view .LVU100
	.loc 1 62 3 view .LVU101
	.loc 1 63 3 view .LVU102
	.loc 1 64 3 view .LVU103
	.loc 1 65 3 view .LVU104
	.loc 1 66 3 view .LVU105
	.loc 1 67 3 view .LVU106
	.loc 1 68 3 view .LVU107
	.loc 1 69 3 view .LVU108
	.loc 1 70 3 view .LVU109
	.loc 1 71 3 view .LVU110
	.loc 1 72 3 view .LVU111
	.loc 1 73 3 view .LVU112
	.loc 1 74 3 view .LVU113
	.loc 1 75 3 view .LVU114
	.loc 1 54 26 is_stmt 0 view .LVU115
	mov	r2, #14
.LVL8:
	.loc 1 54 26 view .LVU116
	ldr	r3, .L8+32
	.loc 1 74 26 view .LVU117
	mov	r7, #256
	.loc 1 54 26 view .LVU118
	str	r3, [r0, #276]
	.loc 1 75 26 view .LVU119
	mov	r5, #34
	mov	r3, #0
	.loc 1 54 26 view .LVU120
	strb	r2, [r0, #275]
	.loc 1 58 26 view .LVU121
	ldr	r2, .L8+36
	.loc 1 55 26 view .LVU122
	ldr	ip, .L8+40
	.loc 1 58 26 view .LVU123
	str	r2, [r0, #288]
	.loc 1 59 26 view .LVU124
	ldr	r2, .L8+44
	.loc 1 55 26 view .LVU125
	str	ip, [r0, #280]
	.loc 1 59 26 view .LVU126
	str	r2, [r0, #292]
	.loc 1 61 26 view .LVU127
	ldr	r2, .L8+48
	.loc 1 57 26 view .LVU128
	add	ip, ip, #61696
	.loc 1 61 26 view .LVU129
	str	r2, [r0, #296]
	.loc 1 62 26 view .LVU130
	ldr	r2, .L8+52
	.loc 1 57 26 view .LVU131
	add	ip, ip, #268435471
	.loc 1 62 26 view .LVU132
	str	r2, [r0, #300]
	.loc 1 63 26 view .LVU133
	ldr	r2, .L8+56
	.loc 1 57 26 view .LVU134
	str	ip, [r0, #284]
	.loc 1 63 26 view .LVU135
	str	r2, [r0, #304]
	.loc 1 65 26 view .LVU136
	ldr	r2, .L8+60
	.loc 1 75 26 view .LVU137
	ldr	r4, .L8+64
	.loc 1 65 26 view .LVU138
	str	r2, [r0, #308]
	.loc 1 66 26 view .LVU139
	ldr	r2, .L8+68
	.loc 1 77 26 view .LVU140
	ldr	lr, .L8+72
	.loc 1 66 26 view .LVU141
	str	r2, [r0, #312]
	.loc 1 67 26 view .LVU142
	ldr	r2, .L8+76
	.loc 1 78 26 view .LVU143
	ldr	ip, .L8+80
	.loc 1 67 26 view .LVU144
	str	r2, [r0, #316]
	.loc 1 69 26 view .LVU145
	ldr	r2, .L8+84
	.loc 1 74 26 view .LVU146
	add	r6, r0, #336
	.loc 1 69 26 view .LVU147
	str	r2, [r0, #320]
	.loc 1 70 26 view .LVU148
	ldr	r2, .L8+88
	str	r2, [r0, #324]
	.loc 1 71 26 view .LVU149
	ldr	r2, .L8+92
	str	r2, [r0, #328]
	.loc 1 73 26 view .LVU150
	ldr	r2, .L8+96
	str	r2, [r0, #332]
	.loc 1 79 26 view .LVU151
	ldr	r2, .L8+100
	.loc 1 74 26 view .LVU152
	strh	r7, [r6]	@ movhi
	.loc 1 79 26 view .LVU153
	str	r2, [r0, #352]
	.loc 1 75 26 view .LVU154
	strb	r5, [r0, #338]
	.loc 1 76 3 is_stmt 1 view .LVU155
.LVL9:
	.loc 1 77 3 view .LVU156
	.loc 1 78 3 view .LVU157
	.loc 1 79 3 view .LVU158
	.loc 1 80 3 view .LVU159
	.loc 1 82 3 view .LVU160
.LBB113:
	.loc 1 82 8 view .LVU161
	.loc 1 82 21 view .LVU162
.LBE113:
	.loc 1 75 26 is_stmt 0 view .LVU163
	str	r4, [r0, #340]
	.loc 1 77 26 view .LVU164
	str	lr, [r0, #344]
	.loc 1 75 26 view .LVU165
	strb	r3, [r0, #339]
	.loc 1 78 26 view .LVU166
	str	ip, [r0, #348]
	add	r2, r0, #27
.LVL10:
.L3:
.LBB115:
.LBB114:
	.loc 1 82 31 is_stmt 1 discriminator 3 view .LVU167
	.loc 1 82 57 is_stmt 0 discriminator 3 view .LVU168
	strb	r3, [r1, #144]
	strb	r3, [r1, #145]
	strb	r3, [r1, #146]
.LBE114:
	.loc 1 82 27 is_stmt 1 discriminator 3 view .LVU169
	.loc 1 82 21 discriminator 3 view .LVU170
	add	r1, r1, #3
	cmp	r1, r2
	bne	.L3
.LBE115:
.LBE118:
	.loc 1 84 2 view .LVU171
	.loc 1 86 2 view .LVU172
	.loc 1 86 26 is_stmt 0 view .LVU173
	mov	r3, #1
	strb	r3, [r0, #56]
	.loc 1 87 1 view .LVU174
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L9:
	.align	2
.L8:
	.word	-1082130432
	.word	16777729
	.word	67174403
	.word	327936
	.word	151060488
	.word	16778753
	.word	655616
	.word	16780033
	.word	459008
	.word	1179904
	.word	16781057
	.word	16782081
	.word	352387092
	.word	1442048
	.word	16783105
	.word	419495960
	.word	16784897
	.word	1769728
	.word	536936485
	.word	16783873
	.word	2490624
	.word	469827620
	.word	2294016
	.word	16784641
	.word	520159265
	.word	16777217
	.cfi_endproc
.LFE144:
	.size	Player_Init, .-Player_Init
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC38:
	.ascii	"Player died\000"
	.align	2
.LC39:
	.ascii	"Died by %s\000"
	.align	2
.LC40:
	.ascii	"lol ur world is gone\000"
	.section	.text.Player_Respawn,"ax",%progbits
	.align	2
	.global	Player_Respawn
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_Respawn, %function
Player_Respawn:
.LVL11:
.LFB145:
	.loc 1 90 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 91 6 view .LVU176
	.loc 1 91 9 is_stmt 0 view .LVU177
	ldr	r3, [r0, #100]
	cmp	r3, #4
	beq	.L11
	.loc 1 110 25 view .LVU178
	mov	r3, #1
	.loc 1 90 1 view .LVU179
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 110 25 view .LVU180
	str	r3, [r0, #120]
	mov	r7, r1
	.loc 1 92 5 is_stmt 1 view .LVU181
	.loc 1 110 5 view .LVU182
.LBB119:
	.loc 1 111 6 view .LVU183
	.loc 1 111 13 is_stmt 0 view .LVU184
	ldrb	r1, [r1]	@ zero_extendqisi2
.LVL12:
	.loc 1 111 13 view .LVU185
	mov	r4, r0
	.loc 1 111 9 view .LVU186
	cmp	r1, #0
	beq	.L23
.LBB120:
	.loc 1 114 7 is_stmt 1 view .LVU187
	ldr	r0, .L24
.LVL13:
	.loc 1 114 7 is_stmt 0 view .LVU188
	bl	DebugUI_Log
.LVL14:
.L13:
.LBE120:
	.loc 1 116 6 is_stmt 1 view .LVU189
	.loc 1 116 31 is_stmt 0 view .LVU190
	vldr.32	s15, [r4, #108]
	.loc 1 118 10 view .LVU191
	mov	r5, #1
	.loc 1 116 24 view .LVU192
	vstr.32	s15, [r4]
	.loc 1 117 6 is_stmt 1 view .LVU193
	.loc 1 117 13 is_stmt 0 view .LVU194
	ldr	r6, [r4, #40]
.LVL15:
	.loc 1 118 6 is_stmt 1 view .LVU195
	.loc 1 119 6 view .LVU196
	.loc 1 119 12 is_stmt 0 view .LVU197
	b	.L14
.LVL16:
.L15:
	.loc 1 119 41 view .LVU198
	vldr.32	s15, [r4, #108]
	.loc 1 120 13 view .LVU199
	add	r5, r5, #1
.LVL17:
.L14:
	.loc 1 119 75 is_stmt 1 view .LVU200
	.loc 1 119 13 is_stmt 0 view .LVU201
	vldr.32	s14, [r4, #116]
	vcvt.s32.f32	s15, s15
	vmov	r1, s15	@ int
	vcvt.s32.f32	s15, s14
	mov	r2, r5
	mov	r0, r6
	vmov	r3, s15	@ int
	bl	World_GetBlock
.LVL18:
	.loc 1 120 7 is_stmt 1 view .LVU202
	.loc 1 119 75 is_stmt 0 view .LVU203
	cmp	r0, #0
	bne	.L15
	.loc 1 122 5 is_stmt 1 view .LVU204
.LVL19:
	.loc 1 123 6 view .LVU205
	.loc 1 123 24 is_stmt 0 view .LVU206
	ldrb	r3, [r6, #24]	@ zero_extendqisi2
.LBE119:
	.loc 1 127 15 view .LVU207
	mov	r2, #20
.LBB122:
	.loc 1 123 24 view .LVU208
	cmp	r3, #1
	.loc 1 123 47 view .LVU209
	addne	r5, r5, #1
.LVL20:
	.loc 1 123 24 view .LVU210
	vmov	s15, r5	@ int
	.loc 1 125 57 view .LVU211
	mov	r3, #0
	.loc 1 123 24 view .LVU212
	vcvt.f32.s32	s15, s15
	.loc 1 124 24 view .LVU213
	ldr	r1, [r4, #116]	@ float
	.loc 1 123 24 view .LVU214
	vstr.32	s15, [r4, #4]
.LVL21:
	.loc 1 124 6 is_stmt 1 view .LVU215
	.loc 1 124 24 is_stmt 0 view .LVU216
	str	r1, [r4, #8]	@ float
	.loc 1 125 41 is_stmt 1 view .LVU217
	.loc 1 125 57 is_stmt 0 view .LVU218
	str	r3, [r4, #124]
.LBE122:
	.loc 1 127 5 is_stmt 1 view .LVU219
	.loc 1 127 15 is_stmt 0 view .LVU220
	str	r2, [r4, #84]
	.loc 1 128 5 is_stmt 1 view .LVU221
	.loc 1 128 19 is_stmt 0 view .LVU222
	str	r2, [r4, #96]
	.loc 1 129 5 is_stmt 1 view .LVU223
	.loc 1 129 15 is_stmt 0 view .LVU224
	strb	r3, [r7]
	.loc 1 136 1 view .LVU225
	pop	{r4, r5, r6, r7, r8, pc}
.LVL22:
.L23:
.LBB123:
.LBB121:
	.loc 1 112 7 is_stmt 1 view .LVU226
	ldr	r0, .L24+4
.LVL23:
	.loc 1 112 7 is_stmt 0 view .LVU227
	bl	DebugUI_Log
.LVL24:
.LBE121:
	b	.L13
.LVL25:
.L11:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 14
	.loc 1 112 7 view .LVU228
.LBE123:
.LBB124:
	.loc 1 131 5 is_stmt 1 view .LVU229
	ldr	r0, .L24+8
.LVL26:
	.loc 1 131 5 is_stmt 0 view .LVU230
	b	DebugUI_Log
.LVL27:
.L25:
	.loc 1 131 5 view .LVU231
	.align	2
.L24:
	.word	.LC39
	.word	.LC38
	.word	.LC40
.LBE124:
	.cfi_endproc
.LFE145:
	.size	Player_Respawn, .-Player_Respawn
	.section	.rodata.str1.4
	.align	2
.LC41:
	.ascii	"ur burning lol\000"
	.align	2
.LC42:
	.ascii	"Fire\000"
	.section	.text.Player_Update,"ax",%progbits
	.align	2
	.global	Player_Update
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_Update, %function
Player_Update:
.LVL28:
.LFB146:
	.loc 1 138 63 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 139 2 view .LVU233
	.loc 1 138 63 is_stmt 0 view .LVU234
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9}
	.cfi_def_cfa_offset 28
	.cfi_offset 80, -28
	.cfi_offset 81, -24
	.cfi_offset 82, -20
	.cfi_offset 83, -16
	.loc 1 139 25 view .LVU235
	vldr.32	s19, [r0, #16]
	.loc 1 138 63 view .LVU236
	mov	r4, r0
	sub	sp, sp, #28
	.cfi_def_cfa_offset 56
	.loc 1 139 25 view .LVU237
	vmov.f32	s0, s19
	.loc 1 138 63 view .LVU238
	mov	r5, r2
	.loc 1 139 25 view .LVU239
	bl	sinf
.LVL29:
	.loc 1 139 45 view .LVU240
	vldr.32	s18, [r4, #12]
	.loc 1 139 25 view .LVU241
	vmov.f32	s16, s0
	.loc 1 139 45 view .LVU242
	vmov.f32	s0, s18
	bl	cosf
.LVL30:
	vmov.f32	s17, s0
	.loc 1 139 17 view .LVU243
	vmov.f32	s0, s18
	bl	sinf
.LVL31:
	vmov.f32	s18, s0
	.loc 1 139 88 view .LVU244
	vmov.f32	s0, s19
	bl	cosf
.LVL32:
	.loc 1 139 17 view .LVU245
	vnmul.f32	s3, s16, s17
	vnmul.f32	s5, s0, s17
	.loc 1 140 24 view .LVU246
	vldr.32	s1, [r4, #4]
	vldr.32	s15, .L61+8
	vldr.32	s2, [r4, #8]
	.loc 1 139 17 view .LVU247
	vstr.32	s18, [r4, #48]
	.loc 1 140 24 view .LVU248
	vmov.f32	s4, s18
	.loc 1 139 17 view .LVU249
	vstr.32	s3, [r4, #44]
	.loc 1 140 24 view .LVU250
	vadd.f32	s1, s1, s15
	.loc 1 139 17 view .LVU251
	vstr.32	s5, [r4, #52]
	.loc 1 140 2 is_stmt 1 view .LVU252
.LVL33:
.LBB125:
.LBI125:
	.file 2 "/home/tobi/Dokumente/Craftus-Next/include/misc/VecMath.h"
	.loc 2 14 15 view .LVU253
	.loc 2 14 51 view .LVU254
	vldr.32	s0, [r4]
.LVL34:
	.loc 2 14 51 is_stmt 0 view .LVU255
.LBE125:
	.loc 1 140 24 view .LVU256
	ldr	r0, [r4, #40]
	add	r1, r4, #172
	bl	Raycast_Cast
.LVL35:
	.loc 1 141 52 view .LVU257
	subs	r3, r0, #0
	.loc 1 140 23 view .LVU258
	strb	r0, [r4, #192]
	.loc 1 141 2 is_stmt 1 view .LVU259
	.loc 1 141 52 is_stmt 0 view .LVU260
	beq	.L27
	.loc 1 141 52 discriminator 1 view .LVU261
	vldr.32	s14, [r4, #184]
	vldr.32	s15, .L61+12
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #1
	movpl	r3, #0
.L27:
	.loc 1 144 23 discriminator 6 view .LVU262
	vldr.32	s0, [r4, #64]
	.loc 1 144 6 discriminator 6 view .LVU263
	vldr.32	s15, .L61+16
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 147 52 discriminator 6 view .LVU264
	vldr.32	s17, [r4]
	.loc 1 147 71 discriminator 6 view .LVU265
	vldr.32	s16, [r4, #4]
	.loc 1 147 92 discriminator 6 view .LVU266
	vldr.32	s18, [r4, #8]
	.loc 1 147 7 discriminator 6 view .LVU267
	ldr	r0, [r4, #40]
	.loc 1 141 29 discriminator 6 view .LVU268
	strb	r3, [r4, #193]
	.loc 1 144 3 is_stmt 1 discriminator 6 view .LVU269
	.loc 1 144 6 is_stmt 0 discriminator 6 view .LVU270
	bls	.L56
.L29:
	.loc 1 153 3 is_stmt 1 view .LVU271
	.loc 1 153 7 is_stmt 0 view .LVU272
	vcvt.s32.f32	s15, s18
	vmov	r3, s15	@ int
	vcvt.s32.f32	s15, s16
	vmov	r2, s15	@ int
	vcvt.s32.f32	s15, s17
	vmov	r1, s15	@ int
	bl	World_GetBlock
.LVL36:
	.loc 1 153 6 view .LVU273
	cmp	r0, #27
	beq	.L57
.L31:
	.loc 1 160 4 is_stmt 1 view .LVU274
	adr	r1, .L61
	ldrd	r0, [r1]
	bl	svcSleepThread
.LVL37:
	.loc 1 161 4 view .LVU275
	.loc 1 161 43 is_stmt 0 view .LVU276
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	.loc 1 162 6 view .LVU277
	cmp	r3, #400
	.loc 1 161 23 view .LVU278
	str	r3, [r4, #80]
	.loc 1 162 4 is_stmt 1 view .LVU279
	.loc 1 162 39 is_stmt 0 view .LVU280
	ldr	r3, [r4, #96]
	.loc 1 162 6 view .LVU281
	beq	.L32
	.loc 1 166 4 is_stmt 1 view .LVU282
	.loc 1 166 7 is_stmt 0 view .LVU283
	cmp	r3, #0
	beq	.L34
.L55:
	.loc 1 169 23 view .LVU284
	ldr	r3, [r4, #84]
	.loc 1 175 3 is_stmt 1 view .LVU285
	.loc 1 175 6 is_stmt 0 view .LVU286
	cmp	r3, #0
	ble	.L58
.L37:
	.loc 1 180 17 is_stmt 1 view .LVU287
	.loc 1 180 20 is_stmt 0 view .LVU288
	vldr.32	s15, .L61+20
	vldr.32	s14, [r4, #4]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L59
	.loc 1 184 1 view .LVU289
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 12
	pop	{r4, r5, pc}
.LVL38:
.L32:
	.cfi_restore_state
	.loc 1 162 31 discriminator 1 view .LVU290
	cmp	r3, #0
	beq	.L34
	.loc 1 163 5 is_stmt 1 view .LVU291
	.loc 1 164 24 is_stmt 0 view .LVU292
	mov	r2, #0
	.loc 1 163 34 view .LVU293
	sub	r3, r3, #1
	.loc 1 166 7 view .LVU294
	cmp	r3, #0
	.loc 1 163 19 view .LVU295
	str	r3, [r4, #96]
	.loc 1 164 5 is_stmt 1 view .LVU296
	.loc 1 164 24 is_stmt 0 view .LVU297
	str	r2, [r4, #80]
	.loc 1 166 4 is_stmt 1 view .LVU298
	.loc 1 166 7 is_stmt 0 view .LVU299
	bne	.L55
.L34:
	.loc 1 167 5 is_stmt 1 view .LVU300
	adr	r1, .L61
	ldrd	r0, [r1]
	bl	svcSleepThread
.LVL39:
	.loc 1 168 5 view .LVU301
	.loc 1 168 7 is_stmt 0 view .LVU302
	ldr	r3, [r4, #80]
	cmp	r3, #400
	bne	.L55
	.loc 1 169 6 is_stmt 1 view .LVU303
	.loc 1 170 25 is_stmt 0 view .LVU304
	mov	r2, #0
	.loc 1 169 27 view .LVU305
	ldr	r3, [r4, #84]
	sub	r3, r3, #1
	.loc 1 175 6 view .LVU306
	cmp	r3, #0
	.loc 1 170 25 view .LVU307
	strd	r2, [r4, #80]
	.loc 1 175 3 is_stmt 1 view .LVU308
	.loc 1 175 6 is_stmt 0 view .LVU309
	bgt	.L37
.L58:
	.loc 1 176 4 is_stmt 1 view .LVU310
	mov	r1, r5
	mov	r0, r4
	bl	Player_Respawn
.LVL40:
	b	.L37
.L56:
	.loc 1 145 4 view .LVU311
	.loc 1 146 4 view .LVU312
	.loc 1 146 17 is_stmt 0 view .LVU313
	vcvt.f64.f32	d0, s0
	str	r0, [sp, #4]
	bl	round
.LVL41:
	.loc 1 147 73 view .LVU314
	vldr.32	s15, .L61+24
	.loc 1 147 7 view .LVU315
	vcvt.s32.f32	s14, s18
	.loc 1 147 73 view .LVU316
	vsub.f32	s16, s16, s15
	.loc 1 147 7 view .LVU317
	vmov	r3, s14	@ int
	.loc 1 146 17 view .LVU318
	vcvt.f32.f64	s0, d0
	.loc 1 147 7 view .LVU319
	vcvt.s32.f32	s14, s17
	vcvt.s32.f32	s15, s16
	vmov	r1, s14	@ int
	.loc 1 146 17 view .LVU320
	vstr.32	s0, [r4, #104]
	.loc 1 147 4 is_stmt 1 view .LVU321
	.loc 1 147 7 is_stmt 0 view .LVU322
	vmov	r2, s15	@ int
	ldr	r0, [sp, #4]
	bl	World_GetBlock
.LVL42:
	.loc 1 147 6 view .LVU323
	cmp	r0, #0
	beq	.L60
	.loc 1 148 5 is_stmt 1 view .LVU324
	.loc 1 148 26 is_stmt 0 view .LVU325
	vldr.32	s15, [r4, #84]	@ int
	vldr.32	s14, [r4, #104]
	vcvt.f32.s32	s15, s15
	vadd.f32	s15, s15, s14
	.loc 1 149 17 view .LVU326
	mov	r3, #0
	.loc 1 148 15 view .LVU327
	vcvt.s32.f32	s15, s15
	vldr.32	s16, [r4, #4]
	vldr.32	s18, [r4, #8]
	vldr.32	s17, [r4]
	vstr.32	s15, [r4, #84]	@ int
	.loc 1 149 5 is_stmt 1 view .LVU328
	ldr	r0, [r4, #40]
	.loc 1 149 17 is_stmt 0 view .LVU329
	str	r3, [r4, #104]	@ float
	b	.L29
.L59:
	.loc 1 181 4 is_stmt 1 view .LVU330
	mov	r1, r5
	mov	r0, r4
	.loc 1 184 1 is_stmt 0 view .LVU331
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 28
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 12
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL43:
	.loc 1 181 4 view .LVU332
	b	Player_Respawn
.LVL44:
.L57:
	.cfi_restore_state
.LBB126:
	.loc 1 154 4 is_stmt 1 view .LVU333
	ldr	r0, .L61+28
	bl	DebugUI_Log
.LVL45:
	.loc 1 155 4 view .LVU334
	mov	r1, #10
	ldr	r0, .L61+32
	bl	OvertimeDamage
.LVL46:
	b	.L31
.L60:
	.loc 1 155 4 is_stmt 0 view .LVU335
	vldr.32	s16, [r4, #4]
	vldr.32	s18, [r4, #8]
	vldr.32	s17, [r4]
	ldr	r0, [r4, #40]
	b	.L29
.L62:
	.align	3
.L61:
	.word	10000000
	.word	0
	.word	1070805811
	.word	1110147072
	.word	-1052770304
	.word	-1041235968
	.word	1065353216
	.word	.LC41
	.word	.LC42
.LBE126:
	.cfi_endproc
.LFE146:
	.size	Player_Update, .-Player_Update
	.section	.text.Player_CanMove,"ax",%progbits
	.align	2
	.global	Player_CanMove
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_CanMove, %function
Player_CanMove:
.LVL47:
.LFB147:
	.loc 1 186 48 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LBB127:
.LBB128:
.LBB129:
.LBB130:
.LBB131:
.LBB132:
	.file 3 "/home/tobi/Dokumente/Craftus-Next/include/misc/NumberUtils.h"
	.loc 3 25 47 is_stmt 0 view .LVU337
	vcvt.s32.f32	s14, s0
.LBE132:
.LBE131:
.LBB139:
.LBB140:
	vcvt.s32.f32	s15, s2
.LBE140:
.LBE139:
.LBB147:
.LBB133:
	.loc 3 25 58 view .LVU338
	vcvt.f32.s32	s10, s14
.LBE133:
.LBE147:
.LBB148:
.LBB149:
	.loc 3 25 47 view .LVU339
	vcvt.s32.f32	s13, s1
.LBE149:
.LBE148:
.LBB156:
.LBB134:
	.loc 3 25 58 view .LVU340
	vcmpe.f32	s0, s10
.LBE134:
.LBE156:
.LBB157:
.LBB141:
	vcvt.f32.s32	s11, s15
.LBE141:
.LBE157:
.LBB158:
.LBB135:
	vmrs	APSR_nzcv, FPSCR
.LBE135:
.LBE158:
.LBB159:
.LBB150:
	vcvt.f32.s32	s12, s13
.LBE150:
.LBE159:
.LBB160:
.LBB142:
	vcmpe.f32	s2, s11
.LBE142:
.LBE160:
.LBB161:
.LBB136:
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU341
	vmov	r2, s14	@ int
.LBE136:
.LBE161:
.LBB162:
.LBB143:
	.loc 3 25 58 view .LVU342
	vmrs	APSR_nzcv, FPSCR
.LBE143:
.LBE162:
.LBB163:
.LBB151:
	vcmpe.f32	s12, s1
.LBE151:
.LBE163:
.LBE130:
.LBE129:
.LBE128:
.LBE127:
	.loc 1 186 48 view .LVU343
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
.LBB196:
.LBB191:
.LBB186:
.LBB181:
.LBB164:
.LBB137:
	.loc 3 25 56 view .LVU344
	sub	r8, r2, r3
.LBE137:
.LBE164:
.LBB165:
.LBB144:
	.loc 3 25 58 view .LVU345
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU346
	vmov	r2, s15	@ int
.LBE144:
.LBE165:
.LBB166:
.LBB152:
	.loc 3 25 58 view .LVU347
	vmrs	APSR_nzcv, FPSCR
.LBE152:
.LBE166:
.LBE181:
.LBE186:
.LBE191:
.LBE196:
	.loc 1 186 48 view .LVU348
	vpush.64	{d8, d9, d10, d11}
	.cfi_def_cfa_offset 68
	.cfi_offset 80, -68
	.cfi_offset 81, -64
	.cfi_offset 82, -60
	.cfi_offset 83, -56
	.cfi_offset 84, -52
	.cfi_offset 85, -48
	.cfi_offset 86, -44
	.cfi_offset 87, -40
.LBB197:
.LBB192:
.LBB187:
.LBB182:
.LBB167:
.LBB145:
	.loc 3 25 56 view .LVU349
	sub	r7, r2, r3
.LBE145:
.LBE167:
.LBB168:
.LBB153:
	.loc 3 25 58 view .LVU350
	movgt	r3, #1
	movle	r3, #0
	.loc 3 25 56 view .LVU351
	vmov	r2, s13	@ int
	sub	fp, r8, #1
	sub	r3, r2, r3
	add	r8, r8, #2
.LBE153:
.LBE168:
.LBE182:
.LBE187:
.LBE192:
.LBE197:
	.loc 1 186 48 view .LVU352
	sub	sp, sp, #20
	.cfi_def_cfa_offset 88
.LBB198:
.LBB193:
.LBB188:
.LBB183:
.LBB169:
.LBB154:
	.loc 3 25 56 view .LVU353
	str	r3, [sp]
	add	r10, r3, #3
	mov	r3, r8
.LBE154:
.LBE169:
	.loc 1 195 10 view .LVU354
	vldr.32	s20, .L93
	mov	r8, fp
.LBB170:
.LBB171:
	.loc 3 33 19 view .LVU355
	vldr.32	s19, .L93+4
	.loc 3 33 30 view .LVU356
	vldr.32	s21, .L93+8
	.loc 3 33 66 view .LVU357
	vldr.32	s22, .L93+12
.LBE171:
.LBE170:
.LBE183:
.LBE188:
.LBE193:
.LBE198:
	.loc 1 186 48 view .LVU358
	vmov.f32	s16, s0
.LVL48:
	.loc 1 186 48 view .LVU359
	vmov.f32	s18, s2
	vmov.f32	s17, s1
.LVL49:
	.loc 1 187 2 is_stmt 1 view .LVU360
.LBB199:
	.loc 1 187 7 view .LVU361
	.loc 1 187 21 view .LVU362
.LBE199:
	.loc 1 186 48 is_stmt 0 view .LVU363
	mov	r6, r0
	mov	fp, r3
	sub	r9, r7, #1
	add	r7, r7, #2
.LVL50:
.L64:
.LBB200:
.LBB194:
	.loc 1 188 21 is_stmt 1 view .LVU364
	ldr	r5, [sp]
.LVL51:
.L76:
.LBB189:
	.loc 1 189 23 view .LVU365
	mov	r4, r9
.LVL52:
.L66:
.LBB184:
	.loc 1 190 5 view .LVU366
.LBB175:
.LBI131:
	.loc 3 25 19 view .LVU367
.LBB138:
	.loc 3 25 40 view .LVU368
	.loc 3 25 40 is_stmt 0 view .LVU369
.LBE138:
.LBE175:
	.loc 1 191 5 is_stmt 1 view .LVU370
.LBB176:
.LBI148:
	.loc 3 25 19 view .LVU371
.LBB155:
	.loc 3 25 40 view .LVU372
	.loc 3 25 40 is_stmt 0 view .LVU373
.LBE155:
.LBE176:
	.loc 1 192 5 is_stmt 1 view .LVU374
.LBB177:
.LBI139:
	.loc 3 25 19 view .LVU375
.LBB146:
	.loc 3 25 40 view .LVU376
	.loc 3 25 40 is_stmt 0 view .LVU377
.LBE146:
.LBE177:
	.loc 1 193 5 is_stmt 1 view .LVU378
	.loc 1 193 9 is_stmt 0 view .LVU379
	mov	r3, r4
	mov	r2, r5
	mov	r1, r8
	ldr	r0, [r6, #40]
	bl	World_GetBlock
.LVL53:
	.loc 1 193 8 view .LVU380
	cmp	r0, #0
	bne	.L65
.L68:
.LBE184:
	.loc 1 189 29 is_stmt 1 view .LVU381
	.loc 1 189 23 view .LVU382
	add	r4, r4, #1
.LVL54:
	.loc 1 189 23 is_stmt 0 view .LVU383
	cmp	r4, r7
	bne	.L66
.LBE189:
	.loc 1 188 27 is_stmt 1 discriminator 2 view .LVU384
	.loc 1 188 21 discriminator 2 view .LVU385
	add	r5, r5, #1
	cmp	r5, r10
	bne	.L76
.LBE194:
	.loc 1 187 27 discriminator 2 view .LVU386
	.loc 1 187 21 discriminator 2 view .LVU387
	add	r8, r8, #1
	.loc 1 187 21 is_stmt 0 discriminator 2 view .LVU388
	cmp	r8, fp
	bne	.L64
.LBE200:
	.loc 1 204 8 view .LVU389
	mov	r0, #1
.LVL55:
.L74:
	.loc 1 205 1 view .LVU390
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 68
	@ sp needed
	vldm	sp!, {d8-d11}
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
.LVL56:
	.loc 1 205 1 view .LVU391
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL57:
.L65:
	.cfi_restore_state
.LBB201:
.LBB195:
.LBB190:
.LBB185:
	.loc 1 193 65 discriminator 1 view .LVU392
	mov	r3, r4
	mov	r2, r5
	mov	r1, r8
	ldr	r0, [r6, #40]
	bl	World_GetBlock
.LVL58:
	.loc 1 193 63 discriminator 1 view .LVU393
	cmp	r0, #27
	beq	.L68
	.loc 1 194 7 view .LVU394
	mov	r3, r4
	mov	r2, r5
	mov	r1, r8
	ldr	r0, [r6, #40]
	bl	World_GetBlock
.LVL59:
	.loc 1 194 5 view .LVU395
	cmp	r0, #26
	beq	.L68
	.loc 1 195 6 is_stmt 1 view .LVU396
	.loc 1 195 10 is_stmt 0 view .LVU397
	vmov	s15, r8	@ int
	vcvt.f32.s32	s14, s15
	vsub.f32	s15, s16, s20
.LVL60:
.LBB178:
.LBI170:
	.loc 3 32 19 is_stmt 1 view .LVU398
.LBB172:
	.loc 3 33 2 view .LVU399
	.loc 3 33 19 is_stmt 0 view .LVU400
	vadd.f32	s13, s14, s19
	.loc 3 33 78 view .LVU401
	vcmpe.f32	s15, s13
	vmrs	APSR_nzcv, FPSCR
	bhi	.L68
	.loc 3 33 30 view .LVU402
	vadd.f32	s15, s15, s21
.LVL61:
	.loc 3 33 24 view .LVU403
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L68
.LBE172:
.LBE178:
	.loc 1 195 10 view .LVU404
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
.LBB179:
.LBB173:
	.loc 3 33 55 view .LVU405
	vadd.f32	s14, s15, s19
.LVL62:
	.loc 3 33 42 view .LVU406
	vcmpe.f32	s17, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L68
	.loc 3 33 66 view .LVU407
	vadd.f32	s14, s17, s22
	.loc 3 33 60 view .LVU408
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L68
.LBE173:
.LBE179:
	.loc 1 195 10 view .LVU409
	vmov	s15, r4	@ int
	vcvt.f32.s32	s14, s15
.LVL63:
	.loc 1 195 10 view .LVU410
	vsub.f32	s15, s18, s20
.LBB180:
.LBB174:
	.loc 3 33 91 view .LVU411
	vadd.f32	s13, s14, s19
	.loc 3 33 78 view .LVU412
	vcmpe.f32	s15, s13
	vmrs	APSR_nzcv, FPSCR
	bhi	.L68
	.loc 3 33 102 view .LVU413
	vadd.f32	s15, s15, s21
	.loc 3 33 96 view .LVU414
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L68
.LBE174:
.LBE180:
	.loc 1 198 13 view .LVU415
	mov	r0, #0
	b	.L74
.L94:
	.align	2
.L93:
	.word	1051092582
	.word	1065353216
	.word	1059481190
	.word	1072064102
.LBE185:
.LBE190:
.LBE195:
.LBE201:
	.cfi_endproc
.LFE147:
	.size	Player_CanMove, .-Player_CanMove
	.section	.text.Player_Jump,"ax",%progbits
	.align	2
	.global	Player_Jump
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_Jump, %function
Player_Jump:
.LVL64:
.LFB148:
	.loc 1 207 47 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 208 2 view .LVU417
	.loc 1 208 5 is_stmt 0 view .LVU418
	ldrb	r3, [r0, #32]	@ zero_extendqisi2
	.loc 1 207 47 view .LVU419
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	.loc 1 208 5 view .LVU420
	cmp	r3, #0
	beq	.L95
	.loc 1 208 23 discriminator 1 view .LVU421
	ldrb	r3, [r0, #35]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L95
	.loc 1 209 3 is_stmt 1 view .LVU422
	.loc 1 209 31 is_stmt 0 view .LVU423
	vldr.32	s15, .L101
	vmul.f32	s0, s0, s15
	.loc 1 210 31 view .LVU424
	vmul.f32	s2, s2, s15
	.loc 1 212 18 view .LVU425
	mov	r2, #1
	.loc 1 209 22 view .LVU426
	vstr.32	s0, [r0, #60]
	.loc 1 210 3 is_stmt 1 view .LVU427
	.loc 1 210 22 is_stmt 0 view .LVU428
	vstr.32	s2, [r0, #68]
	.loc 1 211 3 is_stmt 1 view .LVU429
	.loc 1 212 3 view .LVU430
	.loc 1 213 3 view .LVU431
	.loc 1 211 22 is_stmt 0 view .LVU432
	ldr	r1, .L101+4
	.loc 1 213 21 view .LVU433
	strb	r3, [r0, #36]
	.loc 1 211 22 view .LVU434
	str	r1, [r0, #64]	@ float
	.loc 1 212 18 view .LVU435
	strb	r2, [r0, #33]
.L95:
	.loc 1 215 1 view .LVU436
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L102:
	.align	2
.L101:
	.word	1066192077
	.word	1087792742
	.cfi_endproc
.LFE148:
	.size	Player_Jump, .-Player_Jump
	.section	.text.Player_Move,"ax",%progbits
	.align	2
	.global	Player_Move
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_Move, %function
Player_Move:
.LVL65:
.LFB149:
	.loc 1 220 57 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 222 23 is_stmt 0 view .LVU438
	vldr.32	s15, [r0, #72]
	.loc 1 224 30 view .LVU439
	vldr.32	s13, .L197+48
.LVL66:
	.loc 1 221 2 is_stmt 1 view .LVU440
	.loc 1 222 23 is_stmt 0 view .LVU441
	vadd.f32	s15, s0, s15
	.loc 1 221 28 view .LVU442
	vldr.32	s14, [r0, #76]
	.loc 1 224 30 view .LVU443
	vcmpe.f32	s15, s13
	.loc 1 220 57 view .LVU444
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9, d10, d11, d12, d13, d14}
	.cfi_def_cfa_offset 92
	.cfi_offset 80, -92
	.cfi_offset 81, -88
	.cfi_offset 82, -84
	.cfi_offset 83, -80
	.cfi_offset 84, -76
	.cfi_offset 85, -72
	.cfi_offset 86, -68
	.cfi_offset 87, -64
	.cfi_offset 88, -60
	.cfi_offset 89, -56
	.cfi_offset 90, -52
	.cfi_offset 91, -48
	.cfi_offset 92, -44
	.cfi_offset 93, -40
	.loc 1 221 28 view .LVU445
	vsub.f32	s14, s14, s0
	.loc 1 224 30 view .LVU446
	vmrs	APSR_nzcv, FPSCR
	.loc 1 220 57 view .LVU447
	sub	sp, sp, #220
	.cfi_def_cfa_offset 312
	.loc 1 220 57 view .LVU448
	vstr.32	s1, [sp, #84]
	vstr.32	s2, [sp, #88]
	vstr.32	s3, [sp, #92]
	.loc 1 221 28 view .LVU449
	vstr.32	s14, [r0, #76]
	.loc 1 222 2 is_stmt 1 view .LVU450
	.loc 1 222 23 is_stmt 0 view .LVU451
	vstr.32	s15, [r0, #72]
	.loc 1 223 2 is_stmt 1 view .LVU452
.LVL67:
	.loc 1 224 2 view .LVU453
	.loc 1 224 30 view .LVU454
	blt	.L103
	mov	fp, r0
	vmov.f32	s26, s1
	vmov.f32	s25, s2
	vmov.f32	s27, s3
.LBB250:
	.loc 1 225 22 is_stmt 0 view .LVU455
	vldr.32	s15, [r0, #64]
	.loc 1 226 6 view .LVU456
	vldr.32	s24, .L197
	.loc 1 228 42 view .LVU457
	vldr.32	s16, .L197+4
.LBB251:
.LBB252:
.LBB253:
.LBB254:
.LBB255:
.LBB256:
.LBB257:
.LBB258:
.LBB259:
	.file 4 "/home/tobi/Dokumente/Craftus-Next/include/misc/Collision.h"
	.loc 4 9 109 view .LVU458
	vldr.32	s17, .L197+8
.LVL68:
.L138:
	.loc 4 9 109 view .LVU459
.LBE259:
.LBE258:
.LBE257:
.LBE256:
.LBE255:
.LBE254:
.LBE253:
.LBE252:
.LBE251:
	.loc 1 225 3 is_stmt 1 view .LVU460
	.loc 1 225 22 is_stmt 0 view .LVU461
	vldr.32	s14, .L197+12
	vsub.f32	s15, s15, s14
	.loc 1 226 3 is_stmt 1 view .LVU462
	.loc 1 226 64 is_stmt 0 view .LVU463
	vcmp.f32	s15, s24
	vmrs	APSR_nzcv, FPSCR
	vmovmi.f32	s15, s24
	.loc 1 228 6 view .LVU464
	ldrb	r3, [fp, #35]	@ zero_extendqisi2
	.loc 1 231 14 view .LVU465
	ldrb	r2, [fp, #32]	@ zero_extendqisi2
	.loc 1 228 6 view .LVU466
	cmp	r3, #0
	vstr.32	s15, [fp, #64]
	.loc 1 228 3 is_stmt 1 view .LVU467
	.loc 1 231 14 is_stmt 0 view .LVU468
	str	r2, [sp, #80]
	.loc 1 228 6 view .LVU469
	beq	.L106
	.loc 1 228 23 is_stmt 1 discriminator 1 view .LVU470
	.loc 1 228 42 is_stmt 0 discriminator 1 view .LVU471
	vstr.32	s16, [fp, #64]
	.loc 1 230 3 is_stmt 1 discriminator 1 view .LVU472
.LVL69:
	.loc 1 231 3 discriminator 1 view .LVU473
	.loc 1 228 42 is_stmt 0 discriminator 1 view .LVU474
	vmov.f32	s15, s16
	vldr.32	s14, .L197+64
.L107:
.LVL70:
	.loc 1 240 3 is_stmt 1 view .LVU475
.LBB374:
.LBI374:
	.loc 2 18 15 view .LVU476
.LBB375:
	.loc 2 18 43 view .LVU477
	.loc 2 18 43 is_stmt 0 view .LVU478
.LBE375:
.LBE374:
.LBB380:
.LBI380:
	.loc 2 18 15 is_stmt 1 view .LVU479
.LBB381:
	.loc 2 18 43 view .LVU480
	.loc 2 18 43 is_stmt 0 view .LVU481
.LBE381:
.LBE380:
.LBB383:
.LBI383:
	.loc 2 16 15 is_stmt 1 view .LVU482
.LBB384:
	.loc 2 16 44 view .LVU483
	.loc 2 16 44 is_stmt 0 view .LVU484
.LBE384:
.LBE383:
.LBB387:
.LBI387:
	.loc 2 16 15 is_stmt 1 view .LVU485
.LBB388:
	.loc 2 16 44 view .LVU486
.LBE388:
.LBE387:
.LBB392:
.LBB376:
	.loc 2 18 50 is_stmt 0 view .LVU487
	vldr.32	s13, .L197+48
.LBE376:
.LBE392:
.LBB393:
.LBB382:
	vmul.f32	s23, s26, s14
	vmul.f32	s22, s27, s14
.LBE382:
.LBE393:
.LBB394:
.LBB377:
	vldr.32	s9, [fp, #60]
	vldr.32	s10, [fp, #68]
.LBE377:
.LBE394:
.LBB395:
.LBB385:
	.loc 2 16 51 view .LVU488
	vmla.f32	s15, s25, s14
.LVL71:
	.loc 2 16 51 view .LVU489
.LBE385:
.LBE395:
.LBB396:
.LBB390:
	vldr.32	s12, [fp]
	vldr.32	s11, [fp, #4]
	vldr.32	s14, [fp, #8]
.LVL72:
	.loc 2 16 51 view .LVU490
.LBE390:
.LBE396:
.LBB397:
.LBB386:
	vmla.f32	s23, s9, s13
.LVL73:
	.loc 2 16 51 view .LVU491
	vmla.f32	s22, s10, s13
.LVL74:
	.loc 2 16 51 view .LVU492
.LBE386:
.LBE397:
.LBB398:
.LBB391:
	vadd.f32	s18, s15, s11
	vadd.f32	s23, s23, s12
.LVL75:
	.loc 2 16 51 view .LVU493
	vadd.f32	s22, s22, s14
.LVL76:
.LBB389:
.LBI389:
	.loc 2 14 15 is_stmt 1 view .LVU494
	.loc 2 14 51 view .LVU495
	.loc 2 14 51 is_stmt 0 view .LVU496
.LBE389:
.LBE391:
.LBE398:
	.loc 1 245 20 view .LVU497
	mov	r3, #0
.LBB399:
.LBB370:
	.loc 1 253 8 view .LVU498
	vldr.32	s21, .L197+16
.LBB350:
.LBB351:
	.loc 4 9 109 view .LVU499
	vldr.32	s20, .L197+20
	vstr.32	s18, [sp, #112]
	vstr.32	s23, [sp, #108]
	vstr.32	s22, [sp, #116]
.LVL77:
	.loc 4 9 109 view .LVU500
.LBE351:
.LBE350:
.LBE370:
.LBE399:
	.loc 1 241 3 is_stmt 1 view .LVU501
	.loc 1 243 2 view .LVU502
	.loc 1 245 3 view .LVU503
	.loc 1 246 3 view .LVU504
.LBB400:
	.loc 1 246 8 view .LVU505
	.loc 1 246 21 view .LVU506
	add	r2, sp, #132
.LBE400:
	.loc 1 241 10 is_stmt 0 view .LVU507
	add	ip, sp, #120
	str	r2, [sp, #64]
	ldm	fp, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	.loc 1 243 7 view .LVU508
	str	r3, [sp, #76]
	.loc 1 245 20 view .LVU509
	strb	r3, [fp, #32]
.LVL78:
.L121:
.LBB401:
.LBB371:
	.loc 1 247 4 is_stmt 1 view .LVU510
	.loc 1 247 19 is_stmt 0 view .LVU511
	ldr	r3, .L197+40
.LBB356:
.LBB352:
	.loc 4 9 109 view .LVU512
	vldr.32	s10, .L197+24
.LBE352:
.LBE356:
	.loc 1 247 19 view .LVU513
	ldm	r3, {r0, r1, r2}
	add	r3, sp, #132
	stm	r3, {r0, r1, r2}
	.loc 1 249 11 view .LVU514
	add	r3, sp, #120
	ldm	r3, {r0, r1, r2}
	add	r3, sp, #144
	stm	r3, {r0, r1, r2}
	.loc 1 247 8 view .LVU515
	ldr	r3, [sp, #64]
	ldr	r2, [r3], #4
	str	r3, [sp, #64]
.LVL79:
	.loc 1 248 3 is_stmt 1 view .LVU516
	.loc 1 249 4 view .LVU517
	.loc 1 251 4 view .LVU518
	.loc 1 251 28 is_stmt 0 view .LVU519
	add	r3, sp, #216
	add	r3, r3, r2, lsl #2
	vldr.32	s19, [r3, #-108]
	.loc 1 251 18 view .LVU520
	vstr.32	s19, [r3, #-72]
	.loc 1 252 4 is_stmt 1 view .LVU521
	.loc 1 253 27 is_stmt 0 view .LVU522
	vldr.32	s11, [sp, #144]
.LBB357:
.LBB340:
.LBB329:
.LBB318:
.LBB268:
.LBB269:
	.loc 3 25 47 view .LVU523
	vcvt.s32.f32	s14, s11
.LBE269:
.LBE268:
.LBE318:
.LBE329:
.LBE340:
.LBE357:
	.loc 1 253 67 view .LVU524
	vldr.32	s12, [sp, #152]
.LBB358:
.LBB341:
.LBB330:
.LBB319:
.LBB277:
.LBB270:
	.loc 3 25 58 view .LVU525
	vcvt.f32.s32	s2, s14
.LBE270:
.LBE277:
.LBE319:
.LBE330:
.LBE341:
.LBE358:
	.loc 1 253 8 view .LVU526
	vldr.32	s13, [sp, #148]
.LBB359:
.LBB342:
.LBB331:
.LBB320:
.LBB278:
.LBB279:
	.loc 3 25 47 view .LVU527
	vcvt.s32.f32	s15, s12
.LBE279:
.LBE278:
.LBB287:
.LBB271:
	.loc 3 25 58 view .LVU528
	vcmpe.f32	s11, s2
.LBE271:
.LBE287:
.LBB288:
.LBB289:
	.loc 3 25 47 view .LVU529
	vcvt.s32.f32	s9, s13
.LBE289:
.LBE288:
.LBB296:
.LBB280:
	.loc 3 25 58 view .LVU530
	vcvt.f32.s32	s5, s15
.LBE280:
.LBE296:
.LBE320:
.LBE331:
.LBE342:
.LBE359:
	.loc 1 247 8 view .LVU531
	str	r2, [sp, #68]
	.loc 1 251 28 view .LVU532
	lsl	r2, r2, #2
.LVL80:
.LBB360:
.LBB343:
.LBB332:
.LBB321:
.LBB297:
.LBB272:
	.loc 3 25 58 view .LVU533
	vmrs	APSR_nzcv, FPSCR
.LBE272:
.LBE297:
.LBE321:
.LBE332:
.LBE343:
.LBE360:
	.loc 1 251 28 view .LVU534
	str	r2, [sp, #72]
	.loc 1 248 8 view .LVU535
	mov	r2, #0
.LBB361:
.LBB344:
.LBB333:
.LBB322:
.LBB298:
.LBB281:
	.loc 3 25 58 view .LVU536
	vcmpe.f32	s12, s5
.LBE281:
.LBE298:
.LBB299:
.LBB290:
	vcvt.f32.s32	s6, s9
.LBE290:
.LBE299:
.LBB300:
.LBB273:
	movpl	r3, r2
	movmi	r3, #1
.LBE273:
.LBE300:
.LBE322:
.LBE333:
.LBE344:
.LBE361:
	.loc 1 248 8 view .LVU537
	str	r2, [sp, #52]
.LBB362:
.LBB345:
.LBB334:
.LBB323:
.LBB301:
.LBB274:
	.loc 3 25 56 view .LVU538
	vmov	r2, s14	@ int
.LBE274:
.LBE301:
.LBB302:
.LBB282:
	.loc 3 25 58 view .LVU539
	vmrs	APSR_nzcv, FPSCR
.LBE282:
.LBE302:
.LBB303:
.LBB291:
	vcmpe.f32	s13, s6
.LBE291:
.LBE303:
.LBE323:
.LBE334:
.LBE345:
.LBE362:
	.loc 1 253 8 view .LVU540
	vsub.f32	s7, s11, s21
	vsub.f32	s8, s12, s21
.LVL81:
.LBB363:
.LBI350:
	.loc 4 9 12 is_stmt 1 view .LVU541
.LBB353:
	.loc 4 9 79 view .LVU542
.LBE353:
.LBE363:
.LBB364:
.LBB346:
.LBB335:
.LBB324:
.LBB304:
.LBB275:
	.loc 3 25 56 is_stmt 0 view .LVU543
	sub	r3, r2, r3
	sub	r6, r3, #1
	add	r3, r3, #2
.LBE275:
.LBE304:
.LBB305:
.LBB283:
	.loc 3 25 58 view .LVU544
	movmi	r2, #1
	movpl	r2, #0
	str	r3, [sp, #56]
.LBE283:
.LBE305:
.LBB306:
.LBB292:
	vmrs	APSR_nzcv, FPSCR
.LBE292:
.LBE306:
.LBB307:
.LBB284:
	.loc 3 25 56 view .LVU545
	vmov	r3, s15	@ int
.LBE284:
.LBE307:
.LBE324:
.LBE335:
.LBE346:
.LBE364:
.LBB365:
.LBB354:
	.loc 4 9 109 view .LVU546
	vadd.f32	s10, s13, s10
	vadd.f32	s3, s7, s20
	vadd.f32	s4, s8, s20
.LBE354:
.LBE365:
.LBB366:
.LBB347:
.LBB336:
.LBB325:
.LBB308:
.LBB285:
	.loc 3 25 56 view .LVU547
	sub	r7, r3, r2
.LBE285:
.LBE308:
.LBB309:
.LBB293:
	.loc 3 25 58 view .LVU548
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU549
	vmov	r2, s9	@ int
.LBE293:
.LBE309:
.LBE325:
.LBE336:
.LBE347:
.LBE366:
.LBB367:
.LBB355:
	.loc 4 9 86 view .LVU550
	vstr.32	s13, [sp, #172]
	vstr.32	s7, [sp, #168]
	vstr.32	s8, [sp, #176]
	vstr.32	s10, [sp, #184]
	vstr.32	s3, [sp, #180]
	vstr.32	s4, [sp, #188]
.LVL82:
	.loc 4 9 86 view .LVU551
.LBE355:
.LBE367:
	.loc 1 256 4 is_stmt 1 view .LVU552
.LBB368:
	.loc 1 256 9 view .LVU553
	.loc 1 256 23 view .LVU554
.LBB348:
.LBB337:
.LBB326:
.LBB310:
.LBB294:
	.loc 3 25 56 is_stmt 0 view .LVU555
	sub	r3, r2, r3
	sub	r9, r7, #1
	str	r3, [sp, #60]
	add	r7, r7, #2
	add	r10, r3, #3
.LVL83:
.L108:
	.loc 3 25 56 view .LVU556
.LBE294:
.LBE310:
.LBE326:
.LBE337:
	.loc 1 257 23 is_stmt 1 view .LVU557
	ldr	r5, [sp, #60]
.LVL84:
.L113:
.LBB338:
	.loc 1 258 25 view .LVU558
	mov	r4, r9
.LBB327:
.LBB311:
	.loc 1 268 12 is_stmt 0 view .LVU559
	mov	r8, #0
.LVL85:
.L110:
	.loc 1 268 12 view .LVU560
.LBE311:
	.loc 1 259 7 is_stmt 1 view .LVU561
.LBB312:
.LBI268:
	.loc 3 25 19 view .LVU562
.LBB276:
	.loc 3 25 40 view .LVU563
	.loc 3 25 40 is_stmt 0 view .LVU564
.LBE276:
.LBE312:
	.loc 1 260 7 is_stmt 1 view .LVU565
.LBB313:
.LBI288:
	.loc 3 25 19 view .LVU566
.LBB295:
	.loc 3 25 40 view .LVU567
	.loc 3 25 40 is_stmt 0 view .LVU568
.LBE295:
.LBE313:
	.loc 1 261 7 is_stmt 1 view .LVU569
.LBB314:
.LBI278:
	.loc 3 25 19 view .LVU570
.LBB286:
	.loc 3 25 40 view .LVU571
	.loc 3 25 40 is_stmt 0 view .LVU572
.LBE286:
.LBE314:
	.loc 1 262 7 is_stmt 1 view .LVU573
	.loc 1 262 11 is_stmt 0 view .LVU574
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL86:
	.loc 1 262 10 view .LVU575
	cmp	r0, #0
	bne	.L190
.L109:
	.loc 1 262 10 view .LVU576
.LBE327:
	.loc 1 258 31 is_stmt 1 discriminator 2 view .LVU577
	.loc 1 258 25 discriminator 2 view .LVU578
	add	r4, r4, #1
.LVL87:
	.loc 1 258 25 is_stmt 0 discriminator 2 view .LVU579
	cmp	r7, r4
	bne	.L110
.LBE338:
	.loc 1 257 29 is_stmt 1 discriminator 2 view .LVU580
	.loc 1 257 23 discriminator 2 view .LVU581
	add	r5, r5, #1
	cmp	r10, r5
	bne	.L113
.LBE348:
	.loc 1 256 29 discriminator 2 view .LVU582
	.loc 1 256 23 discriminator 2 view .LVU583
	ldr	r3, [sp, #56]
	add	r6, r6, #1
	.loc 1 256 23 is_stmt 0 discriminator 2 view .LVU584
	cmp	r3, r6
	bne	.L108
.LBE368:
	.loc 1 276 4 is_stmt 1 view .LVU585
	.loc 1 276 7 is_stmt 0 view .LVU586
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L114
	.loc 1 277 5 is_stmt 1 view .LVU587
	.loc 1 277 19 is_stmt 0 view .LVU588
	ldr	r3, [sp, #72]
	add	r3, r3, #216
	add	r3, sp, r3
	vstr.32	s19, [r3, #-96]
.L115:
.LBE371:
	.loc 1 246 27 is_stmt 1 discriminator 2 view .LVU589
	.loc 1 246 21 discriminator 2 view .LVU590
	ldr	r2, [sp, #64]
	add	r3, sp, #144
	cmp	r3, r2
	bne	.L121
.LBE401:
	.loc 1 293 3 view .LVU591
	.loc 1 295 6 is_stmt 0 view .LVU592
	ldrb	r3, [fp, #32]	@ zero_extendqisi2
	vldr.32	s28, [fp]
	cmp	r3, #0
	vldr.32	s15, [fp, #4]
	vldr.32	s29, [fp, #8]
	vldr.32	s19, [sp, #120]
.LVL88:
	.loc 1 295 6 view .LVU593
	vldr.32	s21, [sp, #124]
.LVL89:
	.loc 1 295 6 view .LVU594
	vldr.32	s20, [sp, #128]
.LVL90:
.LBB402:
.LBI402:
	.loc 2 17 15 is_stmt 1 view .LVU595
.LBB403:
	.loc 2 17 44 view .LVU596
	.loc 2 17 44 is_stmt 0 view .LVU597
.LBE403:
.LBE402:
	.loc 1 295 3 is_stmt 1 view .LVU598
	.loc 1 295 6 is_stmt 0 view .LVU599
	beq	.L122
	.loc 1 295 24 discriminator 1 view .LVU600
	ldrb	r2, [fp, #35]	@ zero_extendqisi2
	cmp	r2, #0
	.loc 1 295 43 is_stmt 1 discriminator 1 view .LVU601
	.loc 1 295 58 is_stmt 0 discriminator 1 view .LVU602
	movne	r2, #0
	strbne	r2, [fp, #35]
.L122:
	.loc 1 297 3 is_stmt 1 view .LVU603
	.loc 1 297 6 is_stmt 0 view .LVU604
	ldr	r2, [sp, #76]
	cmp	r2, #0
	beq	.L123
	.loc 1 297 21 discriminator 1 view .LVU605
	ldrb	r2, [fp, #56]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L191
.LVL91:
.L123:
	.loc 1 306 3 is_stmt 1 view .LVU606
	.loc 1 306 6 is_stmt 0 view .LVU607
	ldrb	r2, [fp, #36]	@ zero_extendqisi2
	.loc 1 306 34 view .LVU608
	vldr.32	s14, [fp, #28]
	.loc 1 306 6 view .LVU609
	cmp	r2, #0
	beq	.L127
	.loc 1 306 25 discriminator 1 view .LVU610
	vldr.32	s15, .L197+28
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 306 55 is_stmt 1 discriminator 2 view .LVU611
	.loc 1 306 73 is_stmt 0 discriminator 2 view .LVU612
	vldrgt.32	s15, .L197+64
	vsubgt.f32	s14, s14, s15
	vstrgt.32	s14, [fp, #28]
.L128:
	.loc 1 307 3 is_stmt 1 view .LVU613
	.loc 1 309 3 view .LVU614
	.loc 1 309 46 is_stmt 0 view .LVU615
	ldr	r2, [sp, #80]
	.loc 1 309 25 view .LVU616
	eor	r3, r3, #1
	.loc 1 309 46 view .LVU617
	tst	r2, r3
	bne	.L192
.LVL92:
.L189:
	.loc 1 317 22 view .LVU618
	vldr.32	s15, [fp, #64]
.LVL93:
.L130:
	.loc 1 316 3 is_stmt 1 view .LVU619
	.loc 1 317 22 is_stmt 0 view .LVU620
	vldr.32	s13, [fp, #60]
	vldr.32	s12, .L197+32
	vmul.f32	s13, s13, s12
	vldr.32	s14, [fp, #68]
	.loc 1 318 81 view .LVU621
	vcmpe.f32	s13, #0
	.loc 1 317 22 view .LVU622
	vmul.f32	s14, s14, s12
	.loc 1 318 81 view .LVU623
	vmrs	APSR_nzcv, FPSCR
	.loc 1 316 20 view .LVU624
	add	r3, sp, #120
	ldm	r3, {r0, r1, r2}
	.loc 1 317 22 view .LVU625
	vstr.32	s15, [fp, #64]
	vstr.32	s13, [fp, #60]
	vstr.32	s14, [fp, #68]
	.loc 1 316 20 view .LVU626
	stm	fp, {r0, r1, r2}
	.loc 1 317 3 is_stmt 1 view .LVU627
	.loc 1 318 3 view .LVU628
	.loc 1 318 81 is_stmt 0 view .LVU629
	bmi	.L193
	.loc 1 318 81 discriminator 2 view .LVU630
	vldr.32	s12, .L197+36
	vcmpe.f32	s13, s12
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #1
	movpl	r3, #0
.L134:
	.loc 1 319 81 view .LVU631
	vcmpe.f32	s14, #0
	.loc 1 318 6 view .LVU632
	cmp	r3, #0
	.loc 1 318 108 view .LVU633
	vstrne.32	s16, [fp, #60]
	.loc 1 319 3 is_stmt 1 view .LVU634
	.loc 1 319 81 is_stmt 0 view .LVU635
	vmrs	APSR_nzcv, FPSCR
	bmi	.L194
	.loc 1 319 81 discriminator 2 view .LVU636
	vldr.32	s13, .L197+36
	vcmpe.f32	s14, s13
	vmrs	APSR_nzcv, FPSCR
	movmi	r3, #1
	movpl	r3, #0
.L137:
	.loc 1 321 24 view .LVU637
	vldr.32	s14, [fp, #72]
	vldr.32	s13, .L197+48
	vsub.f32	s14, s14, s13
.LBE250:
	.loc 1 224 30 view .LVU638
	vcmpe.f32	s14, s13
.LBB479:
	.loc 1 319 6 view .LVU639
	cmp	r3, #0
	.loc 1 319 108 view .LVU640
	vstrne.32	s16, [fp, #68]
	.loc 1 321 3 is_stmt 1 view .LVU641
.LBE479:
	.loc 1 224 30 is_stmt 0 view .LVU642
	vmrs	APSR_nzcv, FPSCR
.LBB480:
	.loc 1 321 24 view .LVU643
	vstr.32	s14, [fp, #72]
	.loc 1 321 24 view .LVU644
.LBE480:
	.loc 1 224 30 is_stmt 1 view .LVU645
	bge	.L138
.LVL94:
.L103:
	.loc 1 323 1 is_stmt 0 view .LVU646
	add	sp, sp, #220
	.cfi_remember_state
	.cfi_def_cfa_offset 92
	@ sp needed
	vldm	sp!, {d8-d14}
	.cfi_restore 92
	.cfi_restore 93
	.cfi_restore 90
	.cfi_restore 91
	.cfi_restore 88
	.cfi_restore 89
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L198:
	.align	2
.L197:
	.word	-1035468800
	.word	0
	.word	1065353216
	.word	1051372203
	.word	1051092582
	.word	1059481190
	.word	1072064102
	.word	-1097229926
	.word	1064514355
	.word	1036831949
	.word	.LANCHOR0
	.word	1087792742
	.word	1015580809
	.word	995783695
	.word	1008981771
	.word	1066192077
	.word	1023969417
	.word	-1110651699
	.word	1007192201
.LVL95:
.L190:
	.cfi_restore_state
.LBB481:
.LBB405:
.LBB372:
.LBB369:
.LBB349:
.LBB339:
.LBB328:
	.loc 1 262 67 discriminator 1 view .LVU647
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL96:
	.loc 1 262 65 discriminator 1 view .LVU648
	cmp	r0, #27
	beq	.L109
	.loc 1 263 9 view .LVU649
	mov	r3, r4
	mov	r2, r5
	mov	r1, r6
	ldr	r0, [fp, #40]
	bl	World_GetBlock
.LVL97:
.LBB315:
	.loc 1 264 8 is_stmt 1 view .LVU650
.LBE315:
	.loc 1 263 7 is_stmt 0 view .LVU651
	cmp	r0, #26
.LBB316:
	.loc 1 270 25 view .LVU652
	add	ip, sp, #8
	add	lr, sp, #168
.LBE316:
	.loc 1 263 7 view .LVU653
	beq	.L109
.LBB317:
	.loc 1 264 23 view .LVU654
	vmov	s15, r4	@ int
	vcvt.f32.s32	s13, s15
	vmov	s15, r6	@ int
	vcvt.f32.s32	s14, s15
.LVL98:
	.loc 1 264 23 view .LVU655
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
.LVL99:
.LBB264:
.LBI258:
	.loc 4 9 12 is_stmt 1 view .LVU656
.LBB260:
	.loc 4 9 79 view .LVU657
	.loc 4 9 109 is_stmt 0 view .LVU658
	vadd.f32	s10, s13, s17
	vadd.f32	s12, s15, s17
	vadd.f32	s11, s14, s17
.LBE260:
.LBE264:
	.loc 1 270 25 view .LVU659
	add	r3, sp, #104
	str	r3, [sp, #44]
	add	r3, sp, #100
	str	r3, [sp, #40]
	add	r3, sp, #156
	str	r3, [sp, #36]
	ldmia	lr!, {r0, r1, r2, r3}
	str	r8, [sp, #32]
	stmia	ip!, {r0, r1, r2, r3}
	.loc 1 266 24 view .LVU660
	vstr.32	s16, [sp, #156]
	.loc 1 270 25 view .LVU661
	ldm	lr, {r0, r1}
	.loc 1 266 24 view .LVU662
	vstr.32	s16, [sp, #160]
	vstr.32	s16, [sp, #164]
	.loc 1 270 25 view .LVU663
	stm	ip, {r0, r1}
.LBB265:
.LBB261:
	.loc 4 9 86 view .LVU664
	vstr.32	s10, [sp, #212]
.LVL100:
	.loc 4 9 86 view .LVU665
.LBE261:
.LBE265:
	.loc 1 266 8 is_stmt 1 view .LVU666
	.loc 1 267 8 view .LVU667
	.loc 1 268 8 view .LVU668
	.loc 1 270 7 view .LVU669
.LBB266:
.LBB262:
	.loc 4 9 86 is_stmt 0 view .LVU670
	vstr.32	s12, [sp, #208]
	vstr.32	s13, [sp, #200]
	vstr.32	s11, [sp, #204]
.LBE262:
.LBE266:
	.loc 1 270 25 view .LVU671
	add	r3, sp, #216
	ldmdb	r3, {r0, r1}
	stm	sp, {r0, r1}
	add	r3, sp, #192
.LBB267:
.LBB263:
	.loc 4 9 86 view .LVU672
	vstr.32	s14, [sp, #192]
	vstr.32	s15, [sp, #196]
.LBE263:
.LBE267:
	.loc 1 267 14 view .LVU673
	vstr.32	s16, [sp, #100]
	.loc 1 268 12 view .LVU674
	str	r8, [sp, #104]
	.loc 1 270 25 view .LVU675
	ldm	r3, {r0, r1, r2, r3}
	bl	Collision_BoxIntersect
.LVL101:
	.loc 1 271 8 is_stmt 1 view .LVU676
	.loc 1 271 18 is_stmt 0 view .LVU677
	ldr	r3, [sp, #52]
	orr	r0, r0, r3
.LVL102:
	.loc 1 271 18 view .LVU678
	uxtb	r3, r0
	str	r3, [sp, #52]
.LVL103:
	.loc 1 271 18 view .LVU679
	b	.L109
.LVL104:
.L114:
	.loc 1 271 18 view .LVU680
.LBE317:
.LBE328:
.LBE339:
.LBE349:
.LBE369:
	.loc 1 278 9 is_stmt 1 view .LVU681
	.loc 1 278 12 is_stmt 0 view .LVU682
	ldr	r3, [sp, #68]
	cmp	r3, #1
	beq	.L195
	.loc 1 285 5 is_stmt 1 view .LVU683
.LVL105:
	.loc 1 286 5 view .LVU684
	.loc 1 286 8 is_stmt 0 view .LVU685
	ldr	r3, [sp, #68]
	cmp	r3, #0
	.loc 1 287 6 is_stmt 1 view .LVU686
	.loc 1 285 19 is_stmt 0 view .LVU687
	ldr	r3, [sp, #52]
	.loc 1 287 25 view .LVU688
	vstreq.32	s16, [fp, #60]
	.loc 1 289 6 is_stmt 1 view .LVU689
	.loc 1 289 25 is_stmt 0 view .LVU690
	vstrne.32	s16, [fp, #68]
	.loc 1 285 19 view .LVU691
	str	r3, [sp, #76]
	b	.L115
.LVL106:
.L195:
	.loc 1 279 5 is_stmt 1 view .LVU692
	.loc 1 279 8 is_stmt 0 view .LVU693
	vldr.32	s15, [fp, #64]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L117
	.loc 1 279 34 discriminator 2 view .LVU694
	vcmpe.f32	s25, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L117
.L118:
	.loc 1 280 5 is_stmt 1 view .LVU695
	.loc 1 280 20 is_stmt 0 view .LVU696
	mov	r3, #0
	.loc 1 281 24 view .LVU697
	vstr.32	s16, [fp, #60]
	.loc 1 282 24 view .LVU698
	vstr.32	s16, [fp, #64]
	.loc 1 283 24 view .LVU699
	vstr.32	s16, [fp, #68]
	.loc 1 280 20 view .LVU700
	strb	r3, [fp, #33]
	.loc 1 281 5 is_stmt 1 view .LVU701
	.loc 1 282 5 view .LVU702
	.loc 1 283 5 view .LVU703
	b	.L115
.LVL107:
.L106:
	.loc 1 283 5 is_stmt 0 view .LVU704
.LBE372:
.LBE405:
	.loc 1 230 3 is_stmt 1 view .LVU705
	.loc 1 231 3 view .LVU706
.LBB406:
.LBB378:
	.loc 2 18 50 is_stmt 0 view .LVU707
	vldr.32	s14, .L197+48
.LBE378:
.LBE406:
	.loc 1 231 6 view .LVU708
	ldr	r2, [sp, #80]
.LBB407:
.LBB379:
	.loc 2 18 50 view .LVU709
	vmul.f32	s15, s15, s14
.LBE379:
.LBE407:
	.loc 1 231 6 view .LVU710
	cmp	r2, #0
	bne	.L196
	.loc 1 232 4 is_stmt 1 view .LVU711
	.loc 1 232 7 is_stmt 0 view .LVU712
	vldr.32	s14, .L197+52
	vldr.32	s13, .L197+56
	.loc 1 232 14 view .LVU713
	ldrb	r3, [fp, #33]	@ zero_extendqisi2
	.loc 1 232 7 view .LVU714
	cmp	r3, #0
	vmoveq.f32	s14, s13
	b	.L107
.LVL108:
.L191:
.LBB408:
	.loc 1 298 4 is_stmt 1 view .LVU715
.LBB409:
.LBI409:
	.loc 2 17 15 view .LVU716
.LBB410:
	.loc 2 17 44 view .LVU717
	.loc 2 17 51 is_stmt 0 view .LVU718
	vsub.f32	s18, s18, s15
.LVL109:
	.loc 2 17 51 view .LVU719
	vsub.f32	s23, s23, s28
.LVL110:
	.loc 2 17 51 view .LVU720
.LBE410:
.LBE409:
.LBB412:
.LBB413:
.LBB414:
.LBB415:
.LBB416:
.LBB417:
	.loc 2 20 66 view .LVU721
	vmul.f32	s0, s18, s18
.LBE417:
.LBE416:
.LBE415:
.LBE414:
.LBE413:
.LBE412:
.LBB428:
.LBB411:
	.loc 2 17 51 view .LVU722
	vsub.f32	s22, s22, s29
.LVL111:
	.loc 2 17 51 view .LVU723
.LBE411:
.LBE428:
.LBB429:
.LBI412:
	.loc 2 25 15 is_stmt 1 view .LVU724
.LBB424:
	.loc 2 26 2 view .LVU725
.LBB422:
.LBI414:
	.loc 2 23 14 view .LVU726
.LBB420:
	.loc 2 23 35 view .LVU727
.LBB419:
.LBI416:
	.loc 2 20 14 view .LVU728
.LBB418:
	.loc 2 20 43 view .LVU729
	.loc 2 20 60 is_stmt 0 view .LVU730
	vmla.f32	s0, s23, s23
	.loc 2 20 72 view .LVU731
	vmla.f32	s0, s22, s22
.LVL112:
	.loc 2 20 72 view .LVU732
	vcmp.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L185
.LBE418:
.LBE419:
	.loc 2 23 42 view .LVU733
	vsqrt.f32	s15, s0
.LVL113:
.L126:
	.loc 2 23 42 view .LVU734
.LBE420:
.LBE422:
	.loc 2 27 2 is_stmt 1 view .LVU735
	.loc 2 27 2 is_stmt 0 view .LVU736
.LBE424:
.LBE429:
	.loc 1 299 4 is_stmt 1 view .LVU737
.LBB430:
.LBB425:
	.loc 2 27 9 is_stmt 0 view .LVU738
	vdiv.f32	s11, s23, s15
.LVL114:
	.loc 2 27 9 view .LVU739
	vdiv.f32	s12, s18, s15
.LVL115:
	.loc 2 27 9 view .LVU740
.LBE425:
.LBE430:
	.loc 1 299 18 view .LVU741
	vadd.f32	s11, s11, s19
.LVL116:
.LBB431:
.LBI431:
	.loc 3 25 19 is_stmt 1 view .LVU742
.LBB432:
	.loc 3 25 40 view .LVU743
.LBE432:
.LBE431:
	.loc 1 300 12 is_stmt 0 view .LVU744
	vadd.f32	s12, s12, s21
.LVL117:
.LBB439:
.LBB426:
	.loc 2 27 9 view .LVU745
	vdiv.f32	s13, s22, s15
.LVL118:
	.loc 2 27 9 view .LVU746
.LBE426:
.LBE439:
.LBB440:
.LBB433:
	.loc 3 25 47 view .LVU747
	vcvt.s32.f32	s15, s11
.LVL119:
	.loc 3 25 47 view .LVU748
.LBE433:
.LBE440:
	.loc 1 299 18 view .LVU749
	vadd.f32	s13, s13, s20
.LVL120:
.LBB441:
.LBB442:
	.loc 3 25 47 view .LVU750
	vcvt.s32.f32	s10, s12
.LBE442:
.LBE441:
.LBB448:
.LBB434:
	.loc 3 25 58 view .LVU751
	vcvt.f32.s32	s7, s15
.LBE434:
.LBE448:
.LBB449:
.LBB450:
	.loc 3 25 47 view .LVU752
	vcvt.s32.f32	s14, s13
.LBE450:
.LBE449:
.LBB456:
.LBB435:
	.loc 3 25 58 view .LVU753
	vcmpe.f32	s11, s7
.LBE435:
.LBE456:
.LBB457:
.LBB443:
	vcvt.f32.s32	s8, s10
.LBE443:
.LBE457:
.LBB458:
.LBB436:
	vmrs	APSR_nzcv, FPSCR
.LBE436:
.LBE458:
.LBB459:
.LBB451:
	vcvt.f32.s32	s9, s14
.LBE451:
.LBE459:
.LBB460:
.LBB444:
	vcmpe.f32	s12, s8
.LBE444:
.LBE460:
.LBB461:
.LBB437:
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU754
	vmov	r2, s15	@ int
.LBE437:
.LBE461:
.LBB462:
.LBB445:
	.loc 3 25 58 view .LVU755
	vmrs	APSR_nzcv, FPSCR
.LBE445:
.LBE462:
.LBB463:
.LBB452:
	vcmpe.f32	s13, s9
.LBE452:
.LBE463:
.LBB464:
.LBB438:
	.loc 3 25 56 view .LVU756
	sub	r1, r2, r3
.LVL121:
	.loc 3 25 56 view .LVU757
.LBE438:
.LBE464:
.LBB465:
.LBI441:
	.loc 3 25 19 is_stmt 1 view .LVU758
.LBB446:
	.loc 3 25 40 view .LVU759
	.loc 3 25 58 is_stmt 0 view .LVU760
	movmi	r3, #1
	movpl	r3, #0
	.loc 3 25 56 view .LVU761
	vmov	r2, s10	@ int
.LBE446:
.LBE465:
.LBB466:
.LBB453:
	.loc 3 25 58 view .LVU762
	vmrs	APSR_nzcv, FPSCR
.LBE453:
.LBE466:
.LBB467:
.LBB447:
	.loc 3 25 56 view .LVU763
	sub	r4, r2, r3
.LVL122:
	.loc 3 25 56 view .LVU764
.LBE447:
.LBE467:
.LBB468:
.LBI449:
	.loc 3 25 19 is_stmt 1 view .LVU765
.LBB454:
	.loc 3 25 40 view .LVU766
	.loc 3 25 56 is_stmt 0 view .LVU767
	vmov	ip, s14	@ int
	.loc 3 25 58 view .LVU768
	movmi	r3, #1
	movpl	r3, #0
.LBE454:
.LBE468:
	.loc 1 299 18 view .LVU769
	add	r2, r4, #2
.LBB469:
.LBB455:
	.loc 3 25 56 view .LVU770
	sub	r3, ip, r3
.LVL123:
	.loc 3 25 56 view .LVU771
.LBE455:
.LBE469:
	.loc 1 299 18 view .LVU772
	ldr	r0, [fp, #40]
	str	r1, [sp, #56]
	str	r3, [sp, #52]
.LVL124:
	.loc 1 299 18 view .LVU773
	bl	World_GetBlock
.LVL125:
	.loc 1 301 4 is_stmt 1 view .LVU774
	.loc 1 301 25 is_stmt 0 view .LVU775
	ldr	r3, [sp, #52]
	ldr	r1, [sp, #56]
	ldr	r0, [fp, #40]
	add	r2, r4, #1
	bl	World_GetBlock
.LVL126:
	.loc 1 303 4 is_stmt 1 view .LVU776
	.loc 1 303 149 view .LVU777
.LBB470:
.LBI470:
	.loc 1 207 6 view .LVU778
.LBB471:
	.loc 1 208 2 view .LVU779
	.loc 1 208 5 is_stmt 0 view .LVU780
	ldrb	r3, [fp, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	.loc 1 208 23 view .LVU781
	ldrb	r2, [fp, #35]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L123
	.loc 1 209 3 is_stmt 1 view .LVU782
	.loc 1 209 31 is_stmt 0 view .LVU783
	vldr.32	s15, .L197+60
	vmul.f32	s13, s26, s15
	.loc 1 210 31 view .LVU784
	vmul.f32	s15, s27, s15
	.loc 1 211 22 view .LVU785
	ldr	r3, .L197+44
	vldr.32	s14, [fp, #28]
	str	r3, [fp, #64]	@ float
	.loc 1 212 18 view .LVU786
	mov	r3, #1
	.loc 1 209 22 view .LVU787
	vstr.32	s13, [fp, #60]
	.loc 1 210 3 is_stmt 1 view .LVU788
	.loc 1 210 22 is_stmt 0 view .LVU789
	vstr.32	s15, [fp, #68]
	.loc 1 211 3 is_stmt 1 view .LVU790
	.loc 1 212 3 view .LVU791
	.loc 1 213 3 view .LVU792
.LVL127:
	.loc 1 213 3 is_stmt 0 view .LVU793
.LBE471:
.LBE470:
.LBE408:
	.loc 1 306 3 is_stmt 1 view .LVU794
.LBB475:
.LBB473:
.LBB472:
	.loc 1 213 21 is_stmt 0 view .LVU795
	strb	r2, [fp, #36]
	.loc 1 212 18 view .LVU796
	strb	r3, [fp, #33]
.L127:
	.loc 1 212 18 view .LVU797
.LBE472:
.LBE473:
.LBE475:
	.loc 1 307 3 is_stmt 1 view .LVU798
	.loc 1 307 26 is_stmt 0 view .LVU799
	vcmpe.f32	s14, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L189
	.loc 1 307 55 is_stmt 1 discriminator 2 view .LVU800
	.loc 1 307 73 is_stmt 0 discriminator 2 view .LVU801
	vldr.32	s13, .L197+64
	vadd.f32	s14, s14, s13
	.loc 1 317 22 discriminator 2 view .LVU802
	vldr.32	s15, [fp, #64]
	.loc 1 307 73 discriminator 2 view .LVU803
	vstr.32	s14, [fp, #28]
	b	.L130
.LVL128:
.L194:
	.loc 1 319 81 discriminator 1 view .LVU804
	vldr.32	s13, .L197+68
	vcmpe.f32	s14, s13
	vmrs	APSR_nzcv, FPSCR
	movgt	r3, #1
	movle	r3, #0
	b	.L137
.L193:
	.loc 1 318 81 discriminator 1 view .LVU805
	vldr.32	s12, .L197+68
	vcmpe.f32	s13, s12
	vmrs	APSR_nzcv, FPSCR
	movgt	r3, #1
	movle	r3, #0
	b	.L134
.LVL129:
.L196:
	.loc 1 236 10 is_stmt 1 view .LVU806
	.loc 1 238 8 view .LVU807
	.loc 1 238 18 is_stmt 0 view .LVU808
	ldrb	r3, [fp, #36]	@ zero_extendqisi2
	.loc 1 238 11 view .LVU809
	vldr.32	s13, .L197+72
	cmp	r3, #0
	movne	r2, r3
	vmovne.f32	s14, s13
	str	r2, [sp, #80]
	b	.L107
.LVL130:
.L117:
.LBB476:
.LBB373:
	.loc 1 279 51 is_stmt 1 discriminator 3 view .LVU810
	.loc 1 279 68 is_stmt 0 discriminator 3 view .LVU811
	mov	r3, #1
	strb	r3, [fp, #32]
	b	.L118
.LVL131:
.L192:
	.loc 1 279 68 discriminator 3 view .LVU812
.LBE373:
.LBE476:
.LBB477:
.LBB404:
	.loc 2 17 51 discriminator 3 view .LVU813
	vsub.f32	s20, s20, s29
.LVL132:
	.loc 2 17 51 discriminator 3 view .LVU814
	vsub.f32	s19, s19, s28
.LVL133:
	.loc 2 17 51 discriminator 3 view .LVU815
.LBE404:
.LBE477:
	.loc 1 309 116 discriminator 3 view .LVU816
	vcmp.f32	s20, #0
	.loc 1 309 61 discriminator 3 view .LVU817
	vldr.32	s15, [fp, #4]
	.loc 1 309 116 discriminator 3 view .LVU818
	vmrs	APSR_nzcv, FPSCR
	.loc 1 309 96 discriminator 3 view .LVU819
	vcmp.f32	s19, #0
	.loc 1 309 116 discriminator 3 view .LVU820
	movne	r3, #1
	moveq	r3, #0
	.loc 1 309 96 discriminator 3 view .LVU821
	vmrs	APSR_nzcv, FPSCR
	.loc 1 309 61 discriminator 3 view .LVU822
	vcmpe.f32	s15, s21
	.loc 1 309 116 discriminator 3 view .LVU823
	moveq	r3, #0
	andne	r3, r3, #1
	.loc 1 309 61 discriminator 3 view .LVU824
	vmrs	APSR_nzcv, FPSCR
	.loc 1 309 116 discriminator 3 view .LVU825
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	beq	.L189
	.loc 1 311 4 is_stmt 1 view .LVU826
	.loc 1 311 13 is_stmt 0 view .LVU827
	ldm	fp, {r0, r1, r2}
	.loc 1 312 21 view .LVU828
	mov	r3, #1
	strb	r3, [fp, #32]
	.loc 1 311 13 view .LVU829
	add	r3, sp, #120
	.loc 1 312 21 view .LVU830
	vmov.f32	s15, s16
	.loc 1 311 13 view .LVU831
	stm	r3, {r0, r1, r2}
.LVL134:
	.loc 1 312 4 is_stmt 1 view .LVU832
	.loc 1 313 4 view .LVU833
	b	.L130
.LVL135:
.L185:
.LBB478:
.LBB474:
.LBB427:
.LBB423:
.LBB421:
	.loc 2 23 42 is_stmt 0 view .LVU834
	bl	sqrtf
.LVL136:
	.loc 2 23 42 view .LVU835
	vmov.f32	s15, s0
	b	.L126
.LBE421:
.LBE423:
.LBE427:
.LBE474:
.LBE478:
.LBE481:
	.cfi_endproc
.LFE149:
	.size	Player_Move, .-Player_Move
	.section	.rodata.str1.4
	.align	2
.LC43:
	.ascii	"romfs:/assets/sound/entity/player/hit.opus\000"
	.section	.text.Player_PlaceBlock,"ax",%progbits
	.align	2
	.global	Player_PlaceBlock
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_PlaceBlock, %function
Player_PlaceBlock:
.LVL137:
.LFB150:
	.loc 1 325 54 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 326 2 view .LVU837
	.loc 1 325 54 is_stmt 0 view .LVU838
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 1 326 12 view .LVU839
	ldr	r0, [r0, #40]
.LVL138:
	.loc 1 326 59 view .LVU840
	vldr.32	s15, [r4, #76]
	.loc 1 326 5 view .LVU841
	cmp	r0, #0
	.loc 1 325 54 view .LVU842
	sub	sp, sp, #12
	.cfi_def_cfa_offset 32
	.loc 1 326 5 view .LVU843
	beq	.L200
	.loc 1 326 20 discriminator 1 view .LVU844
	ldrb	r3, [r4, #193]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L200
	.loc 1 326 50 discriminator 2 view .LVU845
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L228
.LVL139:
.L199:
	.loc 1 344 1 view .LVU846
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL140:
.L228:
	.cfi_restore_state
.LBB482:
	.loc 1 327 3 is_stmt 1 view .LVU847
	.loc 1 327 14 is_stmt 0 view .LVU848
	ldrb	r2, [r4, #188]	@ zero_extendqisi2
	ldr	r3, .L230+16
	add	r2, r2, r2, lsl #1
	.loc 1 330 37 view .LVU849
	ldr	ip, [r3, r2, lsl #2]
	mov	r5, r1
	ldr	r1, [r4, #172]
.LVL141:
	.loc 1 328 7 view .LVU850
	vldr.32	s15, [r4]
	.loc 1 330 37 view .LVU851
	add	r1, r1, ip
	.loc 1 328 7 view .LVU852
	vmov	s14, r1	@ int
	vldr.32	s12, .L230
.LBB483:
.LBB484:
	.loc 3 33 19 view .LVU853
	vldr.32	s13, .L230+4
.LBE484:
.LBE483:
	.loc 1 328 7 view .LVU854
	vcvt.f32.s32	s14, s14
	vsub.f32	s15, s15, s12
.LBB489:
.LBB485:
	.loc 3 33 19 view .LVU855
	vadd.f32	s11, s14, s13
	.loc 3 33 78 view .LVU856
	vcmpe.f32	s15, s11
	vmrs	APSR_nzcv, FPSCR
.LBE485:
.LBE489:
	.loc 1 327 14 view .LVU857
	add	r3, r3, r2, lsl #2
.LVL142:
	.loc 1 328 3 is_stmt 1 view .LVU858
	.loc 1 330 72 is_stmt 0 view .LVU859
	ldr	ip, [r3, #4]
	ldr	r2, [r4, #176]
	.loc 1 328 7 view .LVU860
	vldr.32	s10, [r4, #4]
	.loc 1 330 72 view .LVU861
	add	r2, r2, ip
	.loc 1 331 28 view .LVU862
	ldr	ip, [r3, #8]
	ldr	r3, [r4, #180]
.LVL143:
	.loc 1 329 22 view .LVU863
	vldr.32	s9, [r4, #8]
	.loc 1 331 28 view .LVU864
	add	r3, r3, ip
.LVL144:
.LBB490:
.LBI483:
	.loc 3 32 19 is_stmt 1 view .LVU865
.LBB486:
	.loc 3 33 2 view .LVU866
	.loc 3 33 78 is_stmt 0 view .LVU867
	bhi	.L202
	.loc 3 33 30 view .LVU868
	vldr.32	s11, .L230+8
	vadd.f32	s15, s15, s11
.LVL145:
	.loc 3 33 24 view .LVU869
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bls	.L229
.LVL146:
.L202:
	.loc 3 33 24 view .LVU870
.LBE486:
.LBE490:
	.loc 1 333 3 is_stmt 1 view .LVU871
	.loc 1 334 75 is_stmt 0 view .LVU872
	ldr	ip, [r4, #136]
	.loc 1 339 3 view .LVU873
	ldr	r6, .L230+20
	.loc 1 333 3 view .LVU874
	add	ip, ip, ip, lsl #1
	add	ip, r4, ip
	ldrb	lr, [ip, #145]	@ zero_extendqisi2
	.loc 1 339 3 view .LVU875
	add	r7, r6, #32
	.loc 1 333 3 view .LVU876
	str	lr, [sp, #4]
.LVL147:
	.loc 1 333 3 view .LVU877
	ldrb	ip, [ip, #144]	@ zero_extendqisi2
	str	ip, [sp]
	bl	World_SetBlockAndMeta
.LVL148:
	.loc 1 336 3 is_stmt 1 view .LVU878
	.loc 1 336 21 is_stmt 0 view .LVU879
	mov	r3, #0
	.loc 1 339 3 view .LVU880
	mov	r0, r5
	.loc 1 336 21 view .LVU881
	strb	r3, [r5, #128]
	.loc 1 337 3 is_stmt 1 view .LVU882
.LVL149:
	.loc 1 338 3 view .LVU883
	.loc 1 338 18 is_stmt 0 view .LVU884
	strb	r3, [r5]
	.loc 1 339 3 is_stmt 1 view .LVU885
	bl	strlen
.LVL150:
	add	ip, r5, r0
.L212:
	mov	lr, r6
	add	ip, ip, #16
	ldmia	lr!, {r0, r1, r2, r3}
	cmp	lr, r7
	add	r6, r6, #16
	str	r0, [ip, #-16]	@ unaligned
	str	r1, [ip, #-12]	@ unaligned
	str	r2, [ip, #-8]	@ unaligned
	str	r3, [ip, #-4]	@ unaligned
	bne	.L212
	ldmia	r6!, {r0, r1}
	ldrh	r3, [r6]	@ unaligned
	str	r0, [ip]	@ unaligned
	strh	r3, [ip, #8]	@ unaligned
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	.loc 1 341 3 is_stmt 0 view .LVU886
	mov	r0, r5
	.loc 1 339 3 view .LVU887
	str	r1, [ip, #4]	@ unaligned
	strb	r3, [ip, #10]
	.loc 1 341 3 is_stmt 1 view .LVU888
	bl	playopus
.LVL151:
.LBE482:
	.loc 1 343 12 is_stmt 0 view .LVU889
	vldr.32	s15, [r4, #76]
.LVL152:
.L200:
	.loc 1 343 2 is_stmt 1 view .LVU890
	.loc 1 343 5 is_stmt 0 view .LVU891
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L199
	.loc 1 343 39 is_stmt 1 discriminator 1 view .LVU892
	.loc 1 343 65 is_stmt 0 discriminator 1 view .LVU893
	ldr	r3, .L230+24
	str	r3, [r4, #76]	@ float
	.loc 1 344 1 discriminator 1 view .LVU894
	add	sp, sp, #12
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL153:
.L229:
	.cfi_restore_state
.LBB493:
	.loc 1 328 7 view .LVU895
	vmov	s15, r2	@ int
	vcvt.f32.s32	s15, s15
.LBB491:
.LBB487:
	.loc 3 33 55 view .LVU896
	vadd.f32	s14, s15, s13
.LVL154:
	.loc 3 33 42 view .LVU897
	vcmpe.f32	s10, s14
	vmrs	APSR_nzcv, FPSCR
	bhi	.L202
	.loc 3 33 66 view .LVU898
	vldr.32	s14, .L230+12
	vadd.f32	s10, s10, s14
.LVL155:
	.loc 3 33 60 view .LVU899
	vcmpe.f32	s15, s10
	vmrs	APSR_nzcv, FPSCR
	bhi	.L202
.LBE487:
.LBE491:
	.loc 1 328 7 view .LVU900
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vsub.f32	s9, s9, s12
.LVL156:
.LBB492:
.LBB488:
	.loc 3 33 91 view .LVU901
	vadd.f32	s13, s15, s13
	.loc 3 33 78 view .LVU902
	vcmpe.f32	s9, s13
	vmrs	APSR_nzcv, FPSCR
	bhi	.L202
	.loc 3 33 102 view .LVU903
	vadd.f32	s9, s9, s11
	.loc 3 33 96 view .LVU904
	vcmpe.f32	s15, s9
	vmrs	APSR_nzcv, FPSCR
	bls	.L199
	b	.L202
.L231:
	.align	2
.L230:
	.word	1051092582
	.word	1065353216
	.word	1059481190
	.word	1072064102
	.word	DirectionToOffset
	.word	.LC43
	.word	1045220557
.LBE488:
.LBE492:
.LBE493:
	.cfi_endproc
.LFE150:
	.size	Player_PlaceBlock, .-Player_PlaceBlock
	.section	.text.Player_BreakBlock,"ax",%progbits
	.align	2
	.global	Player_BreakBlock
	.syntax unified
	.arm
	.fpu vfp
	.type	Player_BreakBlock, %function
Player_BreakBlock:
.LVL157:
.LFB151:
	.loc 1 346 40 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 347 2 view .LVU906
	.loc 1 346 40 is_stmt 0 view .LVU907
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	.loc 1 347 12 view .LVU908
	ldr	r0, [r0, #40]
.LVL158:
	.loc 1 347 59 view .LVU909
	vldr.32	s15, [r4, #76]
	.loc 1 347 5 view .LVU910
	cmp	r0, #0
	.loc 1 346 40 view .LVU911
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	.loc 1 347 5 view .LVU912
	beq	.L233
	.loc 1 347 20 discriminator 1 view .LVU913
	ldrb	r3, [r4, #193]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L246
.L233:
	.loc 1 350 2 is_stmt 1 view .LVU914
	.loc 1 350 5 is_stmt 0 view .LVU915
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 350 39 is_stmt 1 view .LVU916
	.loc 1 350 65 is_stmt 0 view .LVU917
	ldrmi	r3, .L247
	strmi	r3, [r4, #76]	@ float
.L232:
	.loc 1 351 1 view .LVU918
	add	sp, sp, #8
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL159:
.L246:
	.cfi_restore_state
	.loc 1 347 50 discriminator 2 view .LVU919
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L232
	.loc 1 348 3 is_stmt 1 view .LVU920
	ldrd	r2, [r4, #176]
	mov	ip, #0
	ldr	r1, [r4, #172]
	str	ip, [sp]
	bl	World_SetBlock
.LVL160:
	.loc 1 350 12 is_stmt 0 view .LVU921
	vldr.32	s15, [r4, #76]
	b	.L233
.L248:
	.align	2
.L247:
	.word	1045220557
	.cfi_endproc
.LFE151:
	.size	Player_BreakBlock, .-Player_BreakBlock
	.global	GravityPlusFriction
	.global	MaxFallVelocity
	.global	MaxWalkVelocity
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC37:
	.word	0
	.word	2
	.word	1
	.type	GravityPlusFriction, %object
	.size	GravityPlusFriction, 4
GravityPlusFriction:
	.word	1092616192
	.type	MaxFallVelocity, %object
	.size	MaxFallVelocity, 4
MaxFallVelocity:
	.word	-1035468800
	.type	MaxWalkVelocity, %object
	.size	MaxWalkVelocity, 4
MaxWalkVelocity:
	.word	1082759578
	.text
.Letext0:
	.file 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 7 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 8 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 9 "/home/tobi/Dokumente/Craftus-Next/include/misc/Xorshift.h"
	.file 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 12 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 13 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.file 14 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 16 "/opt/devkitpro/libctru/include/3ds/thread.h"
	.file 17 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 18 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 19 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 20 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 21 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 22 "/home/tobi/Dokumente/Craftus-Next/include/world/WorkQueue.h"
	.file 23 "/home/tobi/Dokumente/Craftus-Next/include/world/World.h"
	.file 24 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Item.h"
	.file 25 "/home/tobi/Dokumente/Craftus-Next/include/inventory/ItemStack.h"
	.file 26 "/home/tobi/Dokumente/Craftus-Next/include/entity/Damage.h"
	.file 27 "/home/tobi/Dokumente/Craftus-Next/include/misc/Raycast.h"
	.file 28 "/opt/devkitpro/portlibs/3ds/include/opus/opusfile.h"
	.file 29 "/home/tobi/Dokumente/Craftus-Next/include/misc/Sound.h"
	.file 30 "/home/tobi/Dokumente/Craftus-Next/include/entity/Player.h"
	.file 31 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 32 "/opt/devkitpro/devkitARM/arm-none-eabi/include/math.h"
	.file 33 "/opt/devkitpro/libctru/include/3ds/svc.h"
	.file 34 "/home/tobi/Dokumente/Craftus-Next/include/gui/DebugUI.h"
	.file 35 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1f47
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x40
	.4byte	.LASF287
	.byte	0x1d
	.4byte	.LASF288
	.4byte	.LASF289
	.4byte	.LLRL133
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x41
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x2b
	.byte	0x17
	.4byte	0x4e
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x5
	.byte	0x39
	.byte	0x1c
	.4byte	0x68
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	0x7b
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x5
	.byte	0x67
	.byte	0x17
	.4byte	0xa1
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0x69
	.byte	0x20
	.4byte	0x34
	.uleb128 0x2a
	.4byte	0x2d
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x42
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.byte	0x13
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x82
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x6
	.byte	0x38
	.byte	0x13
	.4byte	0x95
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.4byte	0xa8
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x7
	.byte	0x3
	.byte	0xe
	.4byte	0x140
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x7
	.byte	0xb
	.byte	0x3
	.4byte	0x108
	.uleb128 0xf
	.4byte	0x2d
	.4byte	0x162
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x6
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x2
	.byte	0
	.uleb128 0x30
	.4byte	.LASF227
	.byte	0x7
	.byte	0x13
	.byte	0xc
	.4byte	0x14c
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0xc0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x8
	.byte	0xa
	.byte	0x6
	.4byte	0x278
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.4byte	0x284
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x2a
	.4byte	0x27d
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x9
	.byte	0x5
	.byte	0x12
	.4byte	0xe4
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0xa
	.byte	0xd1
	.byte	0x16
	.4byte	0xb9
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.4byte	.LASF74
	.uleb128 0x42
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0xb
	.byte	0x7
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x9
	.4byte	0x27d
	.uleb128 0xc
	.byte	0x8
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.4byte	0x2df
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0xc
	.byte	0x9
	.byte	0x9
	.4byte	0x295
	.byte	0
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0xc
	.byte	0xa
	.byte	0x8
	.4byte	0x2a8
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0xc
	.byte	0xb
	.byte	0x3
	.4byte	0x2bb
	.uleb128 0x31
	.2byte	0x2030
	.byte	0xd
	.byte	0x10
	.4byte	0x39d
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0xd
	.byte	0x11
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0xd
	.byte	0x12
	.byte	0x8
	.4byte	0x39d
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x13
	.byte	0xa
	.4byte	0x3b9
	.2byte	0x1004
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x15
	.byte	0xb
	.4byte	0xe4
	.2byte	0x2004
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x17
	.byte	0xb
	.4byte	0xcc
	.2byte	0x2008
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x19
	.byte	0x6
	.4byte	0x3d5
	.2byte	0x200a
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1a
	.byte	0xb
	.4byte	0xe4
	.2byte	0x200c
	.uleb128 0x43
	.ascii	"vbo\000"
	.byte	0xd
	.byte	0x1c
	.byte	0xc
	.4byte	0x2df
	.2byte	0x2010
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1c
	.byte	0x11
	.4byte	0x2df
	.2byte	0x2018
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x1d
	.byte	0x9
	.4byte	0x295
	.2byte	0x2020
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x1d
	.byte	0x13
	.4byte	0x295
	.2byte	0x2024
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1e
	.byte	0xb
	.4byte	0xe4
	.2byte	0x2028
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x1f
	.byte	0x6
	.4byte	0x3d5
	.2byte	0x202c
	.byte	0
	.uleb128 0xf
	.4byte	0x16e
	.4byte	0x3b9
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.4byte	0xc0
	.4byte	0x3d5
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.4byte	.LASF90
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0xd
	.byte	0x20
	.byte	0x3
	.4byte	0x2eb
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0xd
	.byte	0x22
	.byte	0xe
	.4byte	0x408
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0xd
	.byte	0x26
	.byte	0x3
	.4byte	0x3e8
	.uleb128 0x32
	.4byte	0x102ac
	.byte	0xd
	.byte	0x28
	.4byte	0x4d7
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0xd
	.byte	0x2a
	.byte	0xb
	.4byte	0xe4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0xd
	.byte	0x2b
	.byte	0xb
	.4byte	0xe4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0xd
	.byte	0x2d
	.byte	0xb
	.4byte	0xe4
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0xd
	.byte	0x2f
	.byte	0x13
	.4byte	0x408
	.byte	0xc
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0xd
	.byte	0x31
	.byte	0x6
	.4byte	0x2d
	.byte	0x10
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0xd
	.byte	0x31
	.byte	0x9
	.4byte	0x2d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xd
	.byte	0x32
	.byte	0xa
	.4byte	0x4d7
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xd
	.byte	0x34
	.byte	0xa
	.4byte	0x4e7
	.4byte	0x10198
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0xd
	.byte	0x35
	.byte	0xb
	.4byte	0xe4
	.4byte	0x10298
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0xd
	.byte	0x37
	.byte	0x9
	.4byte	0x295
	.4byte	0x1029c
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0xd
	.byte	0x39
	.byte	0xb
	.4byte	0xe4
	.4byte	0x102a0
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0xd
	.byte	0x3a
	.byte	0x6
	.4byte	0x3d5
	.4byte	0x102a4
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0xd
	.byte	0x3c
	.byte	0x6
	.4byte	0x2d
	.4byte	0x102a8
	.byte	0
	.uleb128 0xf
	.4byte	0x3dc
	.4byte	0x4e7
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.4byte	0xc0
	.4byte	0x4fd
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0xd
	.byte	0x3d
	.byte	0x3
	.4byte	0x414
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x9
	.4byte	0x26
	.uleb128 0x2a
	.4byte	0x26
	.uleb128 0xb
	.byte	0x8
	.byte	0x4
	.4byte	.LASF106
	.uleb128 0x20
	.ascii	"u32\000"
	.byte	0xe
	.byte	0x17
	.byte	0x12
	.4byte	0xe4
	.uleb128 0x20
	.ascii	"s32\000"
	.byte	0xe
	.byte	0x1c
	.byte	0x11
	.4byte	0xd8
	.uleb128 0x20
	.ascii	"s64\000"
	.byte	0xe
	.byte	0x1d
	.byte	0x11
	.4byte	0xf0
	.uleb128 0x5
	.4byte	.LASF107
	.byte	0xf
	.byte	0xa
	.byte	0x11
	.4byte	0x2aa
	.uleb128 0xc
	.byte	0x8
	.byte	0xf
	.byte	0x13
	.byte	0x9
	.4byte	0x573
	.uleb128 0x2
	.4byte	.LASF108
	.byte	0xf
	.byte	0x15
	.byte	0x6
	.4byte	0x52b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF109
	.byte	0xf
	.byte	0x16
	.byte	0xc
	.4byte	0x543
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF110
	.byte	0xf
	.byte	0x17
	.byte	0x3
	.4byte	0x54f
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0x10
	.byte	0x16
	.byte	0x1c
	.4byte	0x58b
	.uleb128 0x9
	.4byte	0x590
	.uleb128 0x33
	.4byte	.LASF184
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x11
	.byte	0x28
	.byte	0x1
	.4byte	0x5bb
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x11
	.byte	0x31
	.byte	0x1
	.4byte	0x5e1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x12
	.byte	0x21
	.byte	0xe
	.4byte	0x607
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x3
	.byte	0
	.uleb128 0x44
	.byte	0x7
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x623
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.4byte	0x643
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.4byte	0x68
	.byte	0x15
	.byte	0x9
	.byte	0x1
	.4byte	0x65f
	.uleb128 0x34
	.4byte	.LASF129
	.2byte	0x100
	.uleb128 0x34
	.4byte	.LASF130
	.2byte	0x200
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x16
	.byte	0xd
	.byte	0xe
	.4byte	0x691
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0x16
	.byte	0x14
	.byte	0x3
	.4byte	0x65f
	.uleb128 0xc
	.byte	0xc
	.byte	0x16
	.byte	0x16
	.byte	0x9
	.4byte	0x6ce
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x16
	.byte	0x17
	.byte	0x11
	.4byte	0x691
	.byte	0
	.uleb128 0x2
	.4byte	.LASF139
	.byte	0x16
	.byte	0x18
	.byte	0x9
	.4byte	0x6ce
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x16
	.byte	0x19
	.byte	0xb
	.4byte	0xe4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x4fd
	.uleb128 0x5
	.4byte	.LASF140
	.byte	0x16
	.byte	0x1a
	.byte	0x3
	.4byte	0x69d
	.uleb128 0xc
	.byte	0xc
	.byte	0x16
	.byte	0x1d
	.byte	0x2
	.4byte	0x710
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x16
	.byte	0x1d
	.byte	0x17
	.4byte	0x710
	.byte	0
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x16
	.byte	0x1d
	.byte	0x21
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x16
	.byte	0x1d
	.byte	0x29
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x6d3
	.uleb128 0xc
	.byte	0x18
	.byte	0x16
	.byte	0x1c
	.byte	0x9
	.4byte	0x746
	.uleb128 0x2
	.4byte	.LASF144
	.byte	0x16
	.byte	0x1d
	.byte	0x35
	.4byte	0x6df
	.byte	0
	.uleb128 0x2
	.4byte	.LASF145
	.byte	0x16
	.byte	0x1f
	.byte	0xd
	.4byte	0x573
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF146
	.byte	0x16
	.byte	0x20
	.byte	0xc
	.4byte	0x543
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF147
	.byte	0x16
	.byte	0x21
	.byte	0x3
	.4byte	0x715
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x17
	.byte	0x11
	.byte	0xe
	.4byte	0x77e
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF153
	.byte	0x17
	.byte	0x11
	.byte	0x71
	.4byte	0x752
	.uleb128 0x45
	.byte	0
	.byte	0x17
	.byte	0x18
	.byte	0x3
	.uleb128 0x35
	.byte	0
	.byte	0x17
	.byte	0x17
	.byte	0x2
	.4byte	0x7a5
	.uleb128 0x46
	.4byte	.LASF178
	.byte	0x17
	.byte	0x1a
	.byte	0x5
	.4byte	0x78a
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x17
	.byte	0x13
	.byte	0x9
	.4byte	0x7d6
	.uleb128 0x2
	.4byte	.LASF154
	.byte	0x17
	.byte	0x14
	.byte	0xb
	.4byte	0xfc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF138
	.byte	0x17
	.byte	0x15
	.byte	0xf
	.4byte	0x77e
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x17
	.byte	0x1b
	.byte	0x4
	.4byte	0x78f
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF156
	.byte	0x17
	.byte	0x1c
	.byte	0x3
	.4byte	0x7a5
	.uleb128 0xc
	.byte	0xc
	.byte	0x17
	.byte	0x2a
	.byte	0x2
	.4byte	0x813
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x17
	.byte	0x2a
	.byte	0x13
	.4byte	0x813
	.byte	0
	.uleb128 0x2
	.4byte	.LASF142
	.byte	0x17
	.byte	0x2a
	.byte	0x1d
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF143
	.byte	0x17
	.byte	0x2a
	.byte	0x25
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x6ce
	.uleb128 0x32
	.4byte	0xb5e278
	.byte	0x17
	.byte	0x1f
	.4byte	0x8c2
	.uleb128 0x2
	.4byte	.LASF157
	.byte	0x17
	.byte	0x20
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0x17
	.byte	0x22
	.byte	0x7
	.4byte	0x8c2
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF159
	.byte	0x17
	.byte	0x24
	.byte	0x14
	.4byte	0x7d6
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF160
	.byte	0x17
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF161
	.byte	0x17
	.byte	0x26
	.byte	0x19
	.4byte	0x2d
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF162
	.byte	0x17
	.byte	0x28
	.byte	0x8
	.4byte	0x8d2
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x17
	.byte	0x29
	.byte	0x9
	.4byte	0x8e2
	.4byte	0xb5e118
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x17
	.byte	0x2a
	.byte	0x31
	.4byte	0x7e2
	.4byte	0xb5e25c
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0x17
	.byte	0x2c
	.byte	0xd
	.4byte	0x8f8
	.4byte	0xb5e268
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x17
	.byte	0x2e
	.byte	0xd
	.4byte	0x289
	.4byte	0xb5e26c
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x17
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xf
	.4byte	0x27d
	.4byte	0x8d2
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.4byte	0x4fd
	.4byte	0x8e2
	.uleb128 0x8
	.4byte	0xb9
	.byte	0xb3
	.byte	0
	.uleb128 0xf
	.4byte	0x6ce
	.4byte	0x8f8
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x8
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x746
	.uleb128 0x5
	.4byte	.LASF168
	.byte	0x17
	.byte	0x31
	.byte	0x3
	.4byte	0x818
	.uleb128 0x10
	.byte	0x1
	.4byte	0x4e
	.byte	0x18
	.byte	0xa
	.byte	0x6
	.4byte	0x923
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x3
	.byte	0x19
	.byte	0xa
	.byte	0x9
	.4byte	0x954
	.uleb128 0x2
	.4byte	.LASF171
	.byte	0x19
	.byte	0xb
	.byte	0x8
	.4byte	0x16e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF172
	.byte	0x19
	.byte	0xc
	.byte	0xa
	.4byte	0xc0
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF173
	.byte	0x19
	.byte	0xc
	.byte	0x10
	.4byte	0xc0
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF174
	.byte	0x19
	.byte	0xd
	.byte	0x3
	.4byte	0x923
	.uleb128 0xc
	.byte	0x8
	.byte	0x1a
	.byte	0x5
	.byte	0x9
	.4byte	0x984
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x1a
	.byte	0x6
	.byte	0xa
	.4byte	0x27d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x1a
	.byte	0x7
	.byte	0x9
	.4byte	0x2d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF177
	.byte	0x1a
	.byte	0x8
	.byte	0x2
	.4byte	0x960
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.4byte	0x9bb
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.byte	0xa
	.byte	0xc
	.4byte	0x26
	.byte	0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.byte	0xa
	.byte	0xf
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x35
	.byte	0xc
	.byte	0x2
	.byte	0x7
	.byte	0x9
	.4byte	0x9d4
	.uleb128 0x47
	.ascii	"v\000"
	.byte	0x2
	.byte	0x8
	.byte	0x8
	.4byte	0x9d4
	.uleb128 0x48
	.4byte	0x990
	.byte	0
	.uleb128 0xf
	.4byte	0x26
	.4byte	0x9e4
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF179
	.byte	0x2
	.byte	0xc
	.byte	0x3
	.4byte	0x9bb
	.uleb128 0xc
	.byte	0x14
	.byte	0x1b
	.byte	0x7
	.byte	0x9
	.4byte	0xa35
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x1b
	.byte	0x8
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x1b
	.byte	0x8
	.byte	0x9
	.4byte	0x2d
	.byte	0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x1b
	.byte	0x8
	.byte	0xc
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x1b
	.byte	0x9
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0x1b
	.byte	0xa
	.byte	0xc
	.4byte	0x140
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF182
	.byte	0x1b
	.byte	0xb
	.byte	0x3
	.4byte	0x9f0
	.uleb128 0x5
	.4byte	.LASF183
	.byte	0x1c
	.byte	0x85
	.byte	0x1c
	.4byte	0xa4d
	.uleb128 0x33
	.4byte	.LASF183
	.uleb128 0xc
	.byte	0x8c
	.byte	0x1d
	.byte	0x4
	.byte	0x9
	.4byte	0xa90
	.uleb128 0x2
	.4byte	.LASF185
	.byte	0x1d
	.byte	0x5
	.byte	0x7
	.4byte	0xa90
	.byte	0
	.uleb128 0x2
	.4byte	.LASF186
	.byte	0x1d
	.byte	0x6
	.byte	0x6
	.4byte	0x3d5
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF187
	.byte	0x1d
	.byte	0x7
	.byte	0xa
	.4byte	0xaa0
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF188
	.byte	0x1d
	.byte	0x8
	.byte	0xf
	.4byte	0xaa5
	.byte	0x88
	.byte	0
	.uleb128 0xf
	.4byte	0x27d
	.4byte	0xaa0
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x57f
	.uleb128 0x9
	.4byte	0xa41
	.uleb128 0x5
	.4byte	.LASF189
	.byte	0x1d
	.byte	0x9
	.byte	0x2
	.4byte	0xa52
	.uleb128 0x31
	.2byte	0x184
	.byte	0x1e
	.byte	0x15
	.4byte	0xcad
	.uleb128 0x2
	.4byte	.LASF190
	.byte	0x1e
	.byte	0x16
	.byte	0x9
	.4byte	0x9e4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x1e
	.byte	0x17
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0xd
	.ascii	"yaw\000"
	.byte	0x1e
	.byte	0x17
	.byte	0xf
	.4byte	0x26
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x1e
	.byte	0x18
	.byte	0x8
	.4byte	0x26
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF193
	.byte	0x1e
	.byte	0x18
	.byte	0x11
	.4byte	0x26
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x1e
	.byte	0x18
	.byte	0x19
	.4byte	0x26
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x1e
	.byte	0x19
	.byte	0x6
	.4byte	0x3d5
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x1e
	.byte	0x19
	.byte	0x10
	.4byte	0x3d5
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x1e
	.byte	0x19
	.byte	0x18
	.4byte	0x3d5
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x1e
	.byte	0x19
	.byte	0x23
	.4byte	0x3d5
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x1e
	.byte	0x19
	.byte	0x2b
	.4byte	0x3d5
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x1e
	.byte	0x1a
	.byte	0x9
	.4byte	0xcad
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF201
	.byte	0x1e
	.byte	0x1c
	.byte	0x9
	.4byte	0x9e4
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF202
	.byte	0x1e
	.byte	0x1e
	.byte	0x6
	.4byte	0x3d5
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF203
	.byte	0x1e
	.byte	0x20
	.byte	0x9
	.4byte	0x9e4
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF204
	.byte	0x1e
	.byte	0x21
	.byte	0x8
	.4byte	0x26
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF205
	.byte	0x1e
	.byte	0x23
	.byte	0x8
	.4byte	0x26
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF206
	.byte	0x1e
	.byte	0x24
	.byte	0x6
	.4byte	0x2d
	.byte	0x50
	.uleb128 0xd
	.ascii	"hp\000"
	.byte	0x1e
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF207
	.byte	0x1e
	.byte	0x27
	.byte	0x6
	.4byte	0x2d
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0x1e
	.byte	0x28
	.byte	0x6
	.4byte	0x2d
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0x1e
	.byte	0x29
	.byte	0x6
	.4byte	0x2d
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0x1e
	.byte	0x2a
	.byte	0x6
	.4byte	0x2d
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x1e
	.byte	0x2b
	.byte	0x8
	.4byte	0x26
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x1e
	.byte	0x2d
	.byte	0x8
	.4byte	0x26
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x1e
	.byte	0x2e
	.byte	0x8
	.4byte	0x26
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x1e
	.byte	0x2f
	.byte	0x8
	.4byte	0x26
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x1e
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x1e
	.byte	0x32
	.byte	0x6
	.4byte	0x2d
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF217
	.byte	0x1e
	.byte	0x33
	.byte	0x6
	.4byte	0x3d5
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF218
	.byte	0x1e
	.byte	0x35
	.byte	0x6
	.4byte	0x2d
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF219
	.byte	0x1e
	.byte	0x36
	.byte	0x6
	.4byte	0x2d
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF220
	.byte	0x1e
	.byte	0x37
	.byte	0x6
	.4byte	0x2d
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF221
	.byte	0x1e
	.byte	0x38
	.byte	0xc
	.4byte	0xcb2
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF222
	.byte	0x1e
	.byte	0x3a
	.byte	0x11
	.4byte	0xa35
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF223
	.byte	0x1e
	.byte	0x3b
	.byte	0x6
	.4byte	0x3d5
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0x1e
	.byte	0x3b
	.byte	0x14
	.4byte	0x3d5
	.byte	0xc1
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0x1e
	.byte	0x3c
	.byte	0xc
	.4byte	0xcc2
	.byte	0xc2
	.byte	0
	.uleb128 0x9
	.4byte	0x8fd
	.uleb128 0xf
	.4byte	0x954
	.4byte	0xcc2
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x954
	.4byte	0xcd2
	.uleb128 0x8
	.4byte	0xb9
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF226
	.byte	0x1e
	.byte	0x3d
	.byte	0x3
	.4byte	0xab6
	.uleb128 0xc
	.byte	0x18
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.4byte	0xd02
	.uleb128 0xd
	.ascii	"min\000"
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.4byte	0x9e4
	.byte	0
	.uleb128 0xd
	.ascii	"max\000"
	.byte	0x4
	.byte	0x7
	.byte	0x1e
	.4byte	0x9e4
	.byte	0xc
	.byte	0
	.uleb128 0x20
	.ascii	"Box\000"
	.byte	0x4
	.byte	0x7
	.byte	0x25
	.4byte	0xcde
	.uleb128 0x2b
	.4byte	.LASF228
	.byte	0xd9
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxWalkVelocity
	.uleb128 0x2b
	.4byte	.LASF229
	.byte	0xda
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxFallVelocity
	.uleb128 0x2b
	.4byte	.LASF230
	.byte	0xdb
	.4byte	0x513
	.uleb128 0x5
	.byte	0x3
	.4byte	GravityPlusFriction
	.uleb128 0x21
	.4byte	.LASF231
	.byte	0x17
	.byte	0x42
	.4byte	0xd63
	.uleb128 0x6
	.4byte	0xcad
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x16e
	.byte	0
	.uleb128 0x21
	.4byte	.LASF232
	.byte	0x1d
	.byte	0xb
	.4byte	0xd74
	.uleb128 0x6
	.4byte	0xd74
	.byte	0
	.uleb128 0x9
	.4byte	0xaaa
	.uleb128 0x22
	.4byte	.LASF234
	.byte	0x1f
	.byte	0x2a
	.byte	0x7
	.4byte	0x2b6
	.4byte	0xd99
	.uleb128 0x6
	.4byte	0x2b6
	.uleb128 0x6
	.4byte	0x278
	.uleb128 0x6
	.4byte	0x295
	.byte	0
	.uleb128 0x21
	.4byte	.LASF233
	.byte	0x17
	.byte	0x46
	.4byte	0xdc3
	.uleb128 0x6
	.4byte	0xcad
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x16e
	.uleb128 0x6
	.4byte	0xc0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF235
	.2byte	0x178
	.byte	0xe
	.4byte	0x26
	.4byte	0xdd9
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x22
	.4byte	.LASF236
	.byte	0x4
	.byte	0xe
	.byte	0x5
	.4byte	0x3d5
	.4byte	0xe08
	.uleb128 0x6
	.4byte	0xd02
	.uleb128 0x6
	.4byte	0xd02
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0xe08
	.uleb128 0x6
	.4byte	0x50e
	.uleb128 0x6
	.4byte	0x509
	.byte	0
	.uleb128 0x9
	.4byte	0x9e4
	.uleb128 0x49
	.4byte	.LASF237
	.byte	0x21
	.2byte	0x35b
	.byte	0x6
	.4byte	0xe20
	.uleb128 0x6
	.4byte	0x537
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF274
	.byte	0x1a
	.byte	0xa
	.byte	0x6
	.4byte	0xe2e
	.uleb128 0x15
	.byte	0
	.uleb128 0x23
	.4byte	.LASF238
	.2byte	0x13e
	.byte	0xf
	.4byte	0x518
	.4byte	0xe44
	.uleb128 0x6
	.4byte	0x518
	.byte	0
	.uleb128 0x22
	.4byte	.LASF239
	.byte	0x1b
	.byte	0xd
	.byte	0x5
	.4byte	0x3d5
	.4byte	0xe69
	.uleb128 0x6
	.4byte	0xcad
	.uleb128 0x6
	.4byte	0x9e4
	.uleb128 0x6
	.4byte	0x9e4
	.uleb128 0x6
	.4byte	0xe69
	.byte	0
	.uleb128 0x9
	.4byte	0xa35
	.uleb128 0x23
	.4byte	.LASF240
	.2byte	0x163
	.byte	0xe
	.4byte	0x26
	.4byte	0xe84
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x23
	.4byte	.LASF241
	.2byte	0x164
	.byte	0xe
	.4byte	0x26
	.4byte	0xe9a
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x22
	.4byte	.LASF242
	.byte	0x17
	.byte	0x41
	.byte	0x7
	.4byte	0x16e
	.4byte	0xebf
	.uleb128 0x6
	.4byte	0xcad
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.uleb128 0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x21
	.4byte	.LASF243
	.byte	0x22
	.byte	0x8
	.4byte	0xed1
	.uleb128 0x6
	.4byte	0x278
	.uleb128 0x15
	.byte	0
	.uleb128 0x36
	.4byte	.LASF244
	.2byte	0x15a
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf0b
	.uleb128 0x2c
	.4byte	.LASF246
	.2byte	0x15a
	.byte	0x20
	.4byte	0xf0b
	.4byte	.LLST132
	.4byte	.LVUS132
	.uleb128 0x16
	.4byte	.LVL160
	.4byte	0xd3e
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xcd2
	.uleb128 0x36
	.4byte	.LASF245
	.2byte	0x145
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105c
	.uleb128 0x2c
	.4byte	.LASF246
	.2byte	0x145
	.byte	0x20
	.4byte	0xf0b
	.4byte	.LLST114
	.4byte	.LVUS114
	.uleb128 0x2c
	.4byte	.LASF247
	.2byte	0x145
	.byte	0x2f
	.4byte	0xd74
	.4byte	.LLST115
	.4byte	.LVUS115
	.uleb128 0xe
	.4byte	.LLRL116
	.uleb128 0x1e
	.4byte	.LASF248
	.2byte	0x147
	.byte	0xe
	.4byte	0x105c
	.4byte	.LLST117
	.4byte	.LVUS117
	.uleb128 0x1e
	.4byte	.LASF249
	.2byte	0x151
	.byte	0x9
	.4byte	0x2b6
	.4byte	.LLST118
	.4byte	.LVUS118
	.uleb128 0x12
	.4byte	0x1e70
	.4byte	.LBI483
	.2byte	.LVU865
	.4byte	.LLRL119
	.2byte	0x148
	.byte	0x7
	.4byte	0x102d
	.uleb128 0x4
	.4byte	0x1ef7
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x4
	.4byte	0x1eec
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x4
	.4byte	0x1ee1
	.4byte	.LLST120
	.4byte	.LVUS120
	.uleb128 0x4
	.4byte	0x1ed6
	.4byte	.LLST123
	.4byte	.LVUS123
	.uleb128 0x4
	.4byte	0x1ecb
	.4byte	.LLST124
	.4byte	.LVUS124
	.uleb128 0x4
	.4byte	0x1ec0
	.4byte	.LLST125
	.4byte	.LVUS125
	.uleb128 0x4
	.4byte	0x1eb5
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x4
	.4byte	0x1eaa
	.4byte	.LLST127
	.4byte	.LVUS127
	.uleb128 0x4
	.4byte	0x1e9f
	.4byte	.LLST126
	.4byte	.LVUS126
	.uleb128 0x4
	.4byte	0x1e94
	.4byte	.LLST129
	.4byte	.LVUS129
	.uleb128 0x4
	.4byte	0x1e89
	.4byte	.LLST130
	.4byte	.LVUS130
	.uleb128 0x4
	.4byte	0x1e7e
	.4byte	.LLST131
	.4byte	.LVUS131
	.byte	0
	.uleb128 0x24
	.4byte	.LVL148
	.4byte	0xd99
	.uleb128 0xa
	.4byte	.LVL150
	.4byte	0x1f3f
	.4byte	0x104a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL151
	.4byte	0xd63
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xb4
	.uleb128 0x25
	.4byte	.LASF250
	.byte	0xdc
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e0
	.uleb128 0x1a
	.4byte	.LASF246
	.byte	0xdc
	.byte	0x1a
	.4byte	0xf0b
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x26
	.ascii	"dt\000"
	.byte	0xdc
	.byte	0x28
	.4byte	0x26
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x1a
	.4byte	.LASF251
	.byte	0xdc
	.byte	0x33
	.4byte	0x9e4
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x4b
	.4byte	.LASF253
	.byte	0x1
	.byte	0xdf
	.byte	0xe
	.4byte	0x513
	.byte	0x4
	.4byte	0x3c888889
	.uleb128 0xe
	.4byte	.LLRL39
	.uleb128 0x1b
	.4byte	.LASF252
	.byte	0xe6
	.byte	0x9
	.4byte	0x26
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x27
	.4byte	.LASF254
	.byte	0xf0
	.byte	0xa
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x27
	.4byte	.LASF255
	.byte	0xf1
	.byte	0xa
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1b
	.4byte	.LASF256
	.byte	0xf3
	.byte	0x7
	.4byte	0x3d5
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x1b
	.4byte	.LASF257
	.byte	0xf3
	.byte	0x1e
	.4byte	0x3d5
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x1e
	.4byte	.LASF258
	.2byte	0x125
	.byte	0xa
	.4byte	0x9e4
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x1c
	.4byte	.LLRL44
	.4byte	0x13ff
	.uleb128 0x17
	.ascii	"j\000"
	.byte	0xf6
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0xe
	.4byte	.LLRL46
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0xf7
	.byte	0x8
	.4byte	0x2d
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x1b
	.4byte	.LASF259
	.byte	0xf8
	.byte	0x8
	.4byte	0x3d5
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x27
	.4byte	.LASF260
	.byte	0xf9
	.byte	0xb
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x27
	.4byte	.LASF261
	.byte	0xfc
	.byte	0x8
	.4byte	0xd02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1c
	.4byte	.LLRL49
	.4byte	0x139c
	.uleb128 0x28
	.ascii	"x\000"
	.2byte	0x100
	.byte	0xd
	.4byte	0x2d
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0xe
	.4byte	.LLRL51
	.uleb128 0x28
	.ascii	"y\000"
	.2byte	0x101
	.byte	0xe
	.4byte	0x2d
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0xe
	.4byte	.LLRL53
	.uleb128 0x28
	.ascii	"z\000"
	.2byte	0x102
	.byte	0xf
	.4byte	0x2d
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0xe
	.4byte	.LLRL55
	.uleb128 0x37
	.ascii	"pX\000"
	.2byte	0x103
	.4byte	0x2d
	.uleb128 0x37
	.ascii	"pY\000"
	.2byte	0x104
	.4byte	0x2d
	.uleb128 0x28
	.ascii	"pZ\000"
	.2byte	0x105
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x1c
	.4byte	.LLRL57
	.4byte	0x12d0
	.uleb128 0x29
	.4byte	.LASF262
	.2byte	0x108
	.byte	0xc
	.4byte	0xd02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.4byte	.LASF263
	.2byte	0x10a
	.byte	0xf
	.4byte	0x9e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x29
	.4byte	.LASF264
	.2byte	0x10b
	.byte	0xe
	.4byte	0x26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x29
	.4byte	.LASF265
	.2byte	0x10c
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.4byte	.LASF266
	.2byte	0x10e
	.byte	0xc
	.4byte	0x3d5
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x12
	.4byte	0x1d1c
	.4byte	.LBI258
	.2byte	.LVU656
	.4byte	.LLRL59
	.2byte	0x108
	.byte	0x17
	.4byte	0x12c6
	.uleb128 0x4
	.4byte	0x1d5e
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x4
	.4byte	0x1d54
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x4
	.4byte	0x1d4a
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x4
	.4byte	0x1d40
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x4
	.4byte	0x1d36
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x4
	.4byte	0x1d2c
	.4byte	.LLST65
	.4byte	.LVUS65
	.byte	0
	.uleb128 0x24
	.4byte	.LVL101
	.4byte	0xdd9
	.byte	0
	.uleb128 0x12
	.4byte	0x1f03
	.4byte	.LBI268
	.2byte	.LVU562
	.4byte	.LLRL66
	.2byte	0x103
	.byte	0x10
	.4byte	0x12f4
	.uleb128 0x4
	.4byte	0x1f11
	.4byte	.LLST67
	.4byte	.LVUS67
	.byte	0
	.uleb128 0x12
	.4byte	0x1f03
	.4byte	.LBI278
	.2byte	.LVU570
	.4byte	.LLRL68
	.2byte	0x105
	.byte	0x10
	.4byte	0x1318
	.uleb128 0x4
	.4byte	0x1f11
	.4byte	.LLST69
	.4byte	.LVUS69
	.byte	0
	.uleb128 0x12
	.4byte	0x1f03
	.4byte	.LBI288
	.2byte	.LVU566
	.4byte	.LLRL70
	.2byte	0x104
	.byte	0x10
	.4byte	0x133c
	.uleb128 0x4
	.4byte	0x1f11
	.4byte	.LLST71
	.4byte	.LVUS71
	.byte	0
	.uleb128 0xa
	.4byte	.LVL86
	.4byte	0xe9a
	.4byte	0x135c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL96
	.4byte	0xe9a
	.4byte	0x137c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL97
	.4byte	0xe9a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	0x1d1c
	.4byte	.LBI350
	.2byte	.LVU541
	.4byte	.LLRL72
	.byte	0x1
	.byte	0xfd
	.byte	0x8
	.uleb128 0x4
	.4byte	0x1d5e
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x4
	.4byte	0x1d54
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x4
	.4byte	0x1d4a
	.4byte	.LLST73
	.4byte	.LVUS73
	.uleb128 0x4
	.4byte	0x1d40
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x4
	.4byte	0x1d36
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x4
	.4byte	0x1d2c
	.4byte	.LLST78
	.4byte	.LVUS78
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LLRL96
	.4byte	0x15b6
	.uleb128 0x1e
	.4byte	.LASF267
	.2byte	0x12a
	.byte	0xb
	.4byte	0x9e4
	.4byte	.LLST97
	.4byte	.LVUS97
	.uleb128 0x39
	.4byte	.LASF171
	.2byte	0x12b
	.4byte	0x16e
	.uleb128 0x39
	.4byte	.LASF268
	.2byte	0x12d
	.4byte	0x16e
	.uleb128 0x12
	.4byte	0x1df7
	.4byte	.LBI409
	.2byte	.LVU716
	.4byte	.LLRL98
	.2byte	0x12a
	.byte	0x15
	.4byte	0x1463
	.uleb128 0x4
	.4byte	0x1e11
	.4byte	.LLST99
	.4byte	.LVUS99
	.uleb128 0x4
	.4byte	0x1e07
	.4byte	.LLST100
	.4byte	.LVUS100
	.byte	0
	.uleb128 0x12
	.4byte	0x1d69
	.4byte	.LBI412
	.2byte	.LVU724
	.4byte	.LLRL101
	.2byte	0x12a
	.byte	0x15
	.4byte	0x14d4
	.uleb128 0x4
	.4byte	0x1d79
	.4byte	.LLST102
	.4byte	.LVUS102
	.uleb128 0xe
	.4byte	.LLRL101
	.uleb128 0x4c
	.4byte	0x1d85
	.uleb128 0x38
	.4byte	0x1d90
	.4byte	.LBI414
	.2byte	.LVU726
	.4byte	.LLRL103
	.byte	0x2
	.byte	0x1a
	.byte	0xc
	.uleb128 0x14
	.4byte	0x1da0
	.uleb128 0x18
	.4byte	0x1dad
	.4byte	.LBI416
	.2byte	.LVU728
	.4byte	.LLRL104
	.byte	0x2
	.byte	0x17
	.byte	0x2a
	.4byte	0x14c8
	.uleb128 0x14
	.4byte	0x1dc7
	.uleb128 0x14
	.4byte	0x1dbd
	.byte	0
	.uleb128 0x24
	.4byte	.LVL136
	.4byte	0xdc3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x1f03
	.4byte	.LBI431
	.2byte	.LVU742
	.4byte	.LLRL105
	.2byte	0x12b
	.byte	0x12
	.4byte	0x14f8
	.uleb128 0x4
	.4byte	0x1f11
	.4byte	.LLST106
	.4byte	.LVUS106
	.byte	0
	.uleb128 0x12
	.4byte	0x1f03
	.4byte	.LBI441
	.2byte	.LVU758
	.4byte	.LLRL107
	.2byte	0x12c
	.byte	0xc
	.4byte	0x151c
	.uleb128 0x4
	.4byte	0x1f11
	.4byte	.LLST108
	.4byte	.LVUS108
	.byte	0
	.uleb128 0x12
	.4byte	0x1f03
	.4byte	.LBI449
	.2byte	.LVU765
	.4byte	.LLRL109
	.2byte	0x12b
	.byte	0x12
	.4byte	0x1540
	.uleb128 0x4
	.4byte	0x1f11
	.4byte	.LLST110
	.4byte	.LVUS110
	.byte	0
	.uleb128 0x12
	.4byte	0x16e0
	.4byte	.LBI470
	.2byte	.LVU778
	.4byte	.LLRL111
	.2byte	0x12f
	.byte	0x95
	.4byte	0x1571
	.uleb128 0x4
	.4byte	0x16f8
	.4byte	.LLST112
	.4byte	.LVUS112
	.uleb128 0x4
	.4byte	0x16ed
	.4byte	.LLST113
	.4byte	.LVUS113
	.byte	0
	.uleb128 0xa
	.4byte	.LVL125
	.4byte	0xe9a
	.4byte	0x1595
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -268
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	.LVL126
	.4byte	0xe9a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -264
	.byte	0x6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -268
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x1dd2
	.4byte	.LBI374
	.2byte	.LVU476
	.4byte	.LLRL79
	.byte	0x1
	.byte	0xf0
	.byte	0x13
	.4byte	0x15e7
	.uleb128 0x4
	.4byte	0x1dec
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x4
	.4byte	0x1de2
	.4byte	.LLST81
	.4byte	.LVUS81
	.byte	0
	.uleb128 0x18
	.4byte	0x1dd2
	.4byte	.LBI380
	.2byte	.LVU479
	.4byte	.LLRL82
	.byte	0x1
	.byte	0xf0
	.byte	0x13
	.4byte	0x1610
	.uleb128 0x14
	.4byte	0x1dec
	.uleb128 0x4
	.4byte	0x1de2
	.4byte	.LLST83
	.4byte	.LVUS83
	.byte	0
	.uleb128 0x18
	.4byte	0x1e1c
	.4byte	.LBI383
	.2byte	.LVU482
	.4byte	.LLRL84
	.byte	0x1
	.byte	0xf0
	.byte	0x13
	.4byte	0x1641
	.uleb128 0x4
	.4byte	0x1e36
	.4byte	.LLST85
	.4byte	.LVUS85
	.uleb128 0x4
	.4byte	0x1e2c
	.4byte	.LLST86
	.4byte	.LVUS86
	.byte	0
	.uleb128 0x18
	.4byte	0x1e1c
	.4byte	.LBI387
	.2byte	.LVU485
	.4byte	.LLRL87
	.byte	0x1
	.byte	0xf0
	.byte	0x13
	.4byte	0x16b0
	.uleb128 0x4
	.4byte	0x1e36
	.4byte	.LLST88
	.4byte	.LVUS88
	.uleb128 0x4
	.4byte	0x1e2c
	.4byte	.LLST89
	.4byte	.LVUS89
	.uleb128 0x4d
	.4byte	0x1e41
	.4byte	.LBI389
	.2byte	.LVU494
	.4byte	.LBB389
	.4byte	.LBE389-.LBB389
	.byte	0x2
	.byte	0x10
	.byte	0x33
	.uleb128 0x4
	.4byte	0x1e65
	.4byte	.LLST90
	.4byte	.LVUS90
	.uleb128 0x4
	.4byte	0x1e5b
	.4byte	.LLST91
	.4byte	.LVUS91
	.uleb128 0x4
	.4byte	0x1e51
	.4byte	.LLST92
	.4byte	.LVUS92
	.byte	0
	.byte	0
	.uleb128 0x4e
	.4byte	0x1df7
	.4byte	.LBI402
	.2byte	.LVU595
	.4byte	.LLRL93
	.byte	0x1
	.2byte	0x125
	.byte	0x14
	.uleb128 0x4
	.4byte	0x1e11
	.4byte	.LLST94
	.4byte	.LVUS94
	.uleb128 0x4
	.4byte	0x1e07
	.4byte	.LLST95
	.4byte	.LVUS95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF269
	.byte	0x1
	.byte	0xcf
	.byte	0x6
	.byte	0x1
	.4byte	0x1704
	.uleb128 0x3a
	.4byte	.LASF246
	.byte	0xcf
	.byte	0x1a
	.4byte	0xf0b
	.uleb128 0x3a
	.4byte	.LASF251
	.byte	0xcf
	.byte	0x29
	.4byte	0x9e4
	.byte	0
	.uleb128 0x50
	.4byte	.LASF290
	.byte	0x1
	.byte	0xba
	.byte	0x5
	.4byte	0x3d5
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f1
	.uleb128 0x1a
	.4byte	.LASF246
	.byte	0xba
	.byte	0x1c
	.4byte	0xf0b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x26
	.ascii	"new\000"
	.byte	0xba
	.byte	0x2b
	.4byte	0x9e4
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xe
	.4byte	.LLRL21
	.uleb128 0x17
	.ascii	"x\000"
	.byte	0xbb
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xe
	.4byte	.LLRL23
	.uleb128 0x17
	.ascii	"y\000"
	.byte	0xbc
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xe
	.4byte	.LLRL25
	.uleb128 0x17
	.ascii	"z\000"
	.byte	0xbd
	.byte	0xd
	.4byte	0x2d
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0xe
	.4byte	.LLRL27
	.uleb128 0x2d
	.ascii	"pX\000"
	.byte	0x1
	.byte	0xbe
	.byte	0x9
	.4byte	0x2d
	.uleb128 0x2d
	.ascii	"pY\000"
	.byte	0x1
	.byte	0xbf
	.byte	0x9
	.4byte	0x2d
	.uleb128 0x17
	.ascii	"pZ\000"
	.byte	0xc0
	.byte	0x9
	.4byte	0x2d
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x18
	.4byte	0x1f03
	.4byte	.LBI131
	.2byte	.LVU367
	.4byte	.LLRL29
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0x17cf
	.uleb128 0x14
	.4byte	0x1f11
	.byte	0
	.uleb128 0x18
	.4byte	0x1f03
	.4byte	.LBI139
	.2byte	.LVU375
	.4byte	.LLRL30
	.byte	0x1
	.byte	0xc0
	.byte	0xe
	.4byte	0x17eb
	.uleb128 0x14
	.4byte	0x1f11
	.byte	0
	.uleb128 0x18
	.4byte	0x1f03
	.4byte	.LBI148
	.2byte	.LVU371
	.4byte	.LLRL31
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0x1807
	.uleb128 0x14
	.4byte	0x1f11
	.byte	0
	.uleb128 0x18
	.4byte	0x1e70
	.4byte	.LBI170
	.2byte	.LVU398
	.4byte	.LLRL32
	.byte	0x1
	.byte	0xc3
	.byte	0xa
	.4byte	0x1890
	.uleb128 0x1d
	.4byte	0x1ef7
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x1d
	.4byte	0x1eec
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x1d
	.4byte	0x1ee1
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x4
	.4byte	0x1ed6
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x14
	.4byte	0x1ecb
	.uleb128 0x4
	.4byte	0x1ec0
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x1d
	.4byte	0x1eb5
	.byte	0x4
	.4byte	0x3f266666
	.uleb128 0x1d
	.4byte	0x1eaa
	.byte	0x4
	.4byte	0x3fe66666
	.uleb128 0x1d
	.4byte	0x1e9f
	.byte	0x4
	.4byte	0x3f266666
	.uleb128 0x14
	.4byte	0x1e94
	.uleb128 0x14
	.4byte	0x1e89
	.uleb128 0x4
	.4byte	0x1e7e
	.4byte	.LLST35
	.4byte	.LVUS35
	.byte	0
	.uleb128 0xa
	.4byte	.LVL53
	.4byte	0xe9a
	.4byte	0x18b0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL58
	.4byte	0xe9a
	.4byte	0x18d0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL59
	.4byte	0xe9a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF270
	.byte	0x8a
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b16
	.uleb128 0x1a
	.4byte	.LASF246
	.byte	0x8a
	.byte	0x1c
	.4byte	0xf0b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1a
	.4byte	.LASF247
	.byte	0x8a
	.byte	0x2b
	.4byte	0xd74
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x26
	.ascii	"dmg\000"
	.byte	0x8a
	.byte	0x3a
	.4byte	0x1b16
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2e
	.4byte	.LBB126
	.4byte	.LBE126-.LBB126
	.4byte	0x198a
	.uleb128 0x1f
	.4byte	.LASF243
	.4byte	0x2d
	.4byte	0x195a
	.uleb128 0x15
	.byte	0
	.uleb128 0xa
	.4byte	.LVL45
	.4byte	0xebf
	.4byte	0x1971
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.uleb128 0x16
	.4byte	.LVL46
	.4byte	0xe20
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC42
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x51
	.4byte	0x1e41
	.4byte	.LBI125
	.2byte	.LVU253
	.4byte	.LBB125
	.4byte	.LBE125-.LBB125
	.byte	0x1
	.byte	0x8c
	.byte	0x18
	.4byte	0x19cc
	.uleb128 0x4
	.4byte	0x1e65
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x4
	.4byte	0x1e5b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x4
	.4byte	0x1e51
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0xa
	.4byte	.LVL29
	.4byte	0xe84
	.4byte	0x19e2
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL30
	.4byte	0xe6e
	.4byte	0x19f8
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL31
	.4byte	0xe84
	.4byte	0x1a0e
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL32
	.4byte	0xe6e
	.4byte	0x1a24
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0
	.uleb128 0xa
	.4byte	.LVL35
	.4byte	0xe44
	.4byte	0x1a39
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 172
	.byte	0
	.uleb128 0xa
	.4byte	.LVL36
	.4byte	0xe9a
	.4byte	0x1a68
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL37
	.4byte	0xe0d
	.4byte	0x1a86
	.uleb128 0x3
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.byte	0xc
	.4byte	0x989680
	.byte	0xa8
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL39
	.4byte	0xe0d
	.4byte	0x1aa4
	.uleb128 0x3
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.byte	0xc
	.4byte	0x989680
	.byte	0xa8
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL40
	.4byte	0x1b1b
	.4byte	0x1abe
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL41
	.4byte	0xe2e
	.uleb128 0xa
	.4byte	.LVL42
	.4byte	0xe9a
	.4byte	0x1afd
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0
	.byte	0
	.uleb128 0x3b
	.4byte	.LVL44
	.4byte	0x1b1b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x984
	.uleb128 0x25
	.4byte	.LASF271
	.byte	0x59
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c91
	.uleb128 0x1a
	.4byte	.LASF246
	.byte	0x59
	.byte	0x1d
	.4byte	0xf0b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.ascii	"dmg\000"
	.byte	0x59
	.byte	0x2d
	.4byte	0x1b16
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x3c
	.4byte	0x1bab
	.uleb128 0x1f
	.4byte	.LASF243
	.4byte	0x2d
	.4byte	0x1b69
	.uleb128 0x15
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF200
	.byte	0x64
	.byte	0xd
	.4byte	0xcad
	.uleb128 0x2f
	.4byte	.LASF272
	.byte	0x65
	.byte	0xa
	.4byte	0x2d
	.uleb128 0x2f
	.4byte	.LASF273
	.byte	0x69
	.byte	0xa
	.4byte	0x3d5
	.uleb128 0x3c
	.4byte	0x1b9c
	.uleb128 0x3d
	.4byte	.LASF243
	.byte	0x5e
	.4byte	0x2d
	.uleb128 0x15
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x3d
	.4byte	.LASF243
	.byte	0x5e
	.4byte	0x2d
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LLRL9
	.4byte	0x1c64
	.uleb128 0x1b
	.4byte	.LASF200
	.byte	0x75
	.byte	0xd
	.4byte	0xcad
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1b
	.4byte	.LASF272
	.byte	0x76
	.byte	0xa
	.4byte	0x2d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1b
	.4byte	.LASF273
	.byte	0x7a
	.byte	0xa
	.4byte	0x3d5
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2e
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.4byte	0x1c1d
	.uleb128 0x1f
	.4byte	.LASF243
	.4byte	0x2d
	.4byte	0x1c09
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL24
	.4byte	0xebf
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB120
	.4byte	.LBE120-.LBB120
	.4byte	0x1c4d
	.uleb128 0x1f
	.4byte	.LASF243
	.4byte	0x2d
	.4byte	0x1c39
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.4byte	.LVL14
	.4byte	0xebf
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL18
	.4byte	0xe9a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x53
	.4byte	.LBB124
	.4byte	.LBE124-.LBB124
	.uleb128 0x1f
	.4byte	.LASF243
	.4byte	0x2d
	.4byte	0x1c7c
	.uleb128 0x15
	.byte	0
	.uleb128 0x3b
	.4byte	.LVL27
	.4byte	0xebf
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF275
	.byte	0x7
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d1c
	.uleb128 0x54
	.4byte	.LASF246
	.byte	0x1
	.byte	0x7
	.byte	0x1a
	.4byte	0xf0b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF200
	.byte	0x7
	.byte	0x29
	.4byte	0xcad
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x30
	.4byte	.LASF276
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.4byte	0x3d5
	.uleb128 0xe
	.4byte	.LLRL1
	.uleb128 0x17
	.ascii	"l\000"
	.byte	0x29
	.byte	0x7
	.4byte	0x2d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1c
	.4byte	.LLRL3
	.4byte	0x1d03
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x35
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0xe
	.4byte	.LLRL5
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x52
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF277
	.byte	0x4
	.byte	0x9
	.byte	0xc
	.4byte	0xd02
	.4byte	0x1d69
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x4
	.byte	0x9
	.byte	0x26
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x4
	.byte	0x9
	.byte	0x2f
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w\000"
	.byte	0x4
	.byte	0x9
	.byte	0x38
	.4byte	0x26
	.uleb128 0x7
	.ascii	"h\000"
	.byte	0x4
	.byte	0x9
	.byte	0x41
	.4byte	0x26
	.uleb128 0x7
	.ascii	"d\000"
	.byte	0x4
	.byte	0x9
	.byte	0x4a
	.4byte	0x26
	.byte	0
	.uleb128 0x19
	.4byte	.LASF278
	.byte	0x2
	.byte	0x19
	.byte	0xf
	.4byte	0x9e4
	.4byte	0x1d90
	.uleb128 0x7
	.ascii	"vec\000"
	.byte	0x2
	.byte	0x19
	.byte	0x1d
	.4byte	0x9e4
	.uleb128 0x2d
	.ascii	"m\000"
	.byte	0x2
	.byte	0x1a
	.byte	0x8
	.4byte	0x26
	.byte	0
	.uleb128 0x19
	.4byte	.LASF279
	.byte	0x2
	.byte	0x17
	.byte	0xe
	.4byte	0x26
	.4byte	0x1dad
	.uleb128 0x7
	.ascii	"vec\000"
	.byte	0x2
	.byte	0x17
	.byte	0x1c
	.4byte	0x9e4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF280
	.byte	0x2
	.byte	0x14
	.byte	0xe
	.4byte	0x26
	.4byte	0x1dd2
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x14
	.byte	0x1c
	.4byte	0x9e4
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x14
	.byte	0x26
	.4byte	0x9e4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF281
	.byte	0x2
	.byte	0x12
	.byte	0xf
	.4byte	0x9e4
	.4byte	0x1df7
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x12
	.byte	0x1d
	.4byte	0x9e4
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x12
	.byte	0x26
	.4byte	0x26
	.byte	0
	.uleb128 0x19
	.4byte	.LASF282
	.byte	0x2
	.byte	0x11
	.byte	0xf
	.4byte	0x9e4
	.4byte	0x1e1c
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x11
	.byte	0x1d
	.4byte	0x9e4
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x11
	.byte	0x27
	.4byte	0x9e4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF283
	.byte	0x2
	.byte	0x10
	.byte	0xf
	.4byte	0x9e4
	.4byte	0x1e41
	.uleb128 0x7
	.ascii	"a\000"
	.byte	0x2
	.byte	0x10
	.byte	0x1d
	.4byte	0x9e4
	.uleb128 0x7
	.ascii	"b\000"
	.byte	0x2
	.byte	0x10
	.byte	0x27
	.4byte	0x9e4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF284
	.byte	0x2
	.byte	0xe
	.byte	0xf
	.4byte	0x9e4
	.4byte	0x1e70
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x2
	.byte	0xe
	.byte	0x1c
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y\000"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z\000"
	.byte	0x2
	.byte	0xe
	.byte	0x2e
	.4byte	0x26
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF285
	.byte	0x20
	.4byte	0x3d5
	.4byte	0x1f03
	.uleb128 0x7
	.ascii	"x0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x26
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x30
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x3a
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x44
	.4byte	0x26
	.uleb128 0x7
	.ascii	"h0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x4e
	.4byte	0x26
	.uleb128 0x7
	.ascii	"d0\000"
	.byte	0x3
	.byte	0x20
	.byte	0x58
	.4byte	0x26
	.uleb128 0x7
	.ascii	"x1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x62
	.4byte	0x26
	.uleb128 0x7
	.ascii	"y1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x6c
	.4byte	0x26
	.uleb128 0x7
	.ascii	"z1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x76
	.4byte	0x26
	.uleb128 0x7
	.ascii	"w1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x80
	.4byte	0x26
	.uleb128 0x7
	.ascii	"h1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x8a
	.4byte	0x26
	.uleb128 0x7
	.ascii	"d1\000"
	.byte	0x3
	.byte	0x20
	.byte	0x94
	.4byte	0x26
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF286
	.byte	0x19
	.4byte	0x2d
	.4byte	0x1f1c
	.uleb128 0x7
	.ascii	"x\000"
	.byte	0x3
	.byte	0x19
	.byte	0x23
	.4byte	0x26
	.byte	0
	.uleb128 0x55
	.4byte	0x16e0
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f3f
	.uleb128 0x3f
	.4byte	0x16ed
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3f
	.4byte	0x16f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x56
	.4byte	.LASF291
	.4byte	.LASF292
	.byte	0x23
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 94
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS132:
	.uleb128 0
	.uleb128 .LVU909
	.uleb128 .LVU909
	.uleb128 0
.LLST132:
	.byte	0x6
	.4byte	.LVL157
	.byte	0x4
	.uleb128 .LVL157-.LVL157
	.uleb128 .LVL158-.LVL157
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL158-.LVL157
	.uleb128 .LFE151-.LVL157
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS114:
	.uleb128 0
	.uleb128 .LVU840
	.uleb128 .LVU840
	.uleb128 0
.LLST114:
	.byte	0x6
	.4byte	.LVL137
	.byte	0x4
	.uleb128 .LVL137-.LVL137
	.uleb128 .LVL138-.LVL137
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL138-.LVL137
	.uleb128 .LFE150-.LVL137
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS115:
	.uleb128 0
	.uleb128 .LVU846
	.uleb128 .LVU846
	.uleb128 .LVU847
	.uleb128 .LVU847
	.uleb128 .LVU850
	.uleb128 .LVU850
	.uleb128 .LVU890
	.uleb128 .LVU890
	.uleb128 .LVU895
	.uleb128 .LVU895
	.uleb128 0
.LLST115:
	.byte	0x6
	.4byte	.LVL137
	.byte	0x4
	.uleb128 .LVL137-.LVL137
	.uleb128 .LVL139-.LVL137
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL139-.LVL137
	.uleb128 .LVL140-.LVL137
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL140-.LVL137
	.uleb128 .LVL141-.LVL137
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL141-.LVL137
	.uleb128 .LVL152-.LVL137
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL152-.LVL137
	.uleb128 .LVL153-.LVL137
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.LVL137
	.uleb128 .LFE150-.LVL137
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS117:
	.uleb128 .LVU858
	.uleb128 .LVU863
.LLST117:
	.byte	0x8
	.4byte	.LVL142
	.uleb128 .LVL143-.LVL142
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS118:
	.uleb128 .LVU883
	.uleb128 .LVU890
.LLST118:
	.byte	0x8
	.4byte	.LVL149
	.uleb128 .LVL152-.LVL149
	.uleb128 0x6
	.byte	0x3
	.4byte	.LC43
	.byte	0x9f
	.byte	0
.LVUS120:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 0
.LLST120:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS123:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 0
.LLST123:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS124:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 0
.LLST124:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS125:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 .LVU897
	.uleb128 .LVU897
	.uleb128 0
.LLST125:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LVL154-.LVL144
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL154-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS126:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 0
.LLST126:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f266666
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f266666
	.byte	0
.LVUS127:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 0
.LLST127:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3fe66666
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3fe66666
	.byte	0
.LVUS129:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 .LVU901
	.uleb128 .LVU901
	.uleb128 0
.LLST129:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x49
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3ea66666
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LVL156-.LVL144
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x49
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3ea66666
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL156-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0xe
	.byte	0x74
	.sleb128 8
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3ea66666
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS130:
	.uleb128 .LVU865
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 .LVU899
	.uleb128 .LVU899
	.uleb128 0
.LLST130:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4a
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LVL155-.LVL144
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4a
	.byte	0x4
	.uleb128 .LVL155-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.byte	0
.LVUS131:
	.uleb128 .LVU865
	.uleb128 .LVU869
	.uleb128 .LVU869
	.uleb128 .LVU870
	.uleb128 .LVU895
	.uleb128 0
.LLST131:
	.byte	0x6
	.4byte	.LVL144
	.byte	0x4
	.uleb128 .LVL144-.LVL144
	.uleb128 .LVL145-.LVL144
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL145-.LVL144
	.uleb128 .LVL146-.LVL144
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL153-.LVL144
	.uleb128 .LFE150-.LVL144
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU459
	.uleb128 .LVU459
	.uleb128 .LVU646
	.uleb128 .LVU646
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL68-.LVL65
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL68-.LVL65
	.uleb128 .LVL94-.LVL65
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL94-.LVL65
	.uleb128 .LVL95-.LVL65
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.LVL65
	.uleb128 .LFE149-.LVL65
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU459
	.uleb128 .LVU459
	.uleb128 0
.LLST37:
	.byte	0x6
	.4byte	.LVL65
	.byte	0x4
	.uleb128 .LVL65-.LVL65
	.uleb128 .LVL68-.LVL65
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL68-.LVL65
	.uleb128 .LFE149-.LVL65
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 .LVU440
	.uleb128 .LVU459
	.uleb128 .LVU459
	.uleb128 .LVU646
	.uleb128 .LVU646
	.uleb128 .LVU647
	.uleb128 .LVU647
	.uleb128 0
.LLST38:
	.byte	0x6
	.4byte	.LVL66
	.byte	0x4
	.uleb128 .LVL66-.LVL66
	.uleb128 .LVL68-.LVL66
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL68-.LVL66
	.uleb128 .LVL94-.LVL66
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL94-.LVL66
	.uleb128 .LVL95-.LVL66
	.uleb128 0x9
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -232
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL95-.LVL66
	.uleb128 .LFE149-.LVL66
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS40:
	.uleb128 .LVU473
	.uleb128 .LVU475
	.uleb128 .LVU706
	.uleb128 .LVU715
	.uleb128 .LVU806
	.uleb128 .LVU810
.LLST40:
	.byte	0x6
	.4byte	.LVL69
	.byte	0x4
	.uleb128 .LVL69-.LVL69
	.uleb128 .LVL70-.LVL69
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL107-.LVL69
	.uleb128 .LVL108-.LVL69
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL129-.LVL69
	.uleb128 .LVL130-.LVL69
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS41:
	.uleb128 .LVU503
	.uleb128 .LVU510
	.uleb128 .LVU684
	.uleb128 .LVU692
.LLST41:
	.byte	0x6
	.4byte	.LVL77
	.byte	0x4
	.uleb128 .LVL77-.LVL77
	.uleb128 .LVL78-.LVL77
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL105-.LVL77
	.uleb128 .LVL106-.LVL77
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU503
	.uleb128 .LVU646
	.uleb128 .LVU647
	.uleb128 .LVU704
	.uleb128 .LVU715
	.uleb128 .LVU806
	.uleb128 .LVU810
	.uleb128 0
.LLST42:
	.byte	0x6
	.4byte	.LVL77
	.byte	0x4
	.uleb128 .LVL77-.LVL77
	.uleb128 .LVL94-.LVL77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL95-.LVL77
	.uleb128 .LVL107-.LVL77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL108-.LVL77
	.uleb128 .LVL129-.LVL77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0x4
	.uleb128 .LVL130-.LVL77
	.uleb128 .LFE149-.LVL77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
.LVUS43:
	.uleb128 .LVU597
	.uleb128 .LVU606
	.uleb128 .LVU606
	.uleb128 .LVU618
	.uleb128 .LVU618
	.uleb128 .LVU619
	.uleb128 .LVU715
	.uleb128 .LVU734
	.uleb128 .LVU734
	.uleb128 .LVU804
	.uleb128 .LVU812
	.uleb128 .LVU814
	.uleb128 .LVU814
	.uleb128 .LVU815
	.uleb128 .LVU815
	.uleb128 .LVU832
	.uleb128 .LVU834
	.uleb128 .LVU835
	.uleb128 .LVU835
	.uleb128 0
.LLST43:
	.byte	0x6
	.4byte	.LVL90
	.byte	0x4
	.uleb128 .LVL90-.LVL90
	.uleb128 .LVL91-.LVL90
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x55
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL91-.LVL90
	.uleb128 .LVL92-.LVL90
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL92-.LVL90
	.uleb128 .LVL93-.LVL90
	.uleb128 0x1c
	.byte	0x91
	.sleb128 -200
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -192
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL108-.LVL90
	.uleb128 .LVL113-.LVL90
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x55
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL113-.LVL90
	.uleb128 .LVL128-.LVL90
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL131-.LVL90
	.uleb128 .LVL132-.LVL90
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL132-.LVL90
	.uleb128 .LVL133-.LVL90
	.uleb128 0x19
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -192
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL133-.LVL90
	.uleb128 .LVL134-.LVL90
	.uleb128 0x1c
	.byte	0x91
	.sleb128 -200
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -192
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL135-.LVL90
	.uleb128 .LVL136-1-.LVL90
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x55
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL136-1-.LVL90
	.uleb128 .LFE149-.LVL90
	.uleb128 0x16
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5c
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x5d
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS45:
	.uleb128 .LVU506
	.uleb128 .LVU510
.LLST45:
	.byte	0x8
	.4byte	.LVL77
	.uleb128 .LVL78-.LVL77
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 .LVU516
	.uleb128 .LVU533
	.uleb128 .LVU533
	.uleb128 .LVU556
	.uleb128 .LVU556
	.uleb128 .LVU646
	.uleb128 .LVU647
	.uleb128 .LVU704
	.uleb128 .LVU715
	.uleb128 .LVU806
	.uleb128 .LVU810
	.uleb128 0
.LLST47:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL80-.LVL79
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL80-.LVL79
	.uleb128 .LVL83-.LVL79
	.uleb128 0x6
	.byte	0x91
	.sleb128 -256
	.byte	0x6
	.byte	0x34
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL83-.LVL79
	.uleb128 .LVL94-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0x4
	.uleb128 .LVL95-.LVL79
	.uleb128 .LVL107-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0x4
	.uleb128 .LVL108-.LVL79
	.uleb128 .LVL129-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0x4
	.uleb128 .LVL130-.LVL79
	.uleb128 .LFE149-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
.LVUS48:
	.uleb128 .LVU517
	.uleb128 .LVU556
	.uleb128 .LVU556
	.uleb128 .LVU606
	.uleb128 .LVU647
	.uleb128 .LVU704
	.uleb128 .LVU715
	.uleb128 .LVU773
	.uleb128 .LVU810
	.uleb128 .LVU812
	.uleb128 .LVU834
	.uleb128 0
.LLST48:
	.byte	0x6
	.4byte	.LVL79
	.byte	0x4
	.uleb128 .LVL79-.LVL79
	.uleb128 .LVL83-.LVL79
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL83-.LVL79
	.uleb128 .LVL91-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0x4
	.uleb128 .LVL95-.LVL79
	.uleb128 .LVL107-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0x4
	.uleb128 .LVL108-.LVL79
	.uleb128 .LVL124-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0x4
	.uleb128 .LVL130-.LVL79
	.uleb128 .LVL131-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0x4
	.uleb128 .LVL135-.LVL79
	.uleb128 .LFE149-.LVL79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
.LVUS50:
	.uleb128 .LVU554
	.uleb128 .LVU556
.LLST50:
	.byte	0x8
	.4byte	.LVL82
	.uleb128 .LVL83-.LVL82
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS52:
	.uleb128 .LVU556
	.uleb128 .LVU558
.LLST52:
	.byte	0x8
	.4byte	.LVL83
	.uleb128 .LVL84-.LVL83
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS54:
	.uleb128 .LVU558
	.uleb128 .LVU560
.LLST54:
	.byte	0x8
	.4byte	.LVL84
	.uleb128 .LVL85-.LVL84
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 .LVU572
	.uleb128 .LVU579
	.uleb128 .LVU579
	.uleb128 .LVU606
	.uleb128 .LVU647
	.uleb128 .LVU680
	.uleb128 .LVU680
	.uleb128 .LVU704
	.uleb128 .LVU715
	.uleb128 .LVU764
	.uleb128 .LVU810
	.uleb128 .LVU812
	.uleb128 .LVU834
	.uleb128 0
.LLST56:
	.byte	0x6
	.4byte	.LVL85
	.byte	0x4
	.uleb128 .LVL85-.LVL85
	.uleb128 .LVL87-.LVL85
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL87-.LVL85
	.uleb128 .LVL91-.LVL85
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL95-.LVL85
	.uleb128 .LVL104-.LVL85
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL104-.LVL85
	.uleb128 .LVL107-.LVL85
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL108-.LVL85
	.uleb128 .LVL122-.LVL85
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL130-.LVL85
	.uleb128 .LVL131-.LVL85
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL135-.LVL85
	.uleb128 .LFE149-.LVL85
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 .LVU676
	.uleb128 .LVU678
.LLST58:
	.byte	0x8
	.4byte	.LVL101
	.uleb128 .LVL102-.LVL101
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS60:
	.uleb128 .LVU656
	.uleb128 .LVU665
.LLST60:
	.byte	0x8
	.4byte	.LVL99
	.uleb128 .LVL100-.LVL99
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS63:
	.uleb128 .LVU656
	.uleb128 .LVU665
.LLST63:
	.byte	0x8
	.4byte	.LVL99
	.uleb128 .LVL100-.LVL99
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS64:
	.uleb128 .LVU656
	.uleb128 .LVU665
.LLST64:
	.byte	0x8
	.4byte	.LVL99
	.uleb128 .LVL100-.LVL99
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0
.LVUS65:
	.uleb128 .LVU655
	.uleb128 .LVU665
.LLST65:
	.byte	0x8
	.4byte	.LVL98
	.uleb128 .LVL100-.LVL98
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0
.LVUS67:
	.uleb128 .LVU562
	.uleb128 .LVU564
.LLST67:
	.byte	0x8
	.4byte	.LVL85
	.uleb128 .LVL85-.LVL85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
.LVUS69:
	.uleb128 .LVU570
	.uleb128 .LVU572
.LLST69:
	.byte	0x8
	.4byte	.LVL85
	.uleb128 .LVL85-.LVL85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
.LVUS71:
	.uleb128 .LVU566
	.uleb128 .LVU568
.LLST71:
	.byte	0x8
	.4byte	.LVL85
	.uleb128 .LVL85-.LVL85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
.LVUS73:
	.uleb128 .LVU541
	.uleb128 .LVU551
.LLST73:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f266666
	.byte	0
.LVUS74:
	.uleb128 .LVU541
	.uleb128 .LVU551
.LLST74:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3fe66666
	.byte	0
.LVUS76:
	.uleb128 .LVU541
	.uleb128 .LVU551
.LLST76:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x48
	.byte	0
.LVUS77:
	.uleb128 .LVU541
	.uleb128 .LVU551
.LLST77:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS78:
	.uleb128 .LVU541
	.uleb128 .LVU551
.LLST78:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x47
	.byte	0
.LVUS97:
	.uleb128 .LVU736
	.uleb128 .LVU739
	.uleb128 .LVU739
	.uleb128 .LVU740
	.uleb128 .LVU740
	.uleb128 .LVU742
	.uleb128 .LVU742
	.uleb128 .LVU745
	.uleb128 .LVU745
	.uleb128 .LVU746
	.uleb128 .LVU746
	.uleb128 .LVU748
	.uleb128 .LVU748
	.uleb128 .LVU750
.LLST97:
	.byte	0x6
	.4byte	.LVL113
	.byte	0x4
	.uleb128 .LVL113-.LVL113
	.uleb128 .LVL114-.LVL113
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL114-.LVL113
	.uleb128 .LVL115-.LVL113
	.uleb128 0x18
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL115-.LVL113
	.uleb128 .LVL116-.LVL113
	.uleb128 0x12
	.byte	0x90
	.uleb128 0x4b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL116-.LVL113
	.uleb128 .LVL117-.LVL113
	.uleb128 0x18
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL117-.LVL113
	.uleb128 .LVL118-.LVL113
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x56
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL118-.LVL113
	.uleb128 .LVL119-.LVL113
	.uleb128 0x18
	.byte	0xa5
	.uleb128 0x57
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x1b
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL119-.LVL113
	.uleb128 .LVL120-.LVL113
	.uleb128 0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS99:
	.uleb128 .LVU716
	.uleb128 .LVU723
.LLST99:
	.byte	0x8
	.4byte	.LVL108
	.uleb128 .LVL111-.LVL108
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS100:
	.uleb128 .LVU716
	.uleb128 .LVU719
	.uleb128 .LVU719
	.uleb128 .LVU720
	.uleb128 .LVU720
	.uleb128 .LVU723
.LLST100:
	.byte	0x6
	.4byte	.LVL108
	.byte	0x4
	.uleb128 .LVL108-.LVL108
	.uleb128 .LVL109-.LVL108
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL109-.LVL108
	.uleb128 .LVL110-.LVL108
	.uleb128 0xd
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -208
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL110-.LVL108
	.uleb128 .LVL111-.LVL108
	.uleb128 0xe
	.byte	0x91
	.sleb128 -212
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -208
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS102:
	.uleb128 .LVU725
	.uleb128 .LVU736
	.uleb128 .LVU834
	.uleb128 0
.LLST102:
	.byte	0x6
	.4byte	.LVL111
	.byte	0x4
	.uleb128 .LVL111-.LVL111
	.uleb128 .LVL113-.LVL111
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL135-.LVL111
	.uleb128 .LFE149-.LVL111
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS106:
	.uleb128 .LVU742
	.uleb128 .LVU757
.LLST106:
	.byte	0x8
	.4byte	.LVL116
	.uleb128 .LVL121-.LVL116
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4b
	.byte	0
.LVUS108:
	.uleb128 .LVU757
	.uleb128 .LVU764
.LLST108:
	.byte	0x8
	.4byte	.LVL121
	.uleb128 .LVL122-.LVL121
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4c
	.byte	0
.LVUS110:
	.uleb128 .LVU764
	.uleb128 .LVU771
.LLST110:
	.byte	0x8
	.4byte	.LVL122
	.uleb128 .LVL123-.LVL122
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4d
	.byte	0
.LVUS112:
	.uleb128 .LVU778
	.uleb128 .LVU793
.LLST112:
	.byte	0x8
	.4byte	.LVL126
	.uleb128 .LVL127-.LVL126
	.uleb128 0xc
	.byte	0x91
	.sleb128 -236
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -228
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS113:
	.uleb128 .LVU778
	.uleb128 .LVU793
.LLST113:
	.byte	0x8
	.4byte	.LVL126
	.uleb128 .LVL127-.LVL126
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS80:
	.uleb128 .LVU476
	.uleb128 .LVU478
.LLST80:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3c888889
	.byte	0
.LVUS81:
	.uleb128 .LVU476
	.uleb128 .LVU478
.LLST81:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0xe
	.byte	0x7b
	.sleb128 60
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 64
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS83:
	.uleb128 .LVU478
	.uleb128 .LVU481
.LLST83:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0xe
	.byte	0x91
	.sleb128 -236
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x59
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -228
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS85:
	.uleb128 .LVU481
	.uleb128 .LVU484
.LLST85:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0x1e
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x59
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS86:
	.uleb128 .LVU481
	.uleb128 .LVU484
.LLST86:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL70-.LVL70
	.uleb128 0x32
	.byte	0x7b
	.sleb128 60
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 64
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS88:
	.uleb128 .LVU484
	.uleb128 .LVU489
	.uleb128 .LVU489
	.uleb128 .LVU490
	.uleb128 .LVU490
	.uleb128 .LVU491
	.uleb128 .LVU491
	.uleb128 .LVU492
	.uleb128 .LVU492
	.uleb128 .LVU493
	.uleb128 .LVU493
	.uleb128 .LVU494
	.uleb128 .LVU494
	.uleb128 .LVU500
.LLST88:
	.byte	0x6
	.4byte	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL71-.LVL70
	.uleb128 0x3f
	.byte	0x7b
	.sleb128 60
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0xa5
	.uleb128 0x59
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL71-.LVL70
	.uleb128 .LVL72-.LVL70
	.uleb128 0x35
	.byte	0x7b
	.sleb128 60
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x5a
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 68
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3c888889
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x5b
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4e
	.uleb128 0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL72-.LVL70
	.uleb128 .LVL73-.LVL70
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL73-.LVL70
	.uleb128 .LVL74-.LVL70
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL74-.LVL70
	.uleb128 .LVL75-.LVL70
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL75-.LVL70
	.uleb128 .LVL76-.LVL70
	.uleb128 0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL76-.LVL70
	.uleb128 .LVL77-.LVL70
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS89:
	.uleb128 .LVU484
	.uleb128 .LVU500
.LLST89:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL77-.LVL70
	.uleb128 0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS90:
	.uleb128 .LVU494
	.uleb128 .LVU496
.LLST90:
	.byte	0x8
	.4byte	.LVL76
	.uleb128 .LVL76-.LVL76
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x56
	.byte	0
.LVUS91:
	.uleb128 .LVU494
	.uleb128 .LVU496
.LLST91:
	.byte	0x8
	.4byte	.LVL76
	.uleb128 .LVL76-.LVL76
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.byte	0
.LVUS92:
	.uleb128 .LVU494
	.uleb128 .LVU496
.LLST92:
	.byte	0x8
	.4byte	.LVL76
	.uleb128 .LVL76-.LVL76
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x57
	.byte	0
.LVUS94:
	.uleb128 .LVU595
	.uleb128 .LVU597
.LLST94:
	.byte	0x8
	.4byte	.LVL90
	.uleb128 .LVL90-.LVL90
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x5c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5d
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS95:
	.uleb128 .LVU593
	.uleb128 .LVU594
	.uleb128 .LVU594
	.uleb128 .LVU595
	.uleb128 .LVU595
	.uleb128 .LVU597
.LLST95:
	.byte	0x6
	.4byte	.LVL88
	.byte	0x4
	.uleb128 .LVL88-.LVL88
	.uleb128 .LVL89-.LVL88
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL89-.LVL88
	.uleb128 .LVL90-.LVL88
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL90-.LVL88
	.uleb128 .LVL90-.LVL88
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL47
	.byte	0x4
	.uleb128 .LVL47-.LVL47
	.uleb128 .LVL50-.LVL47
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL50-.LVL47
	.uleb128 .LFE147-.LVL47
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS20:
	.uleb128 .LVU359
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU391
	.uleb128 .LVU391
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LVL50-.LVL48
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL50-.LVL48
	.uleb128 .LVL56-.LVL48
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL56-.LVL48
	.uleb128 .LVL57-.LVL48
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL57-.LVL48
	.uleb128 .LFE147-.LVL48
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS22:
	.uleb128 .LVU362
	.uleb128 .LVU364
.LLST22:
	.byte	0x8
	.4byte	.LVL49
	.uleb128 .LVL50-.LVL49
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU364
	.uleb128 .LVU365
.LLST24:
	.byte	0x8
	.4byte	.LVL50
	.uleb128 .LVL51-.LVL50
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU365
	.uleb128 .LVU366
.LLST26:
	.byte	0x8
	.4byte	.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU377
	.uleb128 .LVU383
	.uleb128 .LVU383
	.uleb128 .LVU390
	.uleb128 .LVU392
	.uleb128 0
.LLST28:
	.byte	0x6
	.4byte	.LVL52
	.byte	0x4
	.uleb128 .LVL52-.LVL52
	.uleb128 .LVL54-.LVL52
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL54-.LVL52
	.uleb128 .LVL55-.LVL52
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.LVL52
	.uleb128 .LFE147-.LVL52
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS33:
	.uleb128 .LVU398
	.uleb128 .LVU410
	.uleb128 .LVU410
	.uleb128 0
.LLST33:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL63-.LVL60
	.uleb128 0x7
	.byte	0x74
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.LVL60
	.uleb128 .LFE147-.LVL60
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0
.LVUS34:
	.uleb128 .LVU398
	.uleb128 .LVU406
	.uleb128 .LVU406
	.uleb128 0
.LLST34:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL62-.LVL60
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4e
	.byte	0x4
	.uleb128 .LVL62-.LVL60
	.uleb128 .LFE147-.LVL60
	.uleb128 0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU398
	.uleb128 .LVU403
	.uleb128 .LVU403
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL60
	.byte	0x4
	.uleb128 .LVL60-.LVL60
	.uleb128 .LVL61-.LVL60
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL61-.LVL60
	.uleb128 .LFE147-.LVL60
	.uleb128 0x8
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-1-.LVL28
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-1-.LVL28
	.uleb128 .LVL43-.LVL28
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL43-.LVL28
	.uleb128 .LVL44-1-.LVL28
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL44-1-.LVL28
	.uleb128 .LVL44-.LVL28
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL28
	.uleb128 .LFE146-.LVL28
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-1-.LVL28
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL29-1-.LVL28
	.uleb128 .LFE146-.LVL28
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL28
	.byte	0x4
	.uleb128 .LVL28-.LVL28
	.uleb128 .LVL29-1-.LVL28
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL29-1-.LVL28
	.uleb128 .LVL43-.LVL28
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL43-.LVL28
	.uleb128 .LVL44-1-.LVL28
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL44-1-.LVL28
	.uleb128 .LVL44-.LVL28
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL28
	.uleb128 .LFE146-.LVL28
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS16:
	.uleb128 .LVU253
	.uleb128 .LVU255
.LLST16:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL34-.LVL33
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
.LVUS17:
	.uleb128 .LVU253
	.uleb128 .LVU255
.LLST17:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL34-.LVL33
	.uleb128 0xa
	.byte	0x74
	.sleb128 4
	.byte	0xa6
	.byte	0x4
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x4f
	.uleb128 0x26
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU253
	.uleb128 .LVU255
.LLST18:
	.byte	0x8
	.4byte	.LVL33
	.uleb128 .LVL34-.LVL33
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL13-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-.LVL11
	.uleb128 .LVL22-.LVL11
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL22-.LVL11
	.uleb128 .LVL23-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL23-.LVL11
	.uleb128 .LVL25-.LVL11
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL25-.LVL11
	.uleb128 .LVL26-.LVL11
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL26-.LVL11
	.uleb128 .LFE145-.LVL11
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL11
	.byte	0x4
	.uleb128 .LVL11-.LVL11
	.uleb128 .LVL12-.LVL11
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL12-.LVL11
	.uleb128 .LVL25-.LVL11
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL25-.LVL11
	.uleb128 .LVL27-1-.LVL11
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL27-1-.LVL11
	.uleb128 .LFE145-.LVL11
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 .LVU195
	.uleb128 .LVU226
.LLST10:
	.byte	0x8
	.4byte	.LVL15
	.uleb128 .LVL22-.LVL15
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS11:
	.uleb128 .LVU196
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU210
.LLST11:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL20-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS12:
	.uleb128 .LVU205
	.uleb128 .LVU215
.LLST12:
	.byte	0x8
	.4byte	.LVL19
	.uleb128 .LVL21-.LVL19
	.uleb128 0x7
	.byte	0x76
	.sleb128 24
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x2
	.byte	0x70
	.sleb128 40
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LFE144-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x35
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x36
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x37
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x38
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x39
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL2-.LVL2
	.uleb128 0x2
	.byte	0x3a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x2
	.byte	0x3b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 11
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 12
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x72
	.sleb128 11
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4d
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x2
	.byte	0x4f
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x21
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x23
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x27
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x29
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2a
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2d
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x2f
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL7-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL2
	.uleb128 .LVL9-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL2
	.uleb128 .LVL9-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL2
	.uleb128 .LVL9-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL2
	.uleb128 .LVL9-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL2
	.uleb128 .LVL9-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x35
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL2
	.uleb128 .LFE144-.LVL2
	.uleb128 0x3
	.byte	0x8
	.byte	0x36
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU116
.LLST4:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS6:
	.uleb128 .LVU162
	.uleb128 .LVU167
.LLST6:
	.byte	0x8
	.4byte	.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL1:
	.byte	0x5
	.4byte	.LBB106
	.byte	0x4
	.uleb128 .LBB106-.LBB106
	.uleb128 .LBE106-.LBB106
	.byte	0x4
	.uleb128 .LBB116-.LBB106
	.uleb128 .LBE116-.LBB106
	.byte	0x4
	.uleb128 .LBB117-.LBB106
	.uleb128 .LBE117-.LBB106
	.byte	0x4
	.uleb128 .LBB118-.LBB106
	.uleb128 .LBE118-.LBB106
	.byte	0
.LLRL3:
	.byte	0x5
	.4byte	.LBB107
	.byte	0x4
	.uleb128 .LBB107-.LBB107
	.uleb128 .LBE107-.LBB107
	.byte	0x4
	.uleb128 .LBB111-.LBB107
	.uleb128 .LBE111-.LBB107
	.byte	0x4
	.uleb128 .LBB112-.LBB107
	.uleb128 .LBE112-.LBB107
	.byte	0
.LLRL5:
	.byte	0x5
	.4byte	.LBB113
	.byte	0x4
	.uleb128 .LBB113-.LBB113
	.uleb128 .LBE113-.LBB113
	.byte	0x4
	.uleb128 .LBB115-.LBB113
	.uleb128 .LBE115-.LBB113
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB119
	.byte	0x4
	.uleb128 .LBB119-.LBB119
	.uleb128 .LBE119-.LBB119
	.byte	0x4
	.uleb128 .LBB122-.LBB119
	.uleb128 .LBE122-.LBB119
	.byte	0x4
	.uleb128 .LBB123-.LBB119
	.uleb128 .LBE123-.LBB119
	.byte	0
.LLRL21:
	.byte	0x5
	.4byte	.LBB127
	.byte	0x4
	.uleb128 .LBB127-.LBB127
	.uleb128 .LBE127-.LBB127
	.byte	0x4
	.uleb128 .LBB196-.LBB127
	.uleb128 .LBE196-.LBB127
	.byte	0x4
	.uleb128 .LBB197-.LBB127
	.uleb128 .LBE197-.LBB127
	.byte	0x4
	.uleb128 .LBB198-.LBB127
	.uleb128 .LBE198-.LBB127
	.byte	0x4
	.uleb128 .LBB199-.LBB127
	.uleb128 .LBE199-.LBB127
	.byte	0x4
	.uleb128 .LBB200-.LBB127
	.uleb128 .LBE200-.LBB127
	.byte	0x4
	.uleb128 .LBB201-.LBB127
	.uleb128 .LBE201-.LBB127
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB128
	.byte	0x4
	.uleb128 .LBB128-.LBB128
	.uleb128 .LBE128-.LBB128
	.byte	0x4
	.uleb128 .LBB191-.LBB128
	.uleb128 .LBE191-.LBB128
	.byte	0x4
	.uleb128 .LBB192-.LBB128
	.uleb128 .LBE192-.LBB128
	.byte	0x4
	.uleb128 .LBB193-.LBB128
	.uleb128 .LBE193-.LBB128
	.byte	0x4
	.uleb128 .LBB194-.LBB128
	.uleb128 .LBE194-.LBB128
	.byte	0x4
	.uleb128 .LBB195-.LBB128
	.uleb128 .LBE195-.LBB128
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB129
	.byte	0x4
	.uleb128 .LBB129-.LBB129
	.uleb128 .LBE129-.LBB129
	.byte	0x4
	.uleb128 .LBB186-.LBB129
	.uleb128 .LBE186-.LBB129
	.byte	0x4
	.uleb128 .LBB187-.LBB129
	.uleb128 .LBE187-.LBB129
	.byte	0x4
	.uleb128 .LBB188-.LBB129
	.uleb128 .LBE188-.LBB129
	.byte	0x4
	.uleb128 .LBB189-.LBB129
	.uleb128 .LBE189-.LBB129
	.byte	0x4
	.uleb128 .LBB190-.LBB129
	.uleb128 .LBE190-.LBB129
	.byte	0
.LLRL27:
	.byte	0x5
	.4byte	.LBB130
	.byte	0x4
	.uleb128 .LBB130-.LBB130
	.uleb128 .LBE130-.LBB130
	.byte	0x4
	.uleb128 .LBB181-.LBB130
	.uleb128 .LBE181-.LBB130
	.byte	0x4
	.uleb128 .LBB182-.LBB130
	.uleb128 .LBE182-.LBB130
	.byte	0x4
	.uleb128 .LBB183-.LBB130
	.uleb128 .LBE183-.LBB130
	.byte	0x4
	.uleb128 .LBB184-.LBB130
	.uleb128 .LBE184-.LBB130
	.byte	0x4
	.uleb128 .LBB185-.LBB130
	.uleb128 .LBE185-.LBB130
	.byte	0
.LLRL29:
	.byte	0x5
	.4byte	.LBB131
	.byte	0x4
	.uleb128 .LBB131-.LBB131
	.uleb128 .LBE131-.LBB131
	.byte	0x4
	.uleb128 .LBB147-.LBB131
	.uleb128 .LBE147-.LBB131
	.byte	0x4
	.uleb128 .LBB156-.LBB131
	.uleb128 .LBE156-.LBB131
	.byte	0x4
	.uleb128 .LBB158-.LBB131
	.uleb128 .LBE158-.LBB131
	.byte	0x4
	.uleb128 .LBB161-.LBB131
	.uleb128 .LBE161-.LBB131
	.byte	0x4
	.uleb128 .LBB164-.LBB131
	.uleb128 .LBE164-.LBB131
	.byte	0x4
	.uleb128 .LBB175-.LBB131
	.uleb128 .LBE175-.LBB131
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB139
	.byte	0x4
	.uleb128 .LBB139-.LBB139
	.uleb128 .LBE139-.LBB139
	.byte	0x4
	.uleb128 .LBB157-.LBB139
	.uleb128 .LBE157-.LBB139
	.byte	0x4
	.uleb128 .LBB160-.LBB139
	.uleb128 .LBE160-.LBB139
	.byte	0x4
	.uleb128 .LBB162-.LBB139
	.uleb128 .LBE162-.LBB139
	.byte	0x4
	.uleb128 .LBB165-.LBB139
	.uleb128 .LBE165-.LBB139
	.byte	0x4
	.uleb128 .LBB167-.LBB139
	.uleb128 .LBE167-.LBB139
	.byte	0x4
	.uleb128 .LBB177-.LBB139
	.uleb128 .LBE177-.LBB139
	.byte	0
.LLRL31:
	.byte	0x5
	.4byte	.LBB148
	.byte	0x4
	.uleb128 .LBB148-.LBB148
	.uleb128 .LBE148-.LBB148
	.byte	0x4
	.uleb128 .LBB159-.LBB148
	.uleb128 .LBE159-.LBB148
	.byte	0x4
	.uleb128 .LBB163-.LBB148
	.uleb128 .LBE163-.LBB148
	.byte	0x4
	.uleb128 .LBB166-.LBB148
	.uleb128 .LBE166-.LBB148
	.byte	0x4
	.uleb128 .LBB168-.LBB148
	.uleb128 .LBE168-.LBB148
	.byte	0x4
	.uleb128 .LBB169-.LBB148
	.uleb128 .LBE169-.LBB148
	.byte	0x4
	.uleb128 .LBB176-.LBB148
	.uleb128 .LBE176-.LBB148
	.byte	0
.LLRL32:
	.byte	0x5
	.4byte	.LBB170
	.byte	0x4
	.uleb128 .LBB170-.LBB170
	.uleb128 .LBE170-.LBB170
	.byte	0x4
	.uleb128 .LBB178-.LBB170
	.uleb128 .LBE178-.LBB170
	.byte	0x4
	.uleb128 .LBB179-.LBB170
	.uleb128 .LBE179-.LBB170
	.byte	0x4
	.uleb128 .LBB180-.LBB170
	.uleb128 .LBE180-.LBB170
	.byte	0
.LLRL39:
	.byte	0x5
	.4byte	.LBB250
	.byte	0x4
	.uleb128 .LBB250-.LBB250
	.uleb128 .LBE250-.LBB250
	.byte	0x4
	.uleb128 .LBB479-.LBB250
	.uleb128 .LBE479-.LBB250
	.byte	0x4
	.uleb128 .LBB480-.LBB250
	.uleb128 .LBE480-.LBB250
	.byte	0x4
	.uleb128 .LBB481-.LBB250
	.uleb128 .LBE481-.LBB250
	.byte	0
.LLRL44:
	.byte	0x5
	.4byte	.LBB251
	.byte	0x4
	.uleb128 .LBB251-.LBB251
	.uleb128 .LBE251-.LBB251
	.byte	0x4
	.uleb128 .LBB399-.LBB251
	.uleb128 .LBE399-.LBB251
	.byte	0x4
	.uleb128 .LBB400-.LBB251
	.uleb128 .LBE400-.LBB251
	.byte	0x4
	.uleb128 .LBB401-.LBB251
	.uleb128 .LBE401-.LBB251
	.byte	0x4
	.uleb128 .LBB405-.LBB251
	.uleb128 .LBE405-.LBB251
	.byte	0x4
	.uleb128 .LBB476-.LBB251
	.uleb128 .LBE476-.LBB251
	.byte	0
.LLRL46:
	.byte	0x5
	.4byte	.LBB252
	.byte	0x4
	.uleb128 .LBB252-.LBB252
	.uleb128 .LBE252-.LBB252
	.byte	0x4
	.uleb128 .LBB370-.LBB252
	.uleb128 .LBE370-.LBB252
	.byte	0x4
	.uleb128 .LBB371-.LBB252
	.uleb128 .LBE371-.LBB252
	.byte	0x4
	.uleb128 .LBB372-.LBB252
	.uleb128 .LBE372-.LBB252
	.byte	0x4
	.uleb128 .LBB373-.LBB252
	.uleb128 .LBE373-.LBB252
	.byte	0
.LLRL49:
	.byte	0x5
	.4byte	.LBB253
	.byte	0x4
	.uleb128 .LBB253-.LBB253
	.uleb128 .LBE253-.LBB253
	.byte	0x4
	.uleb128 .LBB357-.LBB253
	.uleb128 .LBE357-.LBB253
	.byte	0x4
	.uleb128 .LBB358-.LBB253
	.uleb128 .LBE358-.LBB253
	.byte	0x4
	.uleb128 .LBB359-.LBB253
	.uleb128 .LBE359-.LBB253
	.byte	0x4
	.uleb128 .LBB360-.LBB253
	.uleb128 .LBE360-.LBB253
	.byte	0x4
	.uleb128 .LBB361-.LBB253
	.uleb128 .LBE361-.LBB253
	.byte	0x4
	.uleb128 .LBB362-.LBB253
	.uleb128 .LBE362-.LBB253
	.byte	0x4
	.uleb128 .LBB364-.LBB253
	.uleb128 .LBE364-.LBB253
	.byte	0x4
	.uleb128 .LBB366-.LBB253
	.uleb128 .LBE366-.LBB253
	.byte	0x4
	.uleb128 .LBB368-.LBB253
	.uleb128 .LBE368-.LBB253
	.byte	0x4
	.uleb128 .LBB369-.LBB253
	.uleb128 .LBE369-.LBB253
	.byte	0
.LLRL51:
	.byte	0x5
	.4byte	.LBB254
	.byte	0x4
	.uleb128 .LBB254-.LBB254
	.uleb128 .LBE254-.LBB254
	.byte	0x4
	.uleb128 .LBB340-.LBB254
	.uleb128 .LBE340-.LBB254
	.byte	0x4
	.uleb128 .LBB341-.LBB254
	.uleb128 .LBE341-.LBB254
	.byte	0x4
	.uleb128 .LBB342-.LBB254
	.uleb128 .LBE342-.LBB254
	.byte	0x4
	.uleb128 .LBB343-.LBB254
	.uleb128 .LBE343-.LBB254
	.byte	0x4
	.uleb128 .LBB344-.LBB254
	.uleb128 .LBE344-.LBB254
	.byte	0x4
	.uleb128 .LBB345-.LBB254
	.uleb128 .LBE345-.LBB254
	.byte	0x4
	.uleb128 .LBB346-.LBB254
	.uleb128 .LBE346-.LBB254
	.byte	0x4
	.uleb128 .LBB347-.LBB254
	.uleb128 .LBE347-.LBB254
	.byte	0x4
	.uleb128 .LBB348-.LBB254
	.uleb128 .LBE348-.LBB254
	.byte	0x4
	.uleb128 .LBB349-.LBB254
	.uleb128 .LBE349-.LBB254
	.byte	0
.LLRL53:
	.byte	0x5
	.4byte	.LBB255
	.byte	0x4
	.uleb128 .LBB255-.LBB255
	.uleb128 .LBE255-.LBB255
	.byte	0x4
	.uleb128 .LBB329-.LBB255
	.uleb128 .LBE329-.LBB255
	.byte	0x4
	.uleb128 .LBB330-.LBB255
	.uleb128 .LBE330-.LBB255
	.byte	0x4
	.uleb128 .LBB331-.LBB255
	.uleb128 .LBE331-.LBB255
	.byte	0x4
	.uleb128 .LBB332-.LBB255
	.uleb128 .LBE332-.LBB255
	.byte	0x4
	.uleb128 .LBB333-.LBB255
	.uleb128 .LBE333-.LBB255
	.byte	0x4
	.uleb128 .LBB334-.LBB255
	.uleb128 .LBE334-.LBB255
	.byte	0x4
	.uleb128 .LBB335-.LBB255
	.uleb128 .LBE335-.LBB255
	.byte	0x4
	.uleb128 .LBB336-.LBB255
	.uleb128 .LBE336-.LBB255
	.byte	0x4
	.uleb128 .LBB337-.LBB255
	.uleb128 .LBE337-.LBB255
	.byte	0x4
	.uleb128 .LBB338-.LBB255
	.uleb128 .LBE338-.LBB255
	.byte	0x4
	.uleb128 .LBB339-.LBB255
	.uleb128 .LBE339-.LBB255
	.byte	0
.LLRL55:
	.byte	0x5
	.4byte	.LBB256
	.byte	0x4
	.uleb128 .LBB256-.LBB256
	.uleb128 .LBE256-.LBB256
	.byte	0x4
	.uleb128 .LBB318-.LBB256
	.uleb128 .LBE318-.LBB256
	.byte	0x4
	.uleb128 .LBB319-.LBB256
	.uleb128 .LBE319-.LBB256
	.byte	0x4
	.uleb128 .LBB320-.LBB256
	.uleb128 .LBE320-.LBB256
	.byte	0x4
	.uleb128 .LBB321-.LBB256
	.uleb128 .LBE321-.LBB256
	.byte	0x4
	.uleb128 .LBB322-.LBB256
	.uleb128 .LBE322-.LBB256
	.byte	0x4
	.uleb128 .LBB323-.LBB256
	.uleb128 .LBE323-.LBB256
	.byte	0x4
	.uleb128 .LBB324-.LBB256
	.uleb128 .LBE324-.LBB256
	.byte	0x4
	.uleb128 .LBB325-.LBB256
	.uleb128 .LBE325-.LBB256
	.byte	0x4
	.uleb128 .LBB326-.LBB256
	.uleb128 .LBE326-.LBB256
	.byte	0x4
	.uleb128 .LBB327-.LBB256
	.uleb128 .LBE327-.LBB256
	.byte	0x4
	.uleb128 .LBB328-.LBB256
	.uleb128 .LBE328-.LBB256
	.byte	0
.LLRL57:
	.byte	0x5
	.4byte	.LBB257
	.byte	0x4
	.uleb128 .LBB257-.LBB257
	.uleb128 .LBE257-.LBB257
	.byte	0x4
	.uleb128 .LBB311-.LBB257
	.uleb128 .LBE311-.LBB257
	.byte	0x4
	.uleb128 .LBB315-.LBB257
	.uleb128 .LBE315-.LBB257
	.byte	0x4
	.uleb128 .LBB316-.LBB257
	.uleb128 .LBE316-.LBB257
	.byte	0x4
	.uleb128 .LBB317-.LBB257
	.uleb128 .LBE317-.LBB257
	.byte	0
.LLRL59:
	.byte	0x5
	.4byte	.LBB258
	.byte	0x4
	.uleb128 .LBB258-.LBB258
	.uleb128 .LBE258-.LBB258
	.byte	0x4
	.uleb128 .LBB264-.LBB258
	.uleb128 .LBE264-.LBB258
	.byte	0x4
	.uleb128 .LBB265-.LBB258
	.uleb128 .LBE265-.LBB258
	.byte	0x4
	.uleb128 .LBB266-.LBB258
	.uleb128 .LBE266-.LBB258
	.byte	0x4
	.uleb128 .LBB267-.LBB258
	.uleb128 .LBE267-.LBB258
	.byte	0
.LLRL66:
	.byte	0x5
	.4byte	.LBB268
	.byte	0x4
	.uleb128 .LBB268-.LBB268
	.uleb128 .LBE268-.LBB268
	.byte	0x4
	.uleb128 .LBB277-.LBB268
	.uleb128 .LBE277-.LBB268
	.byte	0x4
	.uleb128 .LBB287-.LBB268
	.uleb128 .LBE287-.LBB268
	.byte	0x4
	.uleb128 .LBB297-.LBB268
	.uleb128 .LBE297-.LBB268
	.byte	0x4
	.uleb128 .LBB300-.LBB268
	.uleb128 .LBE300-.LBB268
	.byte	0x4
	.uleb128 .LBB301-.LBB268
	.uleb128 .LBE301-.LBB268
	.byte	0x4
	.uleb128 .LBB304-.LBB268
	.uleb128 .LBE304-.LBB268
	.byte	0x4
	.uleb128 .LBB312-.LBB268
	.uleb128 .LBE312-.LBB268
	.byte	0
.LLRL68:
	.byte	0x5
	.4byte	.LBB278
	.byte	0x4
	.uleb128 .LBB278-.LBB278
	.uleb128 .LBE278-.LBB278
	.byte	0x4
	.uleb128 .LBB296-.LBB278
	.uleb128 .LBE296-.LBB278
	.byte	0x4
	.uleb128 .LBB298-.LBB278
	.uleb128 .LBE298-.LBB278
	.byte	0x4
	.uleb128 .LBB302-.LBB278
	.uleb128 .LBE302-.LBB278
	.byte	0x4
	.uleb128 .LBB305-.LBB278
	.uleb128 .LBE305-.LBB278
	.byte	0x4
	.uleb128 .LBB307-.LBB278
	.uleb128 .LBE307-.LBB278
	.byte	0x4
	.uleb128 .LBB308-.LBB278
	.uleb128 .LBE308-.LBB278
	.byte	0x4
	.uleb128 .LBB314-.LBB278
	.uleb128 .LBE314-.LBB278
	.byte	0
.LLRL70:
	.byte	0x5
	.4byte	.LBB288
	.byte	0x4
	.uleb128 .LBB288-.LBB288
	.uleb128 .LBE288-.LBB288
	.byte	0x4
	.uleb128 .LBB299-.LBB288
	.uleb128 .LBE299-.LBB288
	.byte	0x4
	.uleb128 .LBB303-.LBB288
	.uleb128 .LBE303-.LBB288
	.byte	0x4
	.uleb128 .LBB306-.LBB288
	.uleb128 .LBE306-.LBB288
	.byte	0x4
	.uleb128 .LBB309-.LBB288
	.uleb128 .LBE309-.LBB288
	.byte	0x4
	.uleb128 .LBB310-.LBB288
	.uleb128 .LBE310-.LBB288
	.byte	0x4
	.uleb128 .LBB313-.LBB288
	.uleb128 .LBE313-.LBB288
	.byte	0
.LLRL72:
	.byte	0x5
	.4byte	.LBB350
	.byte	0x4
	.uleb128 .LBB350-.LBB350
	.uleb128 .LBE350-.LBB350
	.byte	0x4
	.uleb128 .LBB356-.LBB350
	.uleb128 .LBE356-.LBB350
	.byte	0x4
	.uleb128 .LBB363-.LBB350
	.uleb128 .LBE363-.LBB350
	.byte	0x4
	.uleb128 .LBB365-.LBB350
	.uleb128 .LBE365-.LBB350
	.byte	0x4
	.uleb128 .LBB367-.LBB350
	.uleb128 .LBE367-.LBB350
	.byte	0
.LLRL79:
	.byte	0x5
	.4byte	.LBB374
	.byte	0x4
	.uleb128 .LBB374-.LBB374
	.uleb128 .LBE374-.LBB374
	.byte	0x4
	.uleb128 .LBB392-.LBB374
	.uleb128 .LBE392-.LBB374
	.byte	0x4
	.uleb128 .LBB394-.LBB374
	.uleb128 .LBE394-.LBB374
	.byte	0x4
	.uleb128 .LBB406-.LBB374
	.uleb128 .LBE406-.LBB374
	.byte	0x4
	.uleb128 .LBB407-.LBB374
	.uleb128 .LBE407-.LBB374
	.byte	0
.LLRL82:
	.byte	0x5
	.4byte	.LBB380
	.byte	0x4
	.uleb128 .LBB380-.LBB380
	.uleb128 .LBE380-.LBB380
	.byte	0x4
	.uleb128 .LBB393-.LBB380
	.uleb128 .LBE393-.LBB380
	.byte	0
.LLRL84:
	.byte	0x5
	.4byte	.LBB383
	.byte	0x4
	.uleb128 .LBB383-.LBB383
	.uleb128 .LBE383-.LBB383
	.byte	0x4
	.uleb128 .LBB395-.LBB383
	.uleb128 .LBE395-.LBB383
	.byte	0x4
	.uleb128 .LBB397-.LBB383
	.uleb128 .LBE397-.LBB383
	.byte	0
.LLRL87:
	.byte	0x5
	.4byte	.LBB387
	.byte	0x4
	.uleb128 .LBB387-.LBB387
	.uleb128 .LBE387-.LBB387
	.byte	0x4
	.uleb128 .LBB396-.LBB387
	.uleb128 .LBE396-.LBB387
	.byte	0x4
	.uleb128 .LBB398-.LBB387
	.uleb128 .LBE398-.LBB387
	.byte	0
.LLRL93:
	.byte	0x5
	.4byte	.LBB402
	.byte	0x4
	.uleb128 .LBB402-.LBB402
	.uleb128 .LBE402-.LBB402
	.byte	0x4
	.uleb128 .LBB477-.LBB402
	.uleb128 .LBE477-.LBB402
	.byte	0
.LLRL96:
	.byte	0x5
	.4byte	.LBB408
	.byte	0x4
	.uleb128 .LBB408-.LBB408
	.uleb128 .LBE408-.LBB408
	.byte	0x4
	.uleb128 .LBB475-.LBB408
	.uleb128 .LBE475-.LBB408
	.byte	0x4
	.uleb128 .LBB478-.LBB408
	.uleb128 .LBE478-.LBB408
	.byte	0
.LLRL98:
	.byte	0x5
	.4byte	.LBB409
	.byte	0x4
	.uleb128 .LBB409-.LBB409
	.uleb128 .LBE409-.LBB409
	.byte	0x4
	.uleb128 .LBB428-.LBB409
	.uleb128 .LBE428-.LBB409
	.byte	0
.LLRL101:
	.byte	0x5
	.4byte	.LBB412
	.byte	0x4
	.uleb128 .LBB412-.LBB412
	.uleb128 .LBE412-.LBB412
	.byte	0x4
	.uleb128 .LBB429-.LBB412
	.uleb128 .LBE429-.LBB412
	.byte	0x4
	.uleb128 .LBB430-.LBB412
	.uleb128 .LBE430-.LBB412
	.byte	0x4
	.uleb128 .LBB439-.LBB412
	.uleb128 .LBE439-.LBB412
	.byte	0x4
	.uleb128 .LBB474-.LBB412
	.uleb128 .LBE474-.LBB412
	.byte	0
.LLRL103:
	.byte	0x5
	.4byte	.LBB414
	.byte	0x4
	.uleb128 .LBB414-.LBB414
	.uleb128 .LBE414-.LBB414
	.byte	0x4
	.uleb128 .LBB422-.LBB414
	.uleb128 .LBE422-.LBB414
	.byte	0x4
	.uleb128 .LBB423-.LBB414
	.uleb128 .LBE423-.LBB414
	.byte	0
.LLRL104:
	.byte	0x5
	.4byte	.LBB416
	.byte	0x4
	.uleb128 .LBB416-.LBB416
	.uleb128 .LBE416-.LBB416
	.byte	0x4
	.uleb128 .LBB419-.LBB416
	.uleb128 .LBE419-.LBB416
	.byte	0
.LLRL105:
	.byte	0x5
	.4byte	.LBB431
	.byte	0x4
	.uleb128 .LBB431-.LBB431
	.uleb128 .LBE431-.LBB431
	.byte	0x4
	.uleb128 .LBB440-.LBB431
	.uleb128 .LBE440-.LBB431
	.byte	0x4
	.uleb128 .LBB448-.LBB431
	.uleb128 .LBE448-.LBB431
	.byte	0x4
	.uleb128 .LBB456-.LBB431
	.uleb128 .LBE456-.LBB431
	.byte	0x4
	.uleb128 .LBB458-.LBB431
	.uleb128 .LBE458-.LBB431
	.byte	0x4
	.uleb128 .LBB461-.LBB431
	.uleb128 .LBE461-.LBB431
	.byte	0x4
	.uleb128 .LBB464-.LBB431
	.uleb128 .LBE464-.LBB431
	.byte	0
.LLRL107:
	.byte	0x5
	.4byte	.LBB441
	.byte	0x4
	.uleb128 .LBB441-.LBB441
	.uleb128 .LBE441-.LBB441
	.byte	0x4
	.uleb128 .LBB457-.LBB441
	.uleb128 .LBE457-.LBB441
	.byte	0x4
	.uleb128 .LBB460-.LBB441
	.uleb128 .LBE460-.LBB441
	.byte	0x4
	.uleb128 .LBB462-.LBB441
	.uleb128 .LBE462-.LBB441
	.byte	0x4
	.uleb128 .LBB465-.LBB441
	.uleb128 .LBE465-.LBB441
	.byte	0x4
	.uleb128 .LBB467-.LBB441
	.uleb128 .LBE467-.LBB441
	.byte	0
.LLRL109:
	.byte	0x5
	.4byte	.LBB449
	.byte	0x4
	.uleb128 .LBB449-.LBB449
	.uleb128 .LBE449-.LBB449
	.byte	0x4
	.uleb128 .LBB459-.LBB449
	.uleb128 .LBE459-.LBB449
	.byte	0x4
	.uleb128 .LBB463-.LBB449
	.uleb128 .LBE463-.LBB449
	.byte	0x4
	.uleb128 .LBB466-.LBB449
	.uleb128 .LBE466-.LBB449
	.byte	0x4
	.uleb128 .LBB468-.LBB449
	.uleb128 .LBE468-.LBB449
	.byte	0x4
	.uleb128 .LBB469-.LBB449
	.uleb128 .LBE469-.LBB449
	.byte	0
.LLRL111:
	.byte	0x5
	.4byte	.LBB470
	.byte	0x4
	.uleb128 .LBB470-.LBB470
	.uleb128 .LBE470-.LBB470
	.byte	0x4
	.uleb128 .LBB473-.LBB470
	.uleb128 .LBE473-.LBB470
	.byte	0
.LLRL116:
	.byte	0x5
	.4byte	.LBB482
	.byte	0x4
	.uleb128 .LBB482-.LBB482
	.uleb128 .LBE482-.LBB482
	.byte	0x4
	.uleb128 .LBB493-.LBB482
	.uleb128 .LBE493-.LBB482
	.byte	0
.LLRL119:
	.byte	0x5
	.4byte	.LBB483
	.byte	0x4
	.uleb128 .LBB483-.LBB483
	.uleb128 .LBE483-.LBB483
	.byte	0x4
	.uleb128 .LBB489-.LBB483
	.uleb128 .LBE489-.LBB483
	.byte	0x4
	.uleb128 .LBB490-.LBB483
	.uleb128 .LBE490-.LBB483
	.byte	0x4
	.uleb128 .LBB491-.LBB483
	.uleb128 .LBE491-.LBB483
	.byte	0x4
	.uleb128 .LBB492-.LBB483
	.uleb128 .LBE492-.LBB483
	.byte	0
.LLRL133:
	.byte	0x7
	.4byte	.LFB144
	.uleb128 .LFE144-.LFB144
	.byte	0x7
	.4byte	.LFB145
	.uleb128 .LFE145-.LFB145
	.byte	0x7
	.4byte	.LFB146
	.uleb128 .LFE146-.LFB146
	.byte	0x7
	.4byte	.LFB147
	.uleb128 .LFE147-.LFB147
	.byte	0x7
	.4byte	.LFB148
	.uleb128 .LFE148-.LFB148
	.byte	0x7
	.4byte	.LFB149
	.uleb128 .LFE149-.LFB149
	.byte	0x7
	.4byte	.LFB150
	.uleb128 .LFE150-.LFB150
	.byte	0x7
	.4byte	.LFB151
	.uleb128 .LFE151-.LFB151
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF181:
	.ascii	"direction\000"
.LASF85:
	.ascii	"transparentVBO\000"
.LASF61:
	.ascii	"Block_Diamond_Ore\000"
.LASF121:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF12:
	.ascii	"__int64_t\000"
.LASF229:
	.ascii	"MaxFallVelocity\000"
.LASF69:
	.ascii	"Block_Furnace\000"
.LASF222:
	.ascii	"viewRayCast\000"
.LASF140:
	.ascii	"WorkerItem\000"
.LASF220:
	.ascii	"inventorySite\000"
.LASF291:
	.ascii	"strlen\000"
.LASF143:
	.ascii	"capacity\000"
.LASF184:
	.ascii	"Thread_tag\000"
.LASF68:
	.ascii	"Block_Emerald_Block\000"
.LASF249:
	.ascii	"soundfile\000"
.LASF173:
	.ascii	"amount\000"
.LASF236:
	.ascii	"Collision_BoxIntersect\000"
.LASF50:
	.ascii	"Block_Snow\000"
.LASF118:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF54:
	.ascii	"Block_Smooth_Stone\000"
.LASF28:
	.ascii	"Direction_Invalid\000"
.LASF168:
	.ascii	"World\000"
.LASF193:
	.ascii	"fovAdd\000"
.LASF15:
	.ascii	"unsigned int\000"
.LASF145:
	.ascii	"itemAddedEvent\000"
.LASF42:
	.ascii	"Block_Brick\000"
.LASF119:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF187:
	.ascii	"threaid\000"
.LASF72:
	.ascii	"Xorshift32\000"
.LASF180:
	.ascii	"distSqr\000"
.LASF194:
	.ascii	"crouchAdd\000"
.LASF51:
	.ascii	"Block_Obsidian\000"
.LASF56:
	.ascii	"Block_Grass_Path\000"
.LASF153:
	.ascii	"WorldGenType\000"
.LASF112:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF210:
	.ascii	"difficulty\000"
.LASF95:
	.ascii	"ChunkGenProgress\000"
.LASF232:
	.ascii	"playopus\000"
.LASF123:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF26:
	.ascii	"Direction_North\000"
.LASF224:
	.ascii	"blockInActionRange\000"
.LASF221:
	.ascii	"quickSelectBar\000"
.LASF124:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF43:
	.ascii	"Block_Planks\000"
.LASF259:
	.ascii	"collision\000"
.LASF223:
	.ascii	"blockInSight\000"
.LASF139:
	.ascii	"chunk\000"
.LASF89:
	.ascii	"forceVBOUpdate\000"
.LASF230:
	.ascii	"GravityPlusFriction\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF128:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF289:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF21:
	.ascii	"uint64_t\000"
.LASF242:
	.ascii	"World_GetBlock\000"
.LASF78:
	.ascii	"VBO_Block\000"
.LASF285:
	.ascii	"AABB_Overlap\000"
.LASF225:
	.ascii	"inventory\000"
.LASF172:
	.ascii	"meta\000"
.LASF188:
	.ascii	"opusFile\000"
.LASF122:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF34:
	.ascii	"Block_Grass\000"
.LASF176:
	.ascii	"time\000"
.LASF207:
	.ascii	"armour\000"
.LASF255:
	.ascii	"finalPos\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF262:
	.ascii	"blockBox\000"
.LASF208:
	.ascii	"oxygen\000"
.LASF183:
	.ascii	"OggOpusFile\000"
.LASF191:
	.ascii	"pitch\000"
.LASF127:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF160:
	.ascii	"cacheTranslationX\000"
.LASF235:
	.ascii	"sqrtf\000"
.LASF161:
	.ascii	"cacheTranslationZ\000"
.LASF292:
	.ascii	"__builtin_strlen\000"
.LASF218:
	.ascii	"quickSelectBarSlots\000"
.LASF48:
	.ascii	"Block_Door_Bottom\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF186:
	.ascii	"background\000"
.LASF148:
	.ascii	"WorldGen_Smea\000"
.LASF162:
	.ascii	"chunkPool\000"
.LASF271:
	.ascii	"Player_Respawn\000"
.LASF170:
	.ascii	"Items_Count\000"
.LASF58:
	.ascii	"Block_Lava\000"
.LASF216:
	.ascii	"gamemode\000"
.LASF117:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF73:
	.ascii	"size_t\000"
.LASF70:
	.ascii	"Blocks_Count\000"
.LASF9:
	.ascii	"long int\000"
.LASF20:
	.ascii	"int64_t\000"
.LASF248:
	.ascii	"offset\000"
.LASF233:
	.ascii	"World_SetBlockAndMeta\000"
.LASF105:
	.ascii	"Chunk\000"
.LASF90:
	.ascii	"_Bool\000"
.LASF266:
	.ascii	"intersects\000"
.LASF275:
	.ascii	"Player_Init\000"
.LASF132:
	.ascii	"WorkerItemType_Save\000"
.LASF31:
	.ascii	"Block_Air\000"
.LASF280:
	.ascii	"f3_dot\000"
.LASF57:
	.ascii	"Block_Water\000"
.LASF98:
	.ascii	"uuid\000"
.LASF14:
	.ascii	"__uint64_t\000"
.LASF165:
	.ascii	"workqueue\000"
.LASF246:
	.ascii	"player\000"
.LASF197:
	.ascii	"sprinting\000"
.LASF185:
	.ascii	"path\000"
.LASF166:
	.ascii	"randomTickGen\000"
.LASF47:
	.ascii	"Block_Door_Top\000"
.LASF198:
	.ascii	"flying\000"
.LASF270:
	.ascii	"Player_Update\000"
.LASF52:
	.ascii	"Block_Netherrack\000"
.LASF155:
	.ascii	"settings\000"
.LASF65:
	.ascii	"Block_Diamond_Block\000"
.LASF251:
	.ascii	"accl\000"
.LASF169:
	.ascii	"Item_Totem\000"
.LASF256:
	.ascii	"wallCollision\000"
.LASF219:
	.ascii	"quickSelectBarSlot\000"
.LASF32:
	.ascii	"Block_Stone\000"
.LASF71:
	.ascii	"char\000"
.LASF107:
	.ascii	"LightLock\000"
.LASF116:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF283:
	.ascii	"f3_add\000"
.LASF133:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF115:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF227:
	.ascii	"DirectionToOffset\000"
.LASF111:
	.ascii	"Thread\000"
.LASF81:
	.ascii	"revision\000"
.LASF102:
	.ascii	"heightmapRevision\000"
.LASF159:
	.ascii	"genSettings\000"
.LASF141:
	.ascii	"data\000"
.LASF110:
	.ascii	"LightEvent\000"
.LASF94:
	.ascii	"ChunkGen_Finished\000"
.LASF16:
	.ascii	"uint8_t\000"
.LASF175:
	.ascii	"cause\000"
.LASF67:
	.ascii	"Block_Iron_Block\000"
.LASF96:
	.ascii	"tasksRunning\000"
.LASF234:
	.ascii	"strncat\000"
.LASF243:
	.ascii	"DebugUI_Log\000"
.LASF157:
	.ascii	"HighestBlock\000"
.LASF267:
	.ascii	"nrmDiff\000"
.LASF113:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF25:
	.ascii	"Direction_Top\000"
.LASF265:
	.ascii	"face\000"
.LASF136:
	.ascii	"WorkerItemTypes_Count\000"
.LASF64:
	.ascii	"Block_Gold_Block\000"
.LASF206:
	.ascii	"hungertimer\000"
.LASF13:
	.ascii	"long long int\000"
.LASF63:
	.ascii	"Block_Emerald_Ore\000"
.LASF231:
	.ascii	"World_SetBlock\000"
.LASF281:
	.ascii	"f3_scl\000"
.LASF109:
	.ascii	"lock\000"
.LASF278:
	.ascii	"f3_nrm\000"
.LASF264:
	.ascii	"depth\000"
.LASF152:
	.ascii	"WorldGenTypes_Count\000"
.LASF39:
	.ascii	"Block_Leaves\000"
.LASF290:
	.ascii	"Player_CanMove\000"
.LASF247:
	.ascii	"sound\000"
.LASF239:
	.ascii	"Raycast_Cast\000"
.LASF253:
	.ascii	"SimStep\000"
.LASF211:
	.ascii	"rndy\000"
.LASF178:
	.ascii	"superflat\000"
.LASF55:
	.ascii	"Block_Crafting_Table\000"
.LASF149:
	.ascii	"WorldGen_SuperFlat\000"
.LASF205:
	.ascii	"breakPlaceTimeout\000"
.LASF272:
	.ascii	"spawnY\000"
.LASF287:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF76:
	.ascii	"size\000"
.LASF82:
	.ascii	"seeThrough\000"
.LASF245:
	.ascii	"Player_PlaceBlock\000"
.LASF277:
	.ascii	"Box_Create\000"
.LASF167:
	.ascii	"weather\000"
.LASF182:
	.ascii	"Raycast_Result\000"
.LASF130:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF212:
	.ascii	"spawnx\000"
.LASF213:
	.ascii	"spawny\000"
.LASF214:
	.ascii	"spawnz\000"
.LASF120:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF154:
	.ascii	"seed\000"
.LASF79:
	.ascii	"blocks\000"
.LASF27:
	.ascii	"Direction_South\000"
.LASF59:
	.ascii	"Block_Iron_Ore\000"
.LASF84:
	.ascii	"emptyRevision\000"
.LASF254:
	.ascii	"newPos\000"
.LASF33:
	.ascii	"Block_Dirt\000"
.LASF237:
	.ascii	"svcSleepThread\000"
.LASF174:
	.ascii	"ItemStack\000"
.LASF103:
	.ascii	"displayRevision\000"
.LASF74:
	.ascii	"long double\000"
.LASF75:
	.ascii	"_LOCK_T\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF22:
	.ascii	"Direction_West\000"
.LASF228:
	.ascii	"MaxWalkVelocity\000"
.LASF91:
	.ascii	"Cluster\000"
.LASF217:
	.ascii	"cheats\000"
.LASF288:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/entity/Pla"
	.ascii	"yer.c\000"
.LASF260:
	.ascii	"axisStep\000"
.LASF284:
	.ascii	"f3_new\000"
.LASF195:
	.ascii	"grounded\000"
.LASF23:
	.ascii	"Direction_East\000"
.LASF192:
	.ascii	"bobbing\000"
.LASF4:
	.ascii	"short int\000"
.LASF282:
	.ascii	"f3_sub\000"
.LASF114:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF215:
	.ascii	"spawnset\000"
.LASF209:
	.ascii	"hunger\000"
.LASF142:
	.ascii	"length\000"
.LASF164:
	.ascii	"freeChunks\000"
.LASF129:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF97:
	.ascii	"graphicalTasksRunning\000"
.LASF202:
	.ascii	"autoJumpEnabled\000"
.LASF135:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF125:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF126:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF24:
	.ascii	"Direction_Bottom\000"
.LASF53:
	.ascii	"Block_Sandstone\000"
.LASF171:
	.ascii	"block\000"
.LASF92:
	.ascii	"ChunkGen_Empty\000"
.LASF86:
	.ascii	"vertices\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF44:
	.ascii	"Block_Wool\000"
.LASF158:
	.ascii	"name\000"
.LASF49:
	.ascii	"Block_Snow_Grass\000"
.LASF40:
	.ascii	"Block_Glass\000"
.LASF80:
	.ascii	"metadataLight\000"
.LASF241:
	.ascii	"sinf\000"
.LASF204:
	.ascii	"simStepAccum\000"
.LASF203:
	.ascii	"velocity\000"
.LASF179:
	.ascii	"float3\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF189:
	.ascii	"Sound\000"
.LASF83:
	.ascii	"empty\000"
.LASF147:
	.ascii	"WorkQueue\000"
.LASF177:
	.ascii	"Damage\000"
.LASF0:
	.ascii	"float\000"
.LASF144:
	.ascii	"queue\000"
.LASF93:
	.ascii	"ChunkGen_Terrain\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF200:
	.ascii	"world\000"
.LASF77:
	.ascii	"memory\000"
.LASF36:
	.ascii	"Block_Sand\000"
.LASF29:
	.ascii	"Direction\000"
.LASF263:
	.ascii	"normal\000"
.LASF138:
	.ascii	"type\000"
.LASF45:
	.ascii	"Block_Bedrock\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF156:
	.ascii	"GeneratorSettings\000"
.LASF62:
	.ascii	"Block_Gold_Ore\000"
.LASF35:
	.ascii	"Block_Cobblestone\000"
.LASF88:
	.ascii	"vboRevision\000"
.LASF104:
	.ascii	"references\000"
.LASF268:
	.ascii	"landingBlock\000"
.LASF257:
	.ascii	"wasGrounded\000"
.LASF134:
	.ascii	"WorkerItemType_Decorate\000"
.LASF108:
	.ascii	"state\000"
.LASF238:
	.ascii	"round\000"
.LASF240:
	.ascii	"cosf\000"
.LASF101:
	.ascii	"heightmap\000"
.LASF250:
	.ascii	"Player_Move\000"
.LASF273:
	.ascii	"shouldOffset\000"
.LASF30:
	.ascii	"Block\000"
.LASF38:
	.ascii	"Block_Gravel\000"
.LASF252:
	.ascii	"speedFactor\000"
.LASF99:
	.ascii	"genProgress\000"
.LASF2:
	.ascii	"signed char\000"
.LASF261:
	.ascii	"playerBox\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF276:
	.ascii	"showDebugInfo\000"
.LASF46:
	.ascii	"Block_Coarse\000"
.LASF100:
	.ascii	"clusters\000"
.LASF201:
	.ascii	"view\000"
.LASF87:
	.ascii	"transparentVertices\000"
.LASF37:
	.ascii	"Block_Log\000"
.LASF106:
	.ascii	"double\000"
.LASF146:
	.ascii	"listInUse\000"
.LASF196:
	.ascii	"jumped\000"
.LASF60:
	.ascii	"Block_Coal_Ore\000"
.LASF269:
	.ascii	"Player_Jump\000"
.LASF137:
	.ascii	"WorkerItemType\000"
.LASF41:
	.ascii	"Block_Stonebrick\000"
.LASF258:
	.ascii	"movDiff\000"
.LASF66:
	.ascii	"Block_Coal_Block\000"
.LASF279:
	.ascii	"f3_mag\000"
.LASF163:
	.ascii	"chunkCache\000"
.LASF131:
	.ascii	"WorkerItemType_Load\000"
.LASF150:
	.ascii	"WorldGen_FlatBedrock\000"
.LASF190:
	.ascii	"position\000"
.LASF199:
	.ascii	"crouching\000"
.LASF274:
	.ascii	"OvertimeDamage\000"
.LASF226:
	.ascii	"Player\000"
.LASF286:
	.ascii	"FastFloor\000"
.LASF151:
	.ascii	"WorldGen_Default\000"
.LASF244:
	.ascii	"Player_BreakBlock\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
