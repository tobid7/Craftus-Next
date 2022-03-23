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
	.file	"ChunkWorker.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ChunkWorker_Mainloop,"ax",%progbits
	.align	2
	.global	ChunkWorker_Mainloop
	.syntax unified
	.arm
	.fpu vfp
	.type	ChunkWorker_Mainloop, %function
ChunkWorker_Mainloop:
.LVL0:
.LFB122:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/world/ChunkWorker.c"
	.loc 1 61 40 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 62 2 view .LVU1
	.loc 1 63 2 view .LVU2
	mov	r3, #0
	.loc 1 61 40 is_stmt 0 view .LVU3
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
	mov	fp, r0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 80
	.loc 1 63 2 view .LVU4
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	.loc 1 64 2 is_stmt 1 view .LVU5
.LVL1:
	.loc 1 65 2 view .LVU6
.L2:
	.loc 1 65 37 view .LVU7
	ldr	r3, .L32
	ldr	r3, [r3]
	cmp	r3, fp
	beq	.L30
.L15:
	.loc 1 66 3 view .LVU8
	.loc 1 66 24 is_stmt 0 view .LVU9
	mov	r3, #0
	.loc 1 68 3 view .LVU10
	add	r0, fp, #16
	.loc 1 66 24 view .LVU11
	strb	r3, [fp, #88]
	.loc 1 68 3 is_stmt 1 view .LVU12
	str	r0, [sp, #12]
	bl	LightEvent_Wait
.LVL2:
	.loc 1 69 3 view .LVU13
	ldr	r0, [sp, #12]
	bl	LightEvent_Clear
.LVL3:
	.loc 1 71 3 view .LVU14
	.loc 1 71 24 is_stmt 0 view .LVU15
	mov	r3, #1
	.loc 1 73 3 view .LVU16
	add	r4, fp, #24
	mov	r0, r4
	.loc 1 71 24 view .LVU17
	strb	r3, [fp, #88]
	.loc 1 73 3 is_stmt 1 view .LVU18
	bl	LightLock_Lock
.LVL4:
	.loc 1 74 3 view .LVU19
.LBB2:
	.loc 1 74 8 view .LVU20
	.loc 1 74 17 is_stmt 0 view .LVU21
	ldr	r5, [fp, #8]
.LVL5:
	.loc 1 74 58 is_stmt 1 view .LVU22
	.loc 1 74 62 is_stmt 0 view .LVU23
	ldr	r2, [sp, #20]
	mov	r3, #12
	add	r2, r5, r2
	str	r2, [sp]
	add	r0, sp, #16
	add	r2, sp, #24
	add	r1, sp, #20
	bl	vec_reserve_po2_
.LVL6:
	.loc 1 74 61 view .LVU24
	subs	r3, r0, #0
	beq	.L3
.LVL7:
.L6:
	.loc 1 74 61 view .LVU25
.LBE2:
	.loc 1 74 6 is_stmt 1 view .LVU26
	.loc 1 75 3 view .LVU27
	.loc 1 75 40 is_stmt 0 view .LVU28
	mov	r3, #0
	.loc 1 76 3 view .LVU29
	mov	r0, r4
	.loc 1 75 40 view .LVU30
	str	r3, [fp, #8]
	.loc 1 76 3 is_stmt 1 view .LVU31
	bl	LightLock_Unlock
.LVL8:
	.loc 1 78 3 view .LVU32
	.loc 1 78 30 view .LVU33
	.loc 1 78 22 is_stmt 0 view .LVU34
	ldr	r3, [sp, #20]
	.loc 1 78 30 view .LVU35
	cmp	r3, #0
	ble	.L2
.LBB3:
.LBB4:
	.loc 1 84 7 view .LVU36
	add	r2, fp, #4
	str	fp, [sp, #12]
	add	r6, sp, #28
	mov	fp, r2
	b	.L4
.LVL9:
.L8:
	.loc 1 84 7 view .LVU37
.LBE4:
.LBE3:
	.loc 1 78 30 is_stmt 1 view .LVU38
	cmp	r3, #0
	ble	.L31
.L4:
.LBB6:
	.loc 1 79 4 view .LVU39
	.loc 1 79 44 is_stmt 0 view .LVU40
	sub	r3, r3, #1
	.loc 1 79 37 view .LVU41
	ldr	ip, [sp, #16]
	.loc 1 79 43 view .LVU42
	add	lr, r3, r3, lsl #1
	add	r2, ip, lr, lsl #2
	.loc 1 79 15 view .LVU43
	ldm	r2, {r0, r1, r2}
	mov	r7, r2
	stm	r6, {r0, r1, r2}
.LVL10:
	.loc 1 81 7 view .LVU44
	ldr	r2, [r1, #8]
	.loc 1 79 15 view .LVU45
	mov	r5, r1
.LVL11:
	.loc 1 81 4 is_stmt 1 view .LVU46
	.loc 1 81 7 is_stmt 0 view .LVU47
	cmp	r7, r2
	.loc 1 79 15 view .LVU48
	str	r3, [sp, #20]
.LVL12:
	.loc 1 81 7 view .LVU49
	bne	.L8
	.loc 1 79 15 view .LVU50
	ldrb	r9, [ip, lr, lsl #2]	@ zero_extendqisi2
.LVL13:
.LBB5:
	.loc 1 82 23 is_stmt 1 view .LVU51
	.loc 1 82 56 is_stmt 0 view .LVU52
	ldr	r3, [sp, #12]
	add	r8, r9, r9, lsl #1
	add	r8, r3, r8, lsl #2
	.loc 1 82 23 view .LVU53
	ldr	r3, [r8, #32]
	cmp	r3, #0
	.loc 1 82 14 view .LVU54
	movgt	r4, #0
	.loc 1 82 23 view .LVU55
	ble	.L13
.LVL14:
.L9:
	.loc 1 83 6 is_stmt 1 view .LVU56
	.loc 1 84 7 view .LVU57
	.loc 1 83 46 is_stmt 0 view .LVU58
	ldr	r3, [r8, #28]
	add	r2, r4, r4, lsl #1
	add	r1, r3, r2, lsl #2
	.loc 1 83 9 view .LVU59
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	.loc 1 82 66 view .LVU60
	add	r4, r4, #1
.LVL15:
	.loc 1 83 9 view .LVU61
	cmp	r0, #0
	beq	.L12
	.loc 1 84 7 view .LVU62
	ldr	r1, [r1, #4]
	.loc 1 84 46 view .LVU63
	ldr	r10, [r3, r2, lsl #2]
	.loc 1 84 7 view .LVU64
	strb	r9, [sp, #28]
	str	r5, [sp, #32]
	str	r7, [sp, #36]
	str	r1, [sp]
	mov	r0, fp
	ldm	r6, {r1, r2, r3}
	blx	r10
.LVL16:
.L12:
	.loc 1 86 6 is_stmt 1 discriminator 2 view .LVU65
	mov	r1, #0
	ldr	r0, .L32+4
	bl	svcSleepThread
.LVL17:
	.loc 1 82 66 discriminator 2 view .LVU66
	.loc 1 82 23 discriminator 2 view .LVU67
	ldr	r3, [r8, #32]
	cmp	r3, r4
	bgt	.L9
.LVL18:
.L13:
	.loc 1 82 23 is_stmt 0 discriminator 2 view .LVU68
.LBE5:
	.loc 1 89 5 is_stmt 1 view .LVU69
	.loc 1 100 5 is_stmt 0 view .LVU70
	ldr	r3, [r5]
	.loc 1 89 5 view .LVU71
	cmp	r9, #2
	.loc 1 100 5 view .LVU72
	sub	r3, r3, #1
	.loc 1 89 5 view .LVU73
	beq	.L17
	cmp	r9, #3
	beq	.L18
	.loc 1 100 5 is_stmt 1 view .LVU74
	.loc 1 101 8 is_stmt 0 view .LVU75
	cmp	r9, #4
	.loc 1 100 5 view .LVU76
	str	r3, [r5]
	.loc 1 101 5 is_stmt 1 view .LVU77
	.loc 1 101 46 view .LVU78
	ldreq	r3, [r5, #4]
	subeq	r3, r3, #1
	streq	r3, [r5, #4]
.L14:
	.loc 1 103 5 view .LVU79
	mov	r0, #1000
	mov	r1, #0
	bl	svcSleepThread
.LVL19:
.LBE6:
	.loc 1 78 22 is_stmt 0 view .LVU80
	ldr	r3, [sp, #20]
.LVL20:
	.loc 1 78 30 is_stmt 1 view .LVU81
	cmp	r3, #0
	bgt	.L4
.L31:
	.loc 1 65 37 is_stmt 0 view .LVU82
	ldr	r3, .L32
	ldr	fp, [sp, #12]
	.loc 1 65 37 is_stmt 1 view .LVU83
	ldr	r3, [r3]
	cmp	r3, fp
	bne	.L15
.L30:
	.loc 1 65 37 is_stmt 0 discriminator 1 view .LVU84
	ldr	r3, [fp, #8]
	cmp	r3, #0
	bgt	.L15
	.loc 1 107 2 is_stmt 1 view .LVU85
	.loc 1 107 4 is_stmt 0 view .LVU86
	ldr	r0, [sp, #16]
	bl	free
.LVL21:
	.loc 1 108 1 view .LVU87
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL22:
.L18:
	.cfi_restore_state
.LBB7:
	.loc 1 89 5 view .LVU88
	mov	r2, #2
.L10:
	.loc 1 94 31 view .LVU89
	strb	r2, [r5, #12]
	.loc 1 100 5 is_stmt 1 view .LVU90
	str	r3, [r5]
	.loc 1 101 5 view .LVU91
	b	.L14
.L17:
	.loc 1 89 5 is_stmt 0 view .LVU92
	mov	r2, #1
	b	.L10
.LVL23:
.L3:
	.loc 1 89 5 view .LVU93
.LBE7:
.LBB8:
	.loc 1 74 259 is_stmt 1 view .LVU94
	cmp	r5, #0
	ble	.L6
	.loc 1 74 312 is_stmt 0 view .LVU95
	ldr	r2, [sp, #20]
	ldr	r6, [sp, #16]
	add	lr, r2, #1
	.loc 1 74 351 view .LVU96
	ldr	r7, [fp, #4]
	add	r2, r2, r2, lsl #1
	add	r5, lr, r5
.LVL24:
	.loc 1 74 351 view .LVU97
	add	r6, r6, r2, lsl #2
.LVL25:
.L7:
	.loc 1 74 275 is_stmt 1 discriminator 5 view .LVU98
	.loc 1 74 320 is_stmt 0 discriminator 5 view .LVU99
	str	lr, [sp, #20]
	.loc 1 74 259 discriminator 5 view .LVU100
	add	lr, lr, #1
	.loc 1 74 324 discriminator 5 view .LVU101
	add	ip, r6, r3
	add	r2, r7, r3
	.loc 1 74 259 discriminator 5 view .LVU102
	cmp	lr, r5
	.loc 1 74 324 discriminator 5 view .LVU103
	ldm	r2, {r0, r1, r2}
	add	r3, r3, #12
	.loc 1 74 269 is_stmt 1 discriminator 5 view .LVU104
	.loc 1 74 259 discriminator 5 view .LVU105
	.loc 1 74 324 is_stmt 0 discriminator 5 view .LVU106
	stm	ip, {r0, r1, r2}
	.loc 1 74 259 discriminator 5 view .LVU107
	bne	.L7
	b	.L6
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	7000
.LBE8:
	.cfi_endproc
.LFE122:
	.size	ChunkWorker_Mainloop, .-ChunkWorker_Mainloop
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Couldn't set AppCpuTimeLimit\000"
	.align	2
.LC1:
	.ascii	"Couldn't create worker thread\000"
	.section	.text.ChunkWorker_Init,"ax",%progbits
	.align	2
	.global	ChunkWorker_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	ChunkWorker_Init, %function
ChunkWorker_Init:
.LVL26:
.LFB117:
	.loc 1 7 49 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 2 view .LVU109
	.loc 1 7 49 is_stmt 0 view .LVU110
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB12:
.LBB13:
	.file 2 "/home/tobi/Dokumente/Craftus-Next/include/world/WorkQueue.h"
	.loc 2 36 2 view .LVU111
	mov	r3, #0
.LBE13:
.LBE12:
	.loc 1 7 49 view .LVU112
	mov	r5, r0
.LVL27:
.LBB16:
.LBI12:
	.loc 2 35 13 is_stmt 1 view .LVU113
.LBB14:
	.loc 2 36 2 view .LVU114
.LBE14:
.LBE16:
	.loc 1 7 49 is_stmt 0 view .LVU115
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
.LBB17:
.LBB15:
	.loc 2 36 2 view .LVU116
	str	r3, [r5, #4]	@ unaligned
	str	r3, [r5, #8]	@ unaligned
	str	r3, [r5, #12]	@ unaligned
	.loc 2 37 2 is_stmt 1 view .LVU117
	add	r0, r0, #24
.LVL28:
	.loc 2 37 2 is_stmt 0 view .LVU118
	bl	LightLock_Init
.LVL29:
	.loc 2 38 2 is_stmt 1 view .LVU119
	mov	r1, #1
	add	r0, r5, #16
	bl	LightEvent_Init
.LVL30:
	.loc 2 38 2 is_stmt 0 view .LVU120
.LBE15:
.LBE17:
	.loc 1 10 2 is_stmt 1 view .LVU121
	.loc 1 10 8 is_stmt 0 view .LVU122
	mov	r0, #30
	bl	APT_SetAppCpuTimeLimit
.LVL31:
	.loc 1 10 5 view .LVU123
	cmp	r0, #0
	blt	.L40
.L35:
.LBB18:
	.loc 1 14 50 discriminator 3 view .LVU124
	mov	r4, #0
	add	r3, r5, #28
	add	r2, r5, #88
.L36:
	.loc 1 14 50 is_stmt 1 discriminator 3 view .LVU125
	str	r4, [r3]	@ unaligned
	str	r4, [r3, #4]	@ unaligned
	str	r4, [r3, #8]	@ unaligned
	.loc 1 14 46 discriminator 3 view .LVU126
	.loc 1 14 20 discriminator 3 view .LVU127
	add	r3, r3, #12
	cmp	r3, r2
	bne	.L36
.LBE18:
	.loc 1 16 2 view .LVU128
	.loc 1 17 1 view .LVU129
	.loc 1 18 2 is_stmt 0 view .LVU130
	add	r0, sp, #11
	.loc 1 17 6 view .LVU131
	strb	r4, [sp, #11]
	.loc 1 18 2 is_stmt 1 view .LVU132
	bl	APT_CheckNew3DS
.LVL32:
	.loc 1 19 2 view .LVU133
	ldr	r1, .L42
	add	r0, sp, #12
	bl	svcGetThreadPriority
.LVL33:
	.loc 1 20 2 view .LVU134
	.loc 1 21 6 is_stmt 0 view .LVU135
	ldrb	r1, [sp, #11]	@ zero_extendqisi2
	.loc 1 21 80 view .LVU136
	ldr	r3, [sp, #12]
	.loc 1 21 6 view .LVU137
	add	r1, r1, #1
	stm	sp, {r1, r4}
	mov	r2, #16384
	mov	r1, r5
	ldr	r0, .L42+4
	sub	r3, r3, #1
	bl	threadCreate
.LVL34:
	.loc 1 22 5 view .LVU138
	cmp	r0, #0
	.loc 1 20 22 view .LVU139
	str	r0, [r5]
	.loc 1 22 2 is_stmt 1 view .LVU140
	.loc 1 22 5 is_stmt 0 view .LVU141
	beq	.L41
	.loc 1 26 2 is_stmt 1 view .LVU142
	.loc 1 26 23 is_stmt 0 view .LVU143
	mov	r3, #0
	strb	r3, [r5, #88]
	.loc 1 27 1 view .LVU144
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL35:
.L40:
	.cfi_restore_state
	.loc 1 11 3 is_stmt 1 view .LVU145
	ldr	r0, .L42+8
	bl	Crash
.LVL36:
	b	.L35
.L41:
	.loc 1 23 3 view .LVU146
	ldr	r0, .L42+12
	bl	Crash
.LVL37:
	.loc 1 26 2 view .LVU147
	.loc 1 26 23 is_stmt 0 view .LVU148
	mov	r3, #0
	strb	r3, [r5, #88]
	.loc 1 27 1 view .LVU149
	add	sp, sp, #20
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.LVL38:
.L43:
	.loc 1 27 1 view .LVU150
	.align	2
.L42:
	.word	-32768
	.word	ChunkWorker_Mainloop
	.word	.LC0
	.word	.LC1
	.cfi_endproc
.LFE117:
	.size	ChunkWorker_Init, .-ChunkWorker_Init
	.section	.text.ChunkWorker_Deinit,"ax",%progbits
	.align	2
	.global	ChunkWorker_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	ChunkWorker_Deinit, %function
ChunkWorker_Deinit:
.LVL39:
.LFB118:
	.loc 1 30 51 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 31 2 view .LVU152
	.loc 1 30 51 is_stmt 0 view .LVU153
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 30 51 view .LVU154
	mov	r7, r0
.LBB22:
.LBB23:
	.loc 2 40 52 view .LVU155
	mov	r6, r7
	.loc 2 40 81 view .LVU156
	mov	r5, #0
.LBE23:
.LBE22:
	.loc 1 31 15 view .LVU157
	ldr	r3, .L49
	.loc 1 32 2 view .LVU158
	add	r0, r0, #16
.LVL40:
	.loc 1 31 15 view .LVU159
	str	r7, [r3]
	.loc 1 32 2 is_stmt 1 view .LVU160
	bl	LightEvent_Signal
.LVL41:
	.loc 1 33 2 view .LVU161
	mvn	r2, #0
	mvn	r3, #0
	ldr	r0, [r7]
	bl	threadJoin
.LVL42:
	.loc 1 35 2 view .LVU162
	ldr	r0, [r7]
	bl	threadFree
.LVL43:
	.loc 1 36 2 view .LVU163
.LBB25:
.LBI22:
	.loc 2 40 13 view .LVU164
.LBB24:
	.loc 2 40 50 view .LVU165
	.loc 2 40 52 is_stmt 0 view .LVU166
	ldr	r0, [r6, #4]!
.LVL44:
	.loc 2 40 52 view .LVU167
	bl	free
.LVL45:
	add	r4, r7, #28
	.loc 2 40 81 view .LVU168
	str	r5, [r7, #4]	@ unaligned
	add	r8, r7, #88
	str	r5, [r6, #4]	@ unaligned
	str	r5, [r6, #8]	@ unaligned
.LVL46:
	.loc 2 40 81 view .LVU169
.LBE24:
.LBE25:
.LBB26:
	.loc 1 38 20 is_stmt 1 view .LVU170
.L45:
	.loc 1 39 3 discriminator 3 view .LVU171
	.loc 1 39 5 is_stmt 0 discriminator 3 view .LVU172
	ldr	r0, [r4]
	.loc 1 38 20 discriminator 3 view .LVU173
	add	r4, r4, #12
	.loc 1 39 5 discriminator 3 view .LVU174
	bl	free
.LVL47:
	.loc 1 38 20 discriminator 3 view .LVU175
	cmp	r4, r8
	.loc 1 39 45 discriminator 3 view .LVU176
	str	r5, [r4, #-12]	@ unaligned
	str	r5, [r4, #-8]	@ unaligned
	str	r5, [r4, #-4]	@ unaligned
	.loc 1 38 46 is_stmt 1 discriminator 3 view .LVU177
	.loc 1 38 20 discriminator 3 view .LVU178
	bne	.L45
	pop	{r4, r5, r6, r7, r8, pc}
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
.LBE26:
	.cfi_endproc
.LFE118:
	.size	ChunkWorker_Deinit, .-ChunkWorker_Deinit
	.section	.text.ChunkWorker_Finish,"ax",%progbits
	.align	2
	.global	ChunkWorker_Finish
	.syntax unified
	.arm
	.fpu vfp
	.type	ChunkWorker_Finish, %function
ChunkWorker_Finish:
.LVL48:
.LFB119:
	.loc 1 43 51 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 44 2 view .LVU180
	.loc 1 43 51 is_stmt 0 view .LVU181
	push	{r4, r6, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 43 51 view .LVU182
	mov	r4, r0
	.loc 1 44 2 view .LVU183
	add	r0, r0, #16
.LVL49:
	.loc 1 45 70 view .LVU184
	mov	r7, #0
	ldr	r6, .L56
	.loc 1 44 2 view .LVU185
	bl	LightEvent_Signal
.LVL50:
	.loc 1 45 2 is_stmt 1 view .LVU186
.L52:
	.loc 1 45 70 discriminator 1 view .LVU187
	.loc 1 45 30 discriminator 1 view .LVU188
	.loc 1 45 20 is_stmt 0 discriminator 1 view .LVU189
	ldrb	r3, [r4, #88]	@ zero_extendqisi2
	.loc 1 45 30 discriminator 1 view .LVU190
	cmp	r3, #0
	bne	.L53
	.loc 1 45 30 discriminator 3 view .LVU191
	ldr	r3, [r4, #8]
	cmp	r3, #0
	pople	{r4, r6, r7, pc}
.L53:
	.loc 1 45 70 discriminator 4 view .LVU192
	mov	r0, r6
	mov	r1, r7
	bl	svcSleepThread
.LVL51:
	b	.L52
.L57:
	.align	2
.L56:
	.word	1000000
	.cfi_endproc
.LFE119:
	.size	ChunkWorker_Finish, .-ChunkWorker_Finish
	.section	.text.ChunkWorker_AddHandler,"ax",%progbits
	.align	2
	.global	ChunkWorker_AddHandler
	.syntax unified
	.arm
	.fpu vfp
	.type	ChunkWorker_AddHandler, %function
ChunkWorker_AddHandler:
.LVL52:
.LFB120:
	.loc 1 48 95 is_stmt 1 view -0
	.cfi_startproc
	@ args = 12, pretend = 8, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 49 2 view .LVU194
	.loc 1 48 95 is_stmt 0 view .LVU195
	sub	sp, sp, #8
	.cfi_def_cfa_offset 8
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 14, -12
	.loc 1 48 95 view .LVU196
	mov	r5, r0
	add	r1, r1, r1, lsl #1
.LVL53:
	.loc 1 48 95 view .LVU197
	lsl	r4, r1, #2
	add	r6, sp, #16
	stm	r6, {r2, r3}
	.loc 1 49 4 view .LVU198
	add	r1, r4, #32
	add	r2, r4, #36
	.loc 1 49 24 view .LVU199
	add	r0, r4, #28
.LVL54:
	.loc 1 49 4 view .LVU200
	mov	r3, #12
	add	r2, r5, r2
	add	r1, r5, r1
	add	r0, r5, r0
	bl	vec_expand_
.LVL55:
	.loc 1 49 195 view .LVU201
	cmp	r0, #0
	bne	.L58
	.loc 1 49 227 discriminator 1 view .LVU202
	add	r5, r5, r4
.LVL56:
	.loc 1 49 263 discriminator 1 view .LVU203
	ldr	r2, [r5, #32]
	.loc 1 49 227 discriminator 1 view .LVU204
	ldr	r3, [r5, #28]
	.loc 1 49 271 discriminator 1 view .LVU205
	add	r1, r2, #1
	.loc 1 49 275 discriminator 1 view .LVU206
	add	r2, r2, r2, lsl #1
	add	r3, r3, r2, lsl #2
	.loc 1 49 271 discriminator 1 view .LVU207
	str	r1, [r5, #32]
	.loc 1 49 275 discriminator 1 view .LVU208
	ldm	r6, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
.L58:
	.loc 1 50 1 view .LVU209
	pop	{r4, r5, r6, lr}
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	add	sp, sp, #8
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE120:
	.size	ChunkWorker_AddHandler, .-ChunkWorker_AddHandler
	.section	.text.ChunkWorker_SetHandlerActive,"ax",%progbits
	.align	2
	.global	ChunkWorker_SetHandlerActive
	.syntax unified
	.arm
	.fpu vfp
	.type	ChunkWorker_SetHandlerActive, %function
ChunkWorker_SetHandlerActive:
.LVL57:
.LFB121:
	.loc 1 52 106 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 53 2 view .LVU211
.LBB27:
	.loc 1 53 7 view .LVU212
	.loc 1 53 23 view .LVU213
	.loc 1 53 51 is_stmt 0 view .LVU214
	add	r1, r1, r1, lsl #1
.LVL58:
	.loc 1 53 51 view .LVU215
	add	r0, r0, r1, lsl #2
.LVL59:
	.loc 1 53 51 view .LVU216
.LBE27:
	.loc 1 52 106 view .LVU217
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
.LBB28:
	.loc 1 53 51 view .LVU218
	ldr	lr, [r0, #32]
	.loc 1 53 23 view .LVU219
	cmp	lr, #0
	ldreq	pc, [sp], #4
	.loc 1 53 14 view .LVU220
	mov	ip, #0
	ldr	r1, [r0, #28]
	b	.L64
.LVL60:
.L63:
	.loc 1 53 23 discriminator 2 view .LVU221
	cmp	ip, lr
	add	r1, r1, #12
	ldreq	pc, [sp], #4
.LVL61:
.L64:
	.loc 1 54 3 is_stmt 1 view .LVU222
	.loc 1 53 61 view .LVU223
	.loc 1 54 6 is_stmt 0 view .LVU224
	ldr	r0, [r1, #4]
	.loc 1 53 61 view .LVU225
	add	ip, ip, #1
.LVL62:
	.loc 1 53 23 is_stmt 1 view .LVU226
	.loc 1 54 6 is_stmt 0 view .LVU227
	cmp	r0, r2
	bne	.L63
	.loc 1 55 4 is_stmt 1 view .LVU228
	.loc 1 55 46 is_stmt 0 view .LVU229
	strb	r3, [r1, #8]
	.loc 1 56 4 is_stmt 1 view .LVU230
	ldr	pc, [sp], #4
.LBE28:
	.cfi_endproc
.LFE121:
	.size	ChunkWorker_SetHandlerActive, .-ChunkWorker_SetHandlerActive
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	workerToStop, %object
	.size	workerToStop, 4
workerToStop:
	.space	4
	.text
.Letext0:
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 6 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 7 "/opt/devkitpro/libctru/include/3ds/svc.h"
	.file 8 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/thread.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 13 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 14 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 16 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 17 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 18 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.file 19 "/home/tobi/Dokumente/Craftus-Next/include/world/ChunkWorker.h"
	.file 20 "/home/tobi/Dokumente/Craftus-Next/dependencies/vec/vec.h"
	.file 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 22 "/opt/devkitpro/libctru/include/3ds/services/apt.h"
	.file 23 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 24 "/home/tobi/Dokumente/Craftus-Next/include/misc/Crash.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xee4
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF188
	.byte	0x1d
	.4byte	.LASF189
	.4byte	.LASF190
	.4byte	.LLRL23
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x66
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x67
	.byte	0x17
	.4byte	0x8c
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x9f
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x38
	.byte	0x13
	.4byte	0x80
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0xad
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.4byte	.LASF22
	.uleb128 0x16
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xd8
	.uleb128 0x16
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x16
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x16
	.ascii	"s64\000"
	.byte	0x1d
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0x10f
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0x125
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2b
	.byte	0x10
	.4byte	0x15f
	.uleb128 0x6
	.4byte	0x164
	.uleb128 0x1c
	.4byte	0x16f
	.uleb128 0x2
	.4byte	0x16f
	.byte	0
	.uleb128 0x27
	.byte	0x4
	.uleb128 0x7
	.byte	0x8
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.4byte	.LASF27
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0x7
	.byte	0x69
	.byte	0xe
	.4byte	0x19f
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x6d
	.byte	0x3
	.4byte	0x17f
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF32
	.uleb128 0x28
	.4byte	0x1ab
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0x1d
	.4byte	0x1b7
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0xcc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x9
	.byte	0xa
	.byte	0x11
	.4byte	0x1c3
	.uleb128 0xc
	.byte	0x8
	.byte	0x9
	.byte	0x13
	.byte	0x9
	.4byte	0x1ff
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x9
	.byte	0x15
	.byte	0x6
	.4byte	0x125
	.byte	0
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x9
	.byte	0x16
	.byte	0xc
	.4byte	0x1cf
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x9
	.byte	0x17
	.byte	0x3
	.4byte	0x1db
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xa
	.byte	0x16
	.byte	0x1c
	.4byte	0x217
	.uleb128 0x6
	.4byte	0x21c
	.uleb128 0x29
	.4byte	.LASF191
	.uleb128 0x6
	.4byte	0x1ab
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0xb
	.byte	0x28
	.byte	0x1
	.4byte	0x24c
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0xb
	.byte	0x31
	.byte	0x1
	.4byte	0x272
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0xc
	.byte	0x21
	.byte	0xe
	.4byte	0x298
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x1b2
	.uleb128 0x2a
	.byte	0x7
	.byte	0x1
	.4byte	0x39
	.byte	0xd
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x2b9
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.4byte	0x2d9
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.4byte	0x53
	.byte	0xf
	.byte	0x9
	.byte	0x1
	.4byte	0x2f5
	.uleb128 0x1e
	.4byte	.LASF57
	.2byte	0x100
	.uleb128 0x1e
	.4byte	.LASF58
	.2byte	0x200
	.byte	0
	.uleb128 0x6
	.4byte	0x221
	.uleb128 0x6
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x10
	.byte	0x8
	.byte	0x11
	.4byte	0xb4
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0x10
	.byte	0xa
	.byte	0x6
	.4byte	0x409
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF90
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF91
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0x27
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x11
	.byte	0x8
	.byte	0x9
	.4byte	0x42d
	.uleb128 0x4
	.4byte	.LASF100
	.byte	0x11
	.byte	0x9
	.byte	0x9
	.4byte	0xfc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF101
	.byte	0x11
	.byte	0xa
	.byte	0x8
	.4byte	0x16f
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x11
	.byte	0xb
	.byte	0x3
	.4byte	0x409
	.uleb128 0x2b
	.2byte	0x2030
	.byte	0x12
	.byte	0x10
	.byte	0x9
	.4byte	0x4eb
	.uleb128 0x19
	.ascii	"y\000"
	.byte	0x11
	.byte	0x6
	.4byte	0xa6
	.byte	0
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x12
	.byte	0x12
	.byte	0x8
	.4byte	0x4eb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x13
	.byte	0xa
	.4byte	0x507
	.2byte	0x1004
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0x15
	.byte	0xb
	.4byte	0xd8
	.2byte	0x2004
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x17
	.byte	0xb
	.4byte	0xc0
	.2byte	0x2008
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x19
	.byte	0x6
	.4byte	0x1b7
	.2byte	0x200a
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x1a
	.byte	0xb
	.4byte	0xd8
	.2byte	0x200c
	.uleb128 0x2c
	.ascii	"vbo\000"
	.byte	0x12
	.byte	0x1c
	.byte	0xc
	.4byte	0x42d
	.2byte	0x2010
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x1c
	.byte	0x11
	.4byte	0x42d
	.2byte	0x2018
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x1d
	.byte	0x9
	.4byte	0xfc
	.2byte	0x2020
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0x1d
	.byte	0x13
	.4byte	0xfc
	.2byte	0x2024
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x1e
	.byte	0xb
	.4byte	0xd8
	.2byte	0x2028
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x1f
	.byte	0x6
	.4byte	0x1b7
	.2byte	0x202c
	.byte	0
	.uleb128 0x12
	.4byte	0x2ff
	.4byte	0x507
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0x523
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x12
	.byte	0x20
	.byte	0x3
	.4byte	0x439
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0x12
	.byte	0x22
	.byte	0xe
	.4byte	0x54f
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x12
	.byte	0x26
	.byte	0x3
	.4byte	0x52f
	.uleb128 0x2d
	.4byte	0x102ac
	.byte	0x12
	.byte	0x28
	.byte	0x9
	.4byte	0x617
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x12
	.byte	0x2a
	.byte	0xb
	.4byte	0xd8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x12
	.byte	0x2b
	.byte	0xb
	.4byte	0xd8
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x12
	.byte	0x2d
	.byte	0xb
	.4byte	0xd8
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0x12
	.byte	0x2f
	.byte	0x13
	.4byte	0x54f
	.byte	0xc
	.uleb128 0x19
	.ascii	"x\000"
	.byte	0x31
	.byte	0x6
	.4byte	0xa6
	.byte	0x10
	.uleb128 0x19
	.ascii	"z\000"
	.byte	0x31
	.byte	0x9
	.4byte	0xa6
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x12
	.byte	0x32
	.byte	0xa
	.4byte	0x617
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x34
	.byte	0xa
	.4byte	0x627
	.4byte	0x10198
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x35
	.byte	0xb
	.4byte	0xd8
	.4byte	0x10298
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x37
	.byte	0x9
	.4byte	0xfc
	.4byte	0x1029c
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x39
	.byte	0xb
	.4byte	0xd8
	.4byte	0x102a0
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x3a
	.byte	0x6
	.4byte	0x1b7
	.4byte	0x102a4
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x3c
	.byte	0x6
	.4byte	0xa6
	.4byte	0x102a8
	.byte	0
	.uleb128 0x12
	.4byte	0x523
	.4byte	0x627
	.uleb128 0xa
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	0xb4
	.4byte	0x63d
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.uleb128 0xa
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x12
	.byte	0x3d
	.byte	0x3
	.4byte	0x55b
	.uleb128 0xb
	.byte	0x1
	.4byte	0x39
	.byte	0x2
	.byte	0xd
	.byte	0xe
	.4byte	0x67b
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x2
	.byte	0x14
	.byte	0x3
	.4byte	0x649
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x16
	.byte	0x9
	.4byte	0x6b8
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0x2
	.byte	0x17
	.byte	0x11
	.4byte	0x67b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0x2
	.byte	0x18
	.byte	0x9
	.4byte	0x6b8
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0x2
	.byte	0x19
	.byte	0xb
	.4byte	0xd8
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x63d
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.4byte	0x687
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x1d
	.byte	0x2
	.4byte	0x6fa
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x2
	.byte	0x1d
	.byte	0x17
	.4byte	0x6fa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x2
	.byte	0x1d
	.byte	0x21
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x2
	.byte	0x1d
	.byte	0x29
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x6bd
	.uleb128 0xc
	.byte	0x18
	.byte	0x2
	.byte	0x1c
	.byte	0x9
	.4byte	0x730
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x2
	.byte	0x1d
	.byte	0x35
	.4byte	0x6c9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF143
	.byte	0x2
	.byte	0x1f
	.byte	0xd
	.4byte	0x1ff
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF144
	.byte	0x2
	.byte	0x20
	.byte	0xc
	.4byte	0x1cf
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x2
	.byte	0x21
	.byte	0x3
	.4byte	0x6ff
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x13
	.byte	0x9
	.byte	0x10
	.4byte	0x748
	.uleb128 0x6
	.4byte	0x74d
	.uleb128 0x1c
	.4byte	0x762
	.uleb128 0x2
	.4byte	0x762
	.uleb128 0x2
	.4byte	0x6bd
	.uleb128 0x2
	.4byte	0x16f
	.byte	0
	.uleb128 0x6
	.4byte	0x730
	.uleb128 0xc
	.byte	0xc
	.byte	0x13
	.byte	0xa
	.byte	0x9
	.4byte	0x798
	.uleb128 0x4
	.4byte	.LASF147
	.byte	0x13
	.byte	0xb
	.byte	0xd
	.4byte	0x73c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x13
	.byte	0xc
	.byte	0x8
	.4byte	0x16f
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x13
	.byte	0xd
	.byte	0x6
	.4byte	0x1b7
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x13
	.byte	0xe
	.byte	0x3
	.4byte	0x767
	.uleb128 0xc
	.byte	0xc
	.byte	0x13
	.byte	0x15
	.byte	0x2
	.4byte	0x7d5
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x13
	.byte	0x15
	.byte	0x1a
	.4byte	0x7d5
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x13
	.byte	0x15
	.byte	0x24
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x13
	.byte	0x15
	.byte	0x2c
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	0x798
	.uleb128 0xc
	.byte	0x5c
	.byte	0x13
	.byte	0x10
	.byte	0x9
	.4byte	0x818
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0x13
	.byte	0x11
	.byte	0x9
	.4byte	0x20b
	.byte	0
	.uleb128 0x4
	.4byte	.LASF142
	.byte	0x13
	.byte	0x13
	.byte	0xc
	.4byte	0x730
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF152
	.byte	0x13
	.byte	0x15
	.byte	0x38
	.4byte	0x818
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x13
	.byte	0x17
	.byte	0xf
	.4byte	0x1be
	.byte	0x58
	.byte	0
	.uleb128 0x12
	.4byte	0x7a4
	.4byte	0x828
	.uleb128 0xa
	.4byte	0xad
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x13
	.byte	0x18
	.byte	0x3
	.4byte	0x7da
	.uleb128 0x1d
	.4byte	0x828
	.uleb128 0x17
	.4byte	.LASF174
	.byte	0x1d
	.byte	0x1e
	.4byte	0x84a
	.uleb128 0x5
	.byte	0x3
	.4byte	workerToStop
	.uleb128 0x6
	.4byte	0x834
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x9
	.byte	0xc4
	.4byte	0x860
	.uleb128 0x2
	.4byte	0x860
	.byte	0
	.uleb128 0x6
	.4byte	0x1cf
	.uleb128 0x13
	.4byte	.LASF159
	.byte	0x14
	.byte	0xa1
	.byte	0x5
	.4byte	0xa6
	.4byte	0x88f
	.uleb128 0x2
	.4byte	0x2f5
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0xa6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0x9
	.byte	0xb7
	.4byte	0x8a0
	.uleb128 0x2
	.4byte	0x860
	.byte	0
	.uleb128 0x14
	.4byte	.LASF157
	.byte	0x9
	.2byte	0x119
	.4byte	0x8b2
	.uleb128 0x2
	.4byte	0x8b2
	.byte	0
	.uleb128 0x6
	.4byte	0x1ff
	.uleb128 0x14
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x132
	.4byte	0x8c9
	.uleb128 0x2
	.4byte	0x8b2
	.byte	0
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x14
	.byte	0x9f
	.byte	0x5
	.4byte	0xa6
	.4byte	0x8ee
	.uleb128 0x2
	.4byte	0x2f5
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0x2fa
	.uleb128 0x2
	.4byte	0xa6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF161
	.byte	0x7
	.2byte	0x35b
	.4byte	0x900
	.uleb128 0x2
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x15
	.byte	0x5e
	.4byte	0x911
	.uleb128 0x2
	.4byte	0x16f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xa
	.byte	0x48
	.4byte	0x922
	.uleb128 0x2
	.4byte	0x20b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0xa
	.byte	0x4f
	.byte	0x8
	.4byte	0x147
	.4byte	0x93d
	.uleb128 0x2
	.4byte	0x20b
	.uleb128 0x2
	.4byte	0x11a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x9
	.2byte	0x125
	.4byte	0x94f
	.uleb128 0x2
	.4byte	0x8b2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF166
	.byte	0x9
	.2byte	0x113
	.4byte	0x966
	.uleb128 0x2
	.4byte	0x8b2
	.uleb128 0x2
	.4byte	0x19f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x9
	.byte	0xb1
	.4byte	0x977
	.uleb128 0x2
	.4byte	0x860
	.byte	0
	.uleb128 0x13
	.4byte	.LASF168
	.byte	0xa
	.byte	0x33
	.byte	0x8
	.4byte	0x20b
	.4byte	0x9a6
	.uleb128 0x2
	.4byte	0x153
	.uleb128 0x2
	.4byte	0x16f
	.uleb128 0x2
	.4byte	0xfc
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0x1b7
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF169
	.byte	0x7
	.2byte	0x35e
	.4byte	0x147
	.4byte	0x9c1
	.uleb128 0x2
	.4byte	0x9c1
	.uleb128 0x2
	.4byte	0x13b
	.byte	0
	.uleb128 0x6
	.4byte	0x125
	.uleb128 0x1a
	.4byte	.LASF170
	.byte	0x16
	.2byte	0x1f9
	.4byte	0x147
	.4byte	0x9dc
	.uleb128 0x2
	.4byte	0x9dc
	.byte	0
	.uleb128 0x6
	.4byte	0x1b7
	.uleb128 0x13
	.4byte	.LASF171
	.byte	0x17
	.byte	0x21
	.byte	0x8
	.4byte	0x16f
	.4byte	0xa01
	.uleb128 0x2
	.4byte	0x16f
	.uleb128 0x2
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0xfc
	.byte	0
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0x18
	.byte	0x3
	.4byte	0xa13
	.uleb128 0x2
	.4byte	0x298
	.uleb128 0x2e
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF173
	.byte	0x16
	.2byte	0x1ed
	.4byte	0x147
	.4byte	0xa29
	.uleb128 0x2
	.4byte	0x10f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x3d
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbae
	.uleb128 0xd
	.4byte	.LASF180
	.byte	0x3d
	.byte	0x21
	.4byte	0x16f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xc
	.byte	0xc
	.byte	0x1
	.byte	0x3e
	.byte	0x2
	.4byte	0xa81
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x1
	.byte	0x3e
	.byte	0x17
	.4byte	0x6fa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF140
	.byte	0x1
	.byte	0x3e
	.byte	0x21
	.4byte	0xa6
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF141
	.byte	0x1
	.byte	0x3e
	.byte	0x29
	.4byte	0xa6
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.4byte	.LASF175
	.byte	0x3e
	.byte	0x35
	.4byte	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.4byte	.LASF176
	.byte	0x40
	.4byte	0xbae
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1b
	.4byte	.LLRL2
	.4byte	0xaf4
	.uleb128 0x15
	.ascii	"i__\000"
	.byte	0x4a
	.byte	0xc
	.4byte	0xa6
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x15
	.ascii	"n__\000"
	.byte	0x4a
	.byte	0x11
	.4byte	0xa6
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0x865
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LLRL5
	.4byte	0xb50
	.uleb128 0x1f
	.4byte	.LASF177
	.byte	0x4f
	.4byte	0x6bd
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1b
	.4byte	.LLRL7
	.4byte	0xb46
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x52
	.byte	0xe
	.4byte	0xa6
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2f
	.4byte	.LVL16
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0xb3c
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL17
	.4byte	0x8ee
	.byte	0
	.uleb128 0xe
	.4byte	.LVL19
	.4byte	0x8ee
	.byte	0
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	0x8b7
	.4byte	0xb66
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x8a0
	.4byte	0xb7c
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x88f
	.4byte	0xb90
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0x84f
	.4byte	0xba4
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.4byte	.LVL21
	.4byte	0x900
	.byte	0
	.uleb128 0x6
	.4byte	0x828
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x34
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc1d
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x34
	.byte	0x30
	.4byte	0xbae
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x34
	.byte	0x4c
	.4byte	0x67b
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x20
	.4byte	.LASF148
	.byte	0x58
	.4byte	0x16f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0x62
	.4byte	0x1b7
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.4byte	.LLRL21
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x35
	.byte	0xe
	.4byte	0xfc
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x30
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc97
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x30
	.byte	0x2a
	.4byte	0xbae
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xd
	.4byte	.LASF136
	.byte	0x30
	.byte	0x46
	.4byte	0x67b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x31
	.ascii	"obj\000"
	.byte	0x1
	.byte	0x30
	.byte	0x5a
	.4byte	0x798
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x18
	.4byte	.LVL55
	.4byte	0x8c9
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF182
	.byte	0x2b
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcdc
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x2b
	.byte	0x26
	.4byte	0xbae
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x8
	.4byte	.LVL50
	.4byte	0x93d
	.4byte	0xcd2
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.4byte	.LVL51
	.4byte	0x8ee
	.byte	0
	.uleb128 0x11
	.4byte	.LASF183
	.byte	0x1e
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7c
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x1e
	.byte	0x26
	.4byte	0xbae
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x21
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.4byte	0xd2b
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x26
	.byte	0xb
	.4byte	0xa6
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xe
	.4byte	.LVL47
	.4byte	0x900
	.byte	0
	.uleb128 0x22
	.4byte	0xeb9
	.4byte	.LBI22
	.byte	.LVU164
	.4byte	.LLRL13
	.byte	0x24
	.4byte	0xd55
	.uleb128 0x23
	.4byte	0xec6
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xe
	.4byte	.LVL45
	.4byte	0x900
	.byte	0
	.uleb128 0x8
	.4byte	.LVL41
	.4byte	0x93d
	.4byte	0xd69
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.4byte	.LVL42
	.4byte	0x922
	.uleb128 0xe
	.4byte	.LVL43
	.4byte	0x911
	.byte	0
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x7
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeb9
	.uleb128 0xd
	.4byte	.LASF176
	.byte	0x7
	.byte	0x24
	.4byte	0xbae
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	.LASF185
	.byte	0x10
	.byte	0x6
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.4byte	.LASF186
	.byte	0x11
	.byte	0x6
	.4byte	0x1b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x21
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0xdd7
	.uleb128 0x32
	.ascii	"i\000"
	.byte	0x1
	.byte	0xe
	.byte	0xb
	.4byte	0xa6
	.byte	0
	.uleb128 0x22
	.4byte	0xed2
	.4byte	.LBI12
	.byte	.LVU113
	.4byte	.LLRL10
	.byte	0x8
	.4byte	0xe21
	.uleb128 0x23
	.4byte	0xedb
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x8
	.4byte	.LVL29
	.4byte	0x966
	.4byte	0xe0b
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 24
	.byte	0
	.uleb128 0x18
	.4byte	.LVL30
	.4byte	0x94f
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 16
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL31
	.4byte	0xa13
	.4byte	0xe34
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x8
	.4byte	.LVL32
	.4byte	0x9c6
	.4byte	0xe48
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.byte	0
	.uleb128 0x8
	.4byte	.LVL33
	.4byte	0x9a6
	.4byte	0xe63
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0x8000
	.byte	0
	.uleb128 0x8
	.4byte	.LVL34
	.4byte	0x977
	.4byte	0xe8e
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	ChunkWorker_Mainloop
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x4000
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL36
	.4byte	0xa01
	.4byte	0xea5
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL37
	.4byte	0xa01
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF187
	.byte	0x2
	.byte	0x28
	.byte	0xd
	.byte	0x3
	.4byte	0xed2
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x28
	.byte	0x29
	.4byte	0x762
	.byte	0
	.uleb128 0x34
	.4byte	.LASF192
	.byte	0x2
	.byte	0x23
	.byte	0xd
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x23
	.byte	0x27
	.4byte	0x762
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 18
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
	.uleb128 0x1a
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
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 52
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE122-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL1-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LFE122-.LVL1
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU93
	.uleb128 .LVU98
.LLST3:
	.byte	0x8
	.4byte	.LVL23
	.uleb128 .LVL25-.LVL23
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU93
	.uleb128 .LVU97
.LLST4:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL7-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.LVL5
	.uleb128 .LVL24-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS6:
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU81
	.uleb128 .LVU88
	.uleb128 .LVU93
.LLST6:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0xb
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0xb
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x11
	.byte	0x7e
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL14-.LVL10
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL14-.LVL10
	.uleb128 .LVL20-.LVL10
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL22-.LVL10
	.uleb128 .LVL23-.LVL10
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS8:
	.uleb128 .LVU51
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
.LLST8:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL13
	.uleb128 .LVL18-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL59-.LVL57
	.uleb128 .LFE121-.LVL57
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL58-.LVL57
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL58-.LVL57
	.uleb128 .LFE121-.LVL57
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU213
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL60-.LVL57
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL60-.LVL57
	.uleb128 .LFE121-.LVL57
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL52
	.byte	0x4
	.uleb128 .LVL52-.LVL52
	.uleb128 .LVL54-.LVL52
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL54-.LVL52
	.uleb128 .LVL56-.LVL52
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL56-.LVL52
	.uleb128 .LFE120-.LVL52
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL52
	.byte	0x4
	.uleb128 .LVL52-.LVL52
	.uleb128 .LVL53-.LVL52
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL53-.LVL52
	.uleb128 .LFE120-.LVL52
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU184
	.uleb128 .LVU184
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LFE119-.LVL48
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL40-.LVL39
	.uleb128 .LVL44-.LVL39
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL44-.LVL39
	.uleb128 .LFE118-.LVL39
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS15:
	.uleb128 .LVU169
	.uleb128 .LVU171
.LLST15:
	.byte	0x8
	.4byte	.LVL46
	.uleb128 .LVL46-.LVL46
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU164
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU169
.LLST14:
	.byte	0x6
	.4byte	.LVL43
	.byte	0x4
	.uleb128 .LVL43-.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x3
	.byte	0x76
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL43
	.uleb128 .LVL46-.LVL43
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL26
	.byte	0x4
	.uleb128 .LVL26-.LVL26
	.uleb128 .LVL28-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-.LVL26
	.uleb128 .LVL38-.LVL26
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL38-.LVL26
	.uleb128 .LFE117-.LVL26
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU113
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU120
.LLST11:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL27
	.uleb128 .LVL30-.LVL27
	.uleb128 0x3
	.byte	0x75
	.sleb128 4
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
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
.LLRL2:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB8-.LBB2
	.uleb128 .LBE8-.LBB2
	.byte	0
.LLRL5:
	.byte	0x5
	.4byte	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB6-.LBB3
	.uleb128 .LBE6-.LBB3
	.byte	0x4
	.uleb128 .LBB7-.LBB3
	.uleb128 .LBE7-.LBB3
	.byte	0
.LLRL7:
	.byte	0x5
	.4byte	.LBB4
	.byte	0x4
	.uleb128 .LBB4-.LBB4
	.uleb128 .LBE4-.LBB4
	.byte	0x4
	.uleb128 .LBB5-.LBB4
	.uleb128 .LBE5-.LBB4
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB16-.LBB12
	.uleb128 .LBE16-.LBB12
	.byte	0x4
	.uleb128 .LBB17-.LBB12
	.uleb128 .LBE17-.LBB12
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB22
	.byte	0x4
	.uleb128 .LBB22-.LBB22
	.uleb128 .LBE22-.LBB22
	.byte	0x4
	.uleb128 .LBB25-.LBB22
	.uleb128 .LBE25-.LBB22
	.byte	0
.LLRL21:
	.byte	0x5
	.4byte	.LBB27
	.byte	0x4
	.uleb128 .LBB27-.LBB27
	.uleb128 .LBE27-.LBB27
	.byte	0x4
	.uleb128 .LBB28-.LBB27
	.uleb128 .LBE28-.LBB27
	.byte	0
.LLRL23:
	.byte	0x7
	.4byte	.LFB122
	.uleb128 .LFE122-.LFB122
	.byte	0x7
	.4byte	.LFB117
	.uleb128 .LFE117-.LFB117
	.byte	0x7
	.4byte	.LFB118
	.uleb128 .LFE118-.LFB118
	.byte	0x7
	.4byte	.LFB119
	.uleb128 .LFE119-.LFB119
	.byte	0x7
	.4byte	.LFB120
	.uleb128 .LFE120-.LFB120
	.byte	0x7
	.4byte	.LFB121
	.uleb128 .LFE121-.LFB121
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF115:
	.ascii	"ChunkGen_Empty\000"
.LASF191:
	.ascii	"Thread_tag\000"
.LASF141:
	.ascii	"capacity\000"
.LASF87:
	.ascii	"Block_Lava\000"
.LASF23:
	.ascii	"Handle\000"
.LASF188:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF21:
	.ascii	"size_t\000"
.LASF88:
	.ascii	"Block_Iron_Ore\000"
.LASF138:
	.ascii	"WorkerItem\000"
.LASF20:
	.ascii	"uint64_t\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF48:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF105:
	.ascii	"revision\000"
.LASF24:
	.ascii	"Result\000"
.LASF136:
	.ascii	"type\000"
.LASF176:
	.ascii	"chunkworker\000"
.LASF123:
	.ascii	"clusters\000"
.LASF169:
	.ascii	"svcGetThreadPriority\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"__int64_t\000"
.LASF162:
	.ascii	"free\000"
.LASF135:
	.ascii	"WorkerItemType\000"
.LASF66:
	.ascii	"Block_Log\000"
.LASF107:
	.ascii	"empty\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF74:
	.ascii	"Block_Bedrock\000"
.LASF110:
	.ascii	"vertices\000"
.LASF89:
	.ascii	"Block_Coal_Ore\000"
.LASF82:
	.ascii	"Block_Sandstone\000"
.LASF60:
	.ascii	"Block_Air\000"
.LASF36:
	.ascii	"state\000"
.LASF65:
	.ascii	"Block_Sand\000"
.LASF7:
	.ascii	"long int\000"
.LASF158:
	.ascii	"LightEvent_Wait\000"
.LASF122:
	.ascii	"genProgress\000"
.LASF182:
	.ascii	"ChunkWorker_Finish\000"
.LASF59:
	.ascii	"Block\000"
.LASF187:
	.ascii	"WorkQueue_Deinit\000"
.LASF80:
	.ascii	"Block_Obsidian\000"
.LASF147:
	.ascii	"func\000"
.LASF86:
	.ascii	"Block_Water\000"
.LASF84:
	.ascii	"Block_Crafting_Table\000"
.LASF2:
	.ascii	"short int\000"
.LASF31:
	.ascii	"ResetType\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF26:
	.ascii	"double\000"
.LASF85:
	.ascii	"Block_Grass_Path\000"
.LASF28:
	.ascii	"RESET_ONESHOT\000"
.LASF148:
	.ascii	"this\000"
.LASF144:
	.ascii	"listInUse\000"
.LASF63:
	.ascii	"Block_Grass\000"
.LASF75:
	.ascii	"Block_Coarse\000"
.LASF81:
	.ascii	"Block_Netherrack\000"
.LASF117:
	.ascii	"ChunkGen_Finished\000"
.LASF83:
	.ascii	"Block_Smooth_Stone\000"
.LASF111:
	.ascii	"transparentVertices\000"
.LASF150:
	.ascii	"WorkerFuncObj\000"
.LASF155:
	.ascii	"LightLock_Unlock\000"
.LASF101:
	.ascii	"memory\000"
.LASF25:
	.ascii	"ThreadFunc\000"
.LASF112:
	.ascii	"vboRevision\000"
.LASF174:
	.ascii	"workerToStop\000"
.LASF175:
	.ascii	"privateQueue\000"
.LASF119:
	.ascii	"tasksRunning\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF70:
	.ascii	"Block_Stonebrick\000"
.LASF116:
	.ascii	"ChunkGen_Terrain\000"
.LASF64:
	.ascii	"Block_Cobblestone\000"
.LASF173:
	.ascii	"APT_SetAppCpuTimeLimit\000"
.LASF178:
	.ascii	"ChunkWorker_Mainloop\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF146:
	.ascii	"WorkerFunc\000"
.LASF53:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF73:
	.ascii	"Block_Wool\000"
.LASF142:
	.ascii	"queue\000"
.LASF114:
	.ascii	"Cluster\000"
.LASF61:
	.ascii	"Block_Stone\000"
.LASF139:
	.ascii	"data\000"
.LASF100:
	.ascii	"size\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF42:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF134:
	.ascii	"WorkerItemTypes_Count\000"
.LASF96:
	.ascii	"Block_Iron_Block\000"
.LASF93:
	.ascii	"Block_Gold_Block\000"
.LASF156:
	.ascii	"LightLock_Lock\000"
.LASF34:
	.ascii	"_LOCK_T\000"
.LASF104:
	.ascii	"metadataLight\000"
.LASF157:
	.ascii	"LightEvent_Clear\000"
.LASF192:
	.ascii	"WorkQueue_Init\000"
.LASF177:
	.ascii	"item\000"
.LASF68:
	.ascii	"Block_Leaves\000"
.LASF160:
	.ascii	"vec_expand_\000"
.LASF166:
	.ascii	"LightEvent_Init\000"
.LASF179:
	.ascii	"ChunkWorker_SetHandlerActive\000"
.LASF92:
	.ascii	"Block_Emerald_Ore\000"
.LASF91:
	.ascii	"Block_Gold_Ore\000"
.LASF103:
	.ascii	"blocks\000"
.LASF149:
	.ascii	"active\000"
.LASF108:
	.ascii	"emptyRevision\000"
.LASF106:
	.ascii	"seeThrough\000"
.LASF49:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF94:
	.ascii	"Block_Diamond_Block\000"
.LASF184:
	.ascii	"ChunkWorker_Init\000"
.LASF109:
	.ascii	"transparentVBO\000"
.LASF71:
	.ascii	"Block_Brick\000"
.LASF97:
	.ascii	"Block_Emerald_Block\000"
.LASF118:
	.ascii	"ChunkGenProgress\000"
.LASF185:
	.ascii	"prio\000"
.LASF76:
	.ascii	"Block_Door_Top\000"
.LASF132:
	.ascii	"WorkerItemType_Decorate\000"
.LASF120:
	.ascii	"graphicalTasksRunning\000"
.LASF41:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF12:
	.ascii	"__uint64_t\000"
.LASF38:
	.ascii	"LightEvent\000"
.LASF27:
	.ascii	"float\000"
.LASF35:
	.ascii	"LightLock\000"
.LASF50:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF55:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF127:
	.ascii	"references\000"
.LASF90:
	.ascii	"Block_Diamond_Ore\000"
.LASF78:
	.ascii	"Block_Snow_Grass\000"
.LASF180:
	.ascii	"_this\000"
.LASF77:
	.ascii	"Block_Door_Bottom\000"
.LASF151:
	.ascii	"thread\000"
.LASF128:
	.ascii	"Chunk\000"
.LASF33:
	.ascii	"_Bool\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF40:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF163:
	.ascii	"threadFree\000"
.LASF69:
	.ascii	"Block_Glass\000"
.LASF161:
	.ascii	"svcSleepThread\000"
.LASF181:
	.ascii	"ChunkWorker_AddHandler\000"
.LASF152:
	.ascii	"handler\000"
.LASF159:
	.ascii	"vec_reserve_po2_\000"
.LASF170:
	.ascii	"APT_CheckNew3DS\000"
.LASF67:
	.ascii	"Block_Gravel\000"
.LASF143:
	.ascii	"itemAddedEvent\000"
.LASF126:
	.ascii	"displayRevision\000"
.LASF39:
	.ascii	"Thread\000"
.LASF145:
	.ascii	"WorkQueue\000"
.LASF79:
	.ascii	"Block_Snow\000"
.LASF98:
	.ascii	"Block_Furnace\000"
.LASF99:
	.ascii	"Blocks_Count\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF167:
	.ascii	"LightLock_Init\000"
.LASF125:
	.ascii	"heightmapRevision\000"
.LASF45:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF32:
	.ascii	"char\000"
.LASF22:
	.ascii	"long double\000"
.LASF137:
	.ascii	"chunk\000"
.LASF121:
	.ascii	"uuid\000"
.LASF189:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/world/Chun"
	.ascii	"kWorker.c\000"
.LASF124:
	.ascii	"heightmap\000"
.LASF102:
	.ascii	"VBO_Block\000"
.LASF58:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF56:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF133:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF154:
	.ascii	"ChunkWorker\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF183:
	.ascii	"ChunkWorker_Deinit\000"
.LASF172:
	.ascii	"Crash\000"
.LASF131:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF29:
	.ascii	"RESET_STICKY\000"
.LASF44:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF113:
	.ascii	"forceVBOUpdate\000"
.LASF140:
	.ascii	"length\000"
.LASF52:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF164:
	.ascii	"threadJoin\000"
.LASF95:
	.ascii	"Block_Coal_Block\000"
.LASF186:
	.ascii	"isNew3ds\000"
.LASF129:
	.ascii	"WorkerItemType_Load\000"
.LASF153:
	.ascii	"working\000"
.LASF171:
	.ascii	"memset\000"
.LASF72:
	.ascii	"Block_Planks\000"
.LASF30:
	.ascii	"RESET_PULSE\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF57:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF54:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF168:
	.ascii	"threadCreate\000"
.LASF190:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF165:
	.ascii	"LightEvent_Signal\000"
.LASF46:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF43:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF19:
	.ascii	"int64_t\000"
.LASF62:
	.ascii	"Block_Dirt\000"
.LASF51:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF37:
	.ascii	"lock\000"
.LASF130:
	.ascii	"WorkerItemType_Save\000"
.LASF47:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
