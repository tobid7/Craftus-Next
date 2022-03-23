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
	.file	"Hand.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"romfs:/assets/textures/entity/player.png\000"
	.section	.text.Hand_Init,"ax",%progbits
	.align	2
	.global	Hand_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	Hand_Init, %function
Hand_Init:
.LFB224:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/rendering/Hand.c"
	.loc 1 15 18 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 16 2 view .LVU1
	.loc 1 15 18 is_stmt 0 view .LVU2
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 16 12 view .LVU3
	mov	r0, #576
	bl	linearAlloc
.LVL0:
	.loc 1 19 1 view .LVU4
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 16 10 view .LVU5
	ldr	r3, .L4
	.loc 1 18 2 view .LVU6
	ldr	r1, .L4+4
	.loc 1 16 10 view .LVU7
	str	r0, [r3], #4
	.loc 1 18 2 is_stmt 1 view .LVU8
	mov	r0, r3
	b	Texture_Load
.LVL1:
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	.LC2
	.cfi_endproc
.LFE224:
	.size	Hand_Init, .-Hand_Init
	.section	.text.Hand_Deinit,"ax",%progbits
	.align	2
	.global	Hand_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	Hand_Deinit, %function
Hand_Deinit:
.LFB225:
	.loc 1 20 20 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 21 2 view .LVU10
	.loc 1 20 20 is_stmt 0 view .LVU11
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 21 2 view .LVU12
	ldr	r4, .L8
	ldr	r0, [r4], #4
	bl	linearFree
.LVL2:
	.loc 1 22 2 is_stmt 1 view .LVU13
	mov	r0, r4
	.loc 1 23 1 is_stmt 0 view .LVU14
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 22 2 view .LVU15
	b	C3D_TexDelete
.LVL3:
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.cfi_endproc
.LFE225:
	.size	Hand_Deinit, .-Hand_Deinit
	.section	.text.Hand_Draw,"ax",%progbits
	.align	2
	.global	Hand_Draw
	.syntax unified
	.arm
	.fpu vfp
	.type	Hand_Draw, %function
Hand_Draw:
.LVL4:
.LFB226:
	.loc 1 25 87 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 25 87 is_stmt 0 view .LVU17
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
	mov	ip, r2
	vpush.64	{d8, d9, d10}
	.cfi_def_cfa_offset 60
	.cfi_offset 80, -60
	.cfi_offset 81, -56
	.cfi_offset 82, -52
	.cfi_offset 83, -48
	.cfi_offset 84, -44
	.cfi_offset 85, -40
	mov	r7, r2
	mov	lr, r2
	sub	sp, sp, #204
	.cfi_def_cfa_offset 264
	.loc 1 25 87 view .LVU18
	lsr	ip, ip, #8
	mov	r4, r3
	uxtb	r3, r7
.LVL5:
	.loc 1 25 87 view .LVU19
	lsr	lr, lr, #16
	str	r2, [sp, #12]
	mov	r5, r0
.LBB46:
.LBB47:
.LBB48:
.LBB49:
.LBB50:
	.file 2 "/opt/devkitpro/libctru/include/c3d/maths.h"
	.loc 2 285 2 view .LVU20
	mov	r2, #64
.LBE50:
.LBE49:
.LBE48:
.LBE47:
.LBE46:
	.loc 1 25 87 view .LVU21
	mov	r6, r1
	vmov	s19, r3	@ int
.LVL6:
.LBB61:
.LBB58:
.LBB55:
.LBB53:
.LBB51:
	.loc 2 285 2 view .LVU22
	mov	r1, #0
.LVL7:
	.loc 2 285 2 view .LVU23
	uxtb	r3, ip
	add	r0, sp, #136
	uxtb	r10, lr
	vmov	s20, r3	@ int
.LVL8:
	.loc 2 285 2 view .LVU24
.LBE51:
.LBE53:
.LBE55:
.LBE58:
.LBE61:
	.loc 1 26 2 is_stmt 1 view .LVU25
	.loc 1 27 2 view .LVU26
	.loc 1 28 2 view .LVU27
.LBB62:
.LBI46:
	.loc 2 319 20 view .LVU28
	.loc 2 321 2 view .LVU29
.LBB59:
.LBI47:
	.loc 2 306 20 view .LVU30
.LBB56:
	.loc 2 308 2 view .LVU31
.LBB54:
.LBI49:
	.loc 2 283 20 view .LVU32
.LBB52:
	.loc 2 285 2 view .LVU33
	bl	memset
.LVL9:
	.loc 2 285 2 is_stmt 0 view .LVU34
.LBE52:
.LBE54:
	.loc 2 309 2 is_stmt 1 view .LVU35
	.loc 2 309 14 is_stmt 0 view .LVU36
	mov	r3, #1065353216
.LBE56:
.LBE59:
.LBE62:
	.loc 1 29 31 view .LVU37
	vldr.32	s0, [r4, #20]
.LBB63:
.LBB60:
.LBB57:
	.loc 2 309 14 view .LVU38
	str	r3, [sp, #148]	@ float
	.loc 2 310 2 is_stmt 1 view .LVU39
	.loc 2 310 14 is_stmt 0 view .LVU40
	str	r3, [sp, #160]	@ float
	.loc 2 311 2 is_stmt 1 view .LVU41
	.loc 2 311 14 is_stmt 0 view .LVU42
	str	r3, [sp, #172]	@ float
	.loc 2 312 2 is_stmt 1 view .LVU43
	.loc 2 312 14 is_stmt 0 view .LVU44
	str	r3, [sp, #184]	@ float
.LVL10:
	.loc 2 312 14 view .LVU45
.LBE57:
.LBE60:
.LBE63:
	.loc 1 29 2 is_stmt 1 view .LVU46
	.loc 1 29 31 is_stmt 0 view .LVU47
	bl	sinf
.LVL11:
	.loc 1 29 53 view .LVU48
	vldr.32	s13, .L49
	.loc 1 29 29 view .LVU49
	vldr.32	s14, .L49+4
	.loc 1 29 83 view .LVU50
	cmp	r10, #0
	.loc 1 29 31 view .LVU51
	vmov.f32	s15, s0
	.loc 1 29 29 view .LVU52
	vmla.f32	s14, s0, s13
	.loc 1 29 83 view .LVU53
	bne	.L44
	.loc 1 30 74 view .LVU54
	vcmpe.f32	s0, #0
	.loc 1 29 2 view .LVU55
	vldr.32	s13, .L49+8
	.loc 1 30 74 view .LVU56
	vmrs	APSR_nzcv, FPSCR
	.loc 1 29 2 view .LVU57
	vadd.f32	s0, s14, s13
	.loc 1 30 74 view .LVU58
	bmi	.L45
	.loc 1 30 101 view .LVU59
	vldr.32	s14, .L49+12
	.loc 1 29 2 view .LVU60
	vldr.32	s1, .L49+16
	vldr.32	s2, .L49+20
	mov	r1, #1
	vnmls.f32	s1, s15, s14
	add	r0, sp, #136
	bl	Mtx_Translate
.LVL12:
	.loc 1 31 2 is_stmt 1 view .LVU61
	.loc 1 29 2 is_stmt 0 view .LVU62
	vldr.32	s0, .L49+24
	b	.L26
.L44:
	.loc 1 30 74 view .LVU63
	vcmpe.f32	s0, #0
	.loc 1 29 2 view .LVU64
	vldr.32	s13, .L49+28
	.loc 1 30 74 view .LVU65
	vmrs	APSR_nzcv, FPSCR
	.loc 1 29 2 view .LVU66
	vadd.f32	s0, s14, s13
	.loc 1 30 74 view .LVU67
	bmi	.L46
	.loc 1 30 101 view .LVU68
	vldr.32	s14, .L49+12
	.loc 1 29 2 view .LVU69
	vldr.32	s1, .L49+16
	vldr.32	s2, .L49+32
	mov	r1, #1
	vnmls.f32	s1, s15, s14
	add	r0, sp, #136
	bl	Mtx_Translate
.LVL13:
	.loc 1 31 2 is_stmt 1 view .LVU70
	.loc 1 29 2 is_stmt 0 view .LVU71
	vldr.32	s0, .L49+36
.L26:
	.loc 1 31 2 discriminator 4 view .LVU72
	mov	r1, #1
	add	r0, sp, #136
	bl	Mtx_RotateX
.LVL14:
	.loc 1 32 2 is_stmt 1 discriminator 4 view .LVU73
	vldr.32	s0, .L49+36
	mov	r1, #1
	add	r0, sp, #136
	bl	Mtx_RotateY
.LVL15:
	.loc 1 33 2 discriminator 4 view .LVU74
	.loc 1 33 12 is_stmt 0 discriminator 4 view .LVU75
	vldr.32	s15, [r4, #76]
	.loc 1 33 5 discriminator 4 view .LVU76
	vldr.32	s14, .L49+40
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bgt	.L47
	.loc 1 39 2 is_stmt 1 view .LVU77
	.loc 1 39 5 is_stmt 0 view .LVU78
	cmp	r10, #0
	.loc 1 40 2 view .LVU79
	vldrne.32	s2, .L49+44
	.loc 1 39 5 view .LVU80
	beq	.L48
.L15:
	.loc 1 40 2 discriminator 4 view .LVU81
	vldr.32	s1, .L49+44
	add	r0, sp, #136
	vmov.f32	s0, s1
	bl	Mtx_Scale
.LVL16:
	.loc 1 42 2 is_stmt 1 discriminator 4 view .LVU82
	mov	r1, r6
	add	r2, sp, #136
	add	r0, sp, #72
	bl	Mtx_Multiply
.LVL17:
	.loc 1 44 2 discriminator 4 view .LVU83
.LBB64:
.LBI64:
	.file 3 "/opt/devkitpro/libctru/include/c3d/uniforms.h"
	.loc 3 38 20 discriminator 4 view .LVU84
	.loc 3 40 2 discriminator 4 view .LVU85
.LBB65:
.LBI65:
	.loc 3 30 20 discriminator 4 view .LVU86
.LBB66:
.LBB67:
.LBB68:
	.loc 3 18 16 discriminator 4 view .LVU87
	.loc 3 19 3 discriminator 4 view .LVU88
	.loc 3 19 31 is_stmt 0 discriminator 4 view .LVU89
	mov	r2, #1
	ldr	r3, .L49+48
.LBE68:
.LBE67:
	.loc 3 35 10 discriminator 4 view .LVU90
	ldr	lr, .L49+52
.LBB71:
.LBB69:
	.loc 3 19 31 discriminator 4 view .LVU91
	strb	r2, [r3, r5]!
	.loc 3 18 26 is_stmt 1 discriminator 4 view .LVU92
.LVL18:
	.loc 3 18 16 discriminator 4 view .LVU93
	.loc 3 19 3 discriminator 4 view .LVU94
.LBE69:
.LBE71:
	.loc 3 35 10 is_stmt 0 discriminator 4 view .LVU95
	add	ip, sp, #72
	add	lr, lr, r5, lsl #4
.LBB72:
.LBB70:
	.loc 3 19 31 discriminator 4 view .LVU96
	strb	r2, [r3, #1]
	.loc 3 18 26 is_stmt 1 discriminator 4 view .LVU97
.LVL19:
	.loc 3 18 16 discriminator 4 view .LVU98
	.loc 3 19 3 discriminator 4 view .LVU99
	.loc 3 19 31 is_stmt 0 discriminator 4 view .LVU100
	strb	r2, [r3, #2]
	.loc 3 18 26 is_stmt 1 discriminator 4 view .LVU101
.LVL20:
	.loc 3 18 16 discriminator 4 view .LVU102
	.loc 3 19 3 discriminator 4 view .LVU103
	.loc 3 19 31 is_stmt 0 discriminator 4 view .LVU104
	strb	r2, [r3, #3]
	.loc 3 18 26 is_stmt 1 discriminator 4 view .LVU105
.LVL21:
	.loc 3 18 16 discriminator 4 view .LVU106
	.loc 3 20 2 discriminator 4 view .LVU107
	.loc 3 20 2 is_stmt 0 discriminator 4 view .LVU108
.LBE70:
.LBE72:
	.loc 3 34 2 is_stmt 1 discriminator 4 view .LVU109
	.loc 3 34 16 discriminator 4 view .LVU110
	.loc 3 35 10 is_stmt 0 discriminator 4 view .LVU111
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
.LBE66:
.LBE65:
.LBE64:
	.loc 1 46 2 discriminator 4 view .LVU112
	ldr	fp, .L49+56
.LBB75:
.LBB74:
.LBB73:
	.loc 3 35 10 discriminator 4 view .LVU113
	stm	lr, {r0, r1, r2, r3}
.LVL22:
	.loc 3 35 10 discriminator 4 view .LVU114
.LBE73:
.LBE74:
.LBE75:
	.loc 1 46 2 is_stmt 1 discriminator 4 view .LVU115
	mov	r3, fp
	mov	r9, #0
	ldr	r0, [r3], #4
	mov	r2, #576
	ldr	r1, .L49+60
.LBB76:
	.loc 1 47 11 is_stmt 0 discriminator 4 view .LVU116
	mov	r6, r9
.LVL23:
	.loc 1 47 11 discriminator 4 view .LVU117
.LBE76:
	.loc 1 46 2 discriminator 4 view .LVU118
	vmov	s16, r3	@ int
.LBB101:
.LBB77:
.LBB78:
.LBB79:
	.loc 1 60 76 discriminator 4 view .LVU119
	ldr	r4, .L49+64
.LVL24:
	.loc 1 60 76 discriminator 4 view .LVU120
.LBE79:
.LBE78:
.LBE77:
.LBE101:
	.loc 1 46 2 discriminator 4 view .LVU121
	bl	memcpy
.LVL25:
	.loc 1 47 2 is_stmt 1 discriminator 4 view .LVU122
.LBB102:
	.loc 1 47 7 discriminator 4 view .LVU123
	.loc 1 47 20 discriminator 4 view .LVU124
.L25:
	.loc 1 48 3 view .LVU125
	.loc 1 48 6 is_stmt 0 view .LVU126
	cmp	r10, #0
	beq	.L16
.LBB84:
	.loc 1 49 4 is_stmt 1 view .LVU127
	.loc 1 50 4 view .LVU128
	.loc 1 51 4 view .LVU129
	uxtb	r5, r6
	mov	r1, r5
	vmov	r2, s20	@ int
	vmov	r0, s19	@ int
	add	r3, sp, #24
	bl	Block_GetTexture
.LVL26:
	.loc 1 52 4 view .LVU130
	mov	r2, r5
	vmov	r0, s19	@ int
	add	r3, sp, #20
	vmov	r1, s20	@ int
	bl	Block_GetColor
.LVL27:
	.loc 1 57 4 view .LVU131
.LBB83:
	.loc 1 57 9 view .LVU132
	.loc 1 57 22 view .LVU133
.LBB80:
	.loc 1 60 34 is_stmt 0 view .LVU134
	ldr	r3, .L49+56
	.loc 1 60 84 view .LVU135
	ldrh	r8, [sp, #24]
	.loc 1 60 34 view .LVU136
	ldr	r3, [r3]
	.loc 1 61 84 view .LVU137
	ldrh	r7, [sp, #26]
	add	r0, r3, #96
	.loc 1 63 32 view .LVU138
	ldrb	r5, [sp, #20]	@ zero_extendqisi2
	.loc 1 64 32 view .LVU139
	ldrb	lr, [sp, #21]	@ zero_extendqisi2
	.loc 1 65 32 view .LVU140
	ldrb	ip, [sp, #22]	@ zero_extendqisi2
	add	r3, r3, r9
	add	r0, r0, r9
.LVL28:
.L19:
	.loc 1 58 5 is_stmt 1 view .LVU141
	.loc 1 60 5 view .LVU142
	.loc 1 60 76 is_stmt 0 view .LVU143
	ldrsh	r2, [r3, #6]
	.loc 1 63 25 view .LVU144
	strb	r5, [r3, #10]
	.loc 1 60 76 view .LVU145
	cmp	r2, #1
	.loc 1 61 76 view .LVU146
	ldrsh	r2, [r3, #8]
	.loc 1 60 76 view .LVU147
	moveq	r1, r4
	movne	r1, #1
	.loc 1 61 76 view .LVU148
	cmp	r2, #1
	moveq	r2, r4
	movne	r2, #1
	.loc 1 64 25 view .LVU149
	strb	lr, [r3, #11]
	.loc 1 65 25 view .LVU150
	strb	ip, [r3, #12]
.LBE80:
	.loc 1 57 22 view .LVU151
	add	r3, r3, #16
.LBB81:
	.loc 1 60 76 view .LVU152
	add	r1, r8, r1
	.loc 1 61 76 view .LVU153
	add	r2, r7, r2
.LBE81:
	.loc 1 57 22 view .LVU154
	cmp	r0, r3
.LBB82:
	.loc 1 60 24 view .LVU155
	strh	r1, [r3, #-10]	@ movhi
	.loc 1 61 5 is_stmt 1 view .LVU156
	.loc 1 61 24 is_stmt 0 view .LVU157
	strh	r2, [r3, #-8]	@ movhi
	.loc 1 63 5 is_stmt 1 view .LVU158
	.loc 1 64 5 view .LVU159
	.loc 1 65 5 view .LVU160
.LBE82:
	.loc 1 57 28 view .LVU161
	.loc 1 57 22 view .LVU162
	bne	.L19
	add	r9, r9, #96
.L20:
	.loc 1 57 22 is_stmt 0 view .LVU163
.LBE83:
.LBE84:
	.loc 1 47 26 is_stmt 1 discriminator 2 view .LVU164
	add	r6, r6, #1
.LVL29:
	.loc 1 47 20 discriminator 2 view .LVU165
	cmp	r6, #6
	bne	.L25
.LBE102:
	.loc 1 101 2 view .LVU166
	mov	r2, #255
	mov	r1, #7
	mov	r0, #1
	bl	C3D_AlphaTest
.LVL30:
	.loc 1 103 2 view .LVU167
	.loc 1 103 25 is_stmt 0 view .LVU168
	bl	C3D_GetBufInfo
.LVL31:
	.loc 1 105 2 view .LVU169
	mov	r9, #0
	.loc 1 103 25 view .LVU170
	mov	r4, r0
.LVL32:
	.loc 1 104 2 is_stmt 1 view .LVU171
	.loc 1 105 2 is_stmt 0 view .LVU172
	ldr	r8, .L49+68
	.loc 1 104 2 view .LVU173
	bl	BufInfo_Init
.LVL33:
	.loc 1 105 2 is_stmt 1 view .LVU174
	ldr	r3, .L49+56
	mov	r2, #16
	ldr	r1, [r3]
	mov	r0, r4
	mov	r3, #4
	strd	r8, [sp]
	bl	BufInfo_Add
.LVL34:
	.loc 1 107 2 view .LVU175
	mov	r1, #0
	mov	r2, #36
	mov	r0, r1
	bl	C3D_DrawArrays
.LVL35:
	.loc 1 109 2 view .LVU176
	mov	r2, #0
	mov	r1, r6
	mov	r0, r2
	bl	C3D_AlphaTest
.LVL36:
	.loc 1 110 1 is_stmt 0 view .LVU177
	add	sp, sp, #204
	.cfi_remember_state
	.cfi_def_cfa_offset 60
	@ sp needed
	vldm	sp!, {d8-d10}
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
.LVL37:
	.loc 1 110 1 view .LVU178
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL38:
.L45:
	.cfi_restore_state
	.loc 1 30 101 view .LVU179
	vldr.32	s14, .L49+12
	.loc 1 29 2 view .LVU180
	vldr.32	s1, .L49+16
	vldr.32	s2, .L49+20
	mov	r1, #1
	vnmla.f32	s1, s15, s14
	add	r0, sp, #136
	bl	Mtx_Translate
.LVL39:
	.loc 1 31 2 is_stmt 1 view .LVU181
	.loc 1 29 2 is_stmt 0 view .LVU182
	vldr.32	s0, .L49+24
	b	.L26
.L46:
	.loc 1 30 101 view .LVU183
	vldr.32	s14, .L49+12
	.loc 1 29 2 view .LVU184
	vldr.32	s1, .L49+16
	vldr.32	s2, .L49+32
	mov	r1, #1
	vnmla.f32	s1, s15, s14
	add	r0, sp, #136
	bl	Mtx_Translate
.LVL40:
	.loc 1 31 2 is_stmt 1 view .LVU185
	.loc 1 29 2 is_stmt 0 view .LVU186
	vldr.32	s0, .L49+36
	b	.L26
.LVL41:
.L16:
.LBB103:
	.loc 1 68 4 is_stmt 1 view .LVU187
	vmov	r1, s16	@ int
	mov	r0, r10
	bl	C3D_TexBind
.LVL42:
	.loc 1 70 4 view .LVU188
	.loc 1 70 7 is_stmt 0 view .LVU189
	cmp	r6, #1
	ble	.L21
.LBB85:
.LBB86:
.LBB87:
	.loc 1 77 21 view .LVU190
	ldr	r3, .L49+56
	ldr	lr, [r3]
	add	r7, lr, r9
.L22:
	add	r9, r9, #96
	add	lr, lr, r9
	lsl	r8, r6, #2
.L24:
.LBE87:
.LBE86:
.LBE85:
.LBB96:
.LBB97:
	.loc 1 84 5 is_stmt 1 discriminator 3 view .LVU191
	.loc 1 86 5 discriminator 3 view .LVU192
	.loc 1 86 19 is_stmt 0 discriminator 3 view .LVU193
	ldr	r5, .L49+72
	add	ip, sp, #24
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
	.loc 1 95 5 is_stmt 1 discriminator 3 view .LVU194
	.loc 1 95 53 is_stmt 0 discriminator 3 view .LVU195
	ldrsh	r3, [r7, #6]
	.loc 1 95 37 discriminator 3 view .LVU196
	add	r2, sp, #200
	add	r3, r8, r3
	add	r3, r2, r3, lsl #1
	.loc 1 95 24 discriminator 3 view .LVU197
	ldrh	r3, [r3, #-176]
.LBE97:
	.loc 1 83 22 discriminator 3 view .LVU198
	add	r7, r7, #16
.LBB98:
	.loc 1 95 24 discriminator 3 view .LVU199
	strh	r3, [r7, #-10]	@ movhi
	.loc 1 96 5 is_stmt 1 discriminator 3 view .LVU200
	.loc 1 96 53 is_stmt 0 discriminator 3 view .LVU201
	ldrsh	r3, [r7, #-8]
.LBE98:
	.loc 1 83 22 discriminator 3 view .LVU202
	cmp	lr, r7
.LBB99:
	.loc 1 96 37 discriminator 3 view .LVU203
	add	r3, r3, #2
	add	r3, r8, r3
	add	r3, r2, r3, lsl #1
	.loc 1 96 24 discriminator 3 view .LVU204
	ldrh	r3, [r3, #-176]
	strh	r3, [r7, #-8]	@ movhi
.LBE99:
	.loc 1 83 28 is_stmt 1 discriminator 3 view .LVU205
	.loc 1 83 22 discriminator 3 view .LVU206
	bne	.L24
	b	.L20
.L21:
	.loc 1 83 22 is_stmt 0 discriminator 3 view .LVU207
.LBE96:
.LBB100:
	.loc 1 72 5 is_stmt 1 view .LVU208
	.loc 1 72 19 is_stmt 0 view .LVU209
	ldr	r1, .L49+76
.LBB92:
.LBB88:
	.loc 1 77 21 view .LVU210
	ldr	r3, .L49+56
.LBE88:
.LBE92:
	.loc 1 72 19 view .LVU211
	mov	ip, r1
.LBB93:
.LBB89:
	.loc 1 77 21 view .LVU212
	ldr	lr, [r3]
	eor	r3, r6, #1
	lsl	r3, r3, #1
.LBE89:
.LBE93:
	.loc 1 72 19 view .LVU213
	add	fp, sp, #24
	add	r7, lr, r9
	str	r3, [sp, #8]
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	fp!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1, r2, r3}
	mov	ip, r7
	stm	fp, {r0, r1, r2, r3}
	.loc 1 75 5 is_stmt 1 view .LVU214
.LBB94:
	.loc 1 75 10 view .LVU215
.LVL43:
	.loc 1 75 23 view .LVU216
	add	r8, lr, #96
.LBE94:
	.loc 1 72 19 is_stmt 0 view .LVU217
	ldr	r2, [sp, #8]
	add	r8, r8, r9
	lsl	r5, r6, #1
.LVL44:
.L23:
.LBB95:
.LBB90:
	.loc 1 76 6 is_stmt 1 discriminator 3 view .LVU218
	.loc 1 77 6 discriminator 3 view .LVU219
	.loc 1 78 10 is_stmt 0 discriminator 3 view .LVU220
	ldrsh	r0, [ip, #8]
	.loc 1 77 10 discriminator 3 view .LVU221
	ldrsh	r3, [ip, #6]
.LVL45:
	.loc 1 78 6 is_stmt 1 discriminator 3 view .LVU222
	.loc 1 79 6 discriminator 3 view .LVU223
	.loc 1 79 79 is_stmt 0 discriminator 3 view .LVU224
	add	r1, r2, r0
	add	r1, r3, r1, lsl #1
	add	fp, sp, #200
	add	r1, fp, r1, lsl #2
	.loc 1 79 25 discriminator 3 view .LVU225
	ldrh	r1, [r1, #-176]
	.loc 1 80 79 discriminator 3 view .LVU226
	add	r0, r5, r0
.LVL46:
	.loc 1 80 79 discriminator 3 view .LVU227
	add	r3, r3, r0, lsl #1
.LVL47:
	.loc 1 79 25 discriminator 3 view .LVU228
	strh	r1, [ip, #6]	@ movhi
.LVL48:
	.loc 1 80 6 is_stmt 1 discriminator 3 view .LVU229
	.loc 1 80 79 is_stmt 0 discriminator 3 view .LVU230
	add	r3, fp, r3, lsl #2
	.loc 1 80 25 discriminator 3 view .LVU231
	ldrh	r3, [r3, #-174]
.LBE90:
	.loc 1 75 23 discriminator 3 view .LVU232
	add	ip, ip, #16
.LVL49:
.LBB91:
	.loc 1 80 25 discriminator 3 view .LVU233
	strh	r3, [ip, #-8]	@ movhi
.LVL50:
	.loc 1 80 25 discriminator 3 view .LVU234
.LBE91:
	.loc 1 75 29 is_stmt 1 discriminator 3 view .LVU235
	.loc 1 75 23 discriminator 3 view .LVU236
	cmp	ip, r8
	bne	.L23
	b	.L22
.L50:
	.align	2
.L49:
	.word	1022739087
	.word	1056964608
	.word	1045220557
	.word	1008981770
	.word	1059984507
	.word	-1077097267
	.word	1062045612
	.word	0
	.word	-1080452710
	.word	1043511490
	.word	-1110651699
	.word	1049582633
	.word	C3D_FVUnifDirty
	.word	C3D_FVUnif
	.word	.LANCHOR0
	.word	cube_sides_lut
	.word	4095
	.word	12816
	.word	.LANCHOR1+32
	.word	.LANCHOR1
	.word	1036831949
	.word	1050253722
.LVL51:
.L47:
	.loc 1 75 23 is_stmt 0 discriminator 3 view .LVU237
.LBE95:
.LBE100:
.LBE103:
.LBB104:
	.loc 1 34 3 is_stmt 1 view .LVU238
	.loc 1 34 48 is_stmt 0 view .LVU239
	vldr.32	s14, .L49+80
	.loc 1 34 56 view .LVU240
	vldr.32	s18, .L49+84
	.loc 1 34 48 view .LVU241
	vadd.f32	s15, s15, s14
	.loc 1 34 56 view .LVU242
	vdiv.f32	s0, s15, s18
	.loc 1 34 74 view .LVU243
	vldr.64	d6, .L51
	.loc 1 34 56 view .LVU244
	vcvt.f64.f32	d0, s0
	.loc 1 34 74 view .LVU245
	vmul.f64	d0, d0, d6
	.loc 1 34 16 view .LVU246
	vcvt.f32.f64	s16, d0
	vmov.f32	s0, s16
	bl	sinf
.LVL52:
	vmov.f32	s15, s0
	.loc 1 35 13 view .LVU247
	vmov.f32	s0, s16
	.loc 1 34 16 view .LVU248
	vmov.f32	s16, s15
.LVL53:
	.loc 1 35 3 is_stmt 1 view .LVU249
	.loc 1 35 13 is_stmt 0 view .LVU250
	bl	cosf
.LVL54:
	.loc 1 36 3 view .LVU251
	vneg.f32	s16, s16
.LVL55:
	.loc 1 35 13 view .LVU252
	vmov.f32	s17, s0
.LVL56:
	.loc 1 36 3 is_stmt 1 view .LVU253
	mov	r1, #1
	vmov.f32	s0, s16
.LVL57:
	.loc 1 36 3 is_stmt 0 view .LVU254
	add	r0, sp, #136
	bl	Mtx_RotateX
.LVL58:
	.loc 1 37 3 is_stmt 1 view .LVU255
	vldr.32	s2, .L51+8
	vnmul.f32	s1, s17, s18
	vmul.f32	s2, s16, s2
	vldr.32	s0, .L51+12
	mov	r1, #1
	add	r0, sp, #136
	bl	Mtx_Translate
.LVL59:
.LBE104:
	.loc 1 39 2 view .LVU256
	.loc 1 39 5 is_stmt 0 view .LVU257
	cmp	r10, #0
	.loc 1 40 2 view .LVU258
	vldrne.32	s2, .L51+16
	.loc 1 39 5 view .LVU259
	bne	.L15
.LVL60:
.L48:
	.loc 1 39 25 is_stmt 1 discriminator 1 view .LVU260
	vldr.32	s0, .L51+20
	mov	r1, #1
	add	r0, sp, #136
	bl	Mtx_RotateZ
.LVL61:
	.loc 1 40 2 discriminator 1 view .LVU261
	vldr.32	s2, .L51+24
	b	.L15
.L52:
	.align	3
.L51:
	.word	1413754136
	.word	1074340347
	.word	1048576000
	.word	0
	.word	1049582633
	.word	1060288706
	.word	1061997773
	.cfi_endproc
.LFE226:
	.size	Hand_Draw, .-Hand_Draw
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.short	0
	.short	1
	.short	0
	.short	0
	.short	1
	.short	1
	.short	1
	.short	0
	.short	1
	.short	0
	.short	1
	.short	1
	.short	0
	.short	0
	.short	0
	.short	1
.LC1:
	.short	24576
	.short	26624
	.short	10240
	.short	16384
	.short	20480
	.short	22528
	.short	10240
	.short	16384
	.short	26624
	.short	28672
	.short	10240
	.short	16384
	.short	22528
	.short	24576
	.short	10240
	.short	16384
	.short	24576
	.short	26624
	.short	8192
	.short	10240
	.short	22528
	.short	24576
	.short	8192
	.short	10240
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	handVBO, %object
	.size	handVBO, 4
handVBO:
	.space	4
	.type	SkinTexture, %object
	.size	SkinTexture, 24
SkinTexture:
	.space	24
	.text
.Letext0:
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 7 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 8 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 13 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 14 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 15 "/opt/devkitpro/libctru/include/c3d/types.h"
	.file 16 "/opt/devkitpro/libctru/include/c3d/buffers.h"
	.file 17 "/opt/devkitpro/libctru/include/c3d/texture.h"
	.file 18 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 19 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 20 "/home/tobi/Dokumente/Craftus-Next/include/misc/Xorshift.h"
	.file 21 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 22 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.file 23 "/home/tobi/Dokumente/Craftus-Next/include/world/WorkQueue.h"
	.file 24 "/home/tobi/Dokumente/Craftus-Next/include/world/World.h"
	.file 25 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Item.h"
	.file 26 "/home/tobi/Dokumente/Craftus-Next/include/inventory/ItemStack.h"
	.file 27 "/home/tobi/Dokumente/Craftus-Next/include/misc/VecMath.h"
	.file 28 "/home/tobi/Dokumente/Craftus-Next/include/misc/Raycast.h"
	.file 29 "/home/tobi/Dokumente/Craftus-Next/include/entity/Player.h"
	.file 30 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VertexFmt.h"
	.file 31 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 32 "/opt/devkitpro/libctru/include/c3d/base.h"
	.file 33 "/opt/devkitpro/libctru/include/c3d/effect.h"
	.file 34 "/opt/devkitpro/devkitARM/arm-none-eabi/include/math.h"
	.file 35 "/opt/devkitpro/libctru/include/3ds/allocator/linear.h"
	.file 36 "/home/tobi/Dokumente/Craftus-Next/include/rendering/TextureMap.h"
	.file 37 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1b4d
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x38
	.4byte	.LASF315
	.byte	0x1d
	.4byte	.LASF316
	.4byte	.LASF317
	.4byte	.LLRL40
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x47
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x37
	.byte	0x13
	.4byte	0x5a
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x6d
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x80
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x69
	.byte	0x20
	.4byte	0x2d
	.uleb128 0x39
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x3b
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0x20
	.byte	0x13
	.4byte	0x4e
	.uleb128 0x16
	.4byte	0xc7
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x61
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x74
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x87
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0xa1
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x6
	.byte	0x8f
	.byte	0xd
	.4byte	0xad
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x6
	.byte	0xd1
	.byte	0x16
	.4byte	0xb4
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0x1b
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xbb
	.uleb128 0x1b
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xd8
	.uleb128 0x1b
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x1b
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0xfc
	.uleb128 0x1b
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x3a
	.byte	0x4
	.uleb128 0xc
	.byte	0x8
	.byte	0x4
	.4byte	.LASF25
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.4byte	.LASF26
	.uleb128 0xc
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x7
	.4byte	0x13c
	.4byte	0x184
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0xe4
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x9
	.byte	0xa
	.byte	0x11
	.4byte	0x184
	.uleb128 0x9
	.byte	0x8
	.byte	0x9
	.byte	0x13
	.byte	0x9
	.4byte	0x1c0
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0x9
	.byte	0x15
	.byte	0x6
	.4byte	0x152
	.byte	0
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0x9
	.byte	0x16
	.byte	0xc
	.4byte	0x190
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x9
	.byte	0x17
	.byte	0x3
	.4byte	0x19c
	.uleb128 0xb
	.4byte	0x166
	.uleb128 0xb
	.4byte	0x1d6
	.uleb128 0x3b
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0xa
	.byte	0x28
	.byte	0x1
	.4byte	0x1fd
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0xa
	.byte	0x31
	.byte	0x1
	.4byte	0x223
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0xb
	.byte	0x21
	.byte	0xe
	.4byte	0x249
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0xc
	.byte	0x40
	.byte	0x1
	.4byte	0x2ab
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0xc
	.byte	0x4f
	.byte	0x3
	.4byte	0x249
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0xc
	.byte	0xa7
	.byte	0x1
	.4byte	0x2f5
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
	.byte	0
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0xc
	.byte	0xb0
	.byte	0x3
	.4byte	0x2b7
	.uleb128 0x2a
	.byte	0x2
	.4byte	0x6d
	.2byte	0x1ec
	.4byte	0x329
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF70
	.2byte	0x100
	.uleb128 0x1c
	.4byte	.LASF71
	.2byte	0x200
	.uleb128 0x1c
	.4byte	.LASF72
	.2byte	0x300
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF73
	.2byte	0x1f1
	.4byte	0x301
	.uleb128 0x2a
	.byte	0x1
	.4byte	0x47
	.2byte	0x1f5
	.4byte	0x34d
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF76
	.2byte	0x1f8
	.4byte	0x334
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.4byte	0x378
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.4byte	0x6d
	.byte	0xe
	.byte	0x9
	.byte	0x1
	.4byte	0x394
	.uleb128 0x1c
	.4byte	.LASF80
	.2byte	0x100
	.uleb128 0x1c
	.4byte	.LASF81
	.2byte	0x200
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xf
	.byte	0x29
	.byte	0x2
	.4byte	0x3ca
	.uleb128 0x8
	.ascii	"w\000"
	.byte	0xf
	.byte	0x2b
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0xf
	.byte	0x2c
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0xf
	.byte	0x2d
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0xf
	.byte	0x2e
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0xf
	.byte	0x34
	.byte	0x2
	.4byte	0x400
	.uleb128 0x8
	.ascii	"r\000"
	.byte	0xf
	.byte	0x36
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.ascii	"k\000"
	.byte	0xf
	.byte	0x37
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0x8
	.ascii	"j\000"
	.byte	0xf
	.byte	0x38
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0x8
	.ascii	"i\000"
	.byte	0xf
	.byte	0x39
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.byte	0x10
	.byte	0xf
	.byte	0x24
	.byte	0x9
	.4byte	0x41e
	.uleb128 0x1d
	.4byte	0x394
	.uleb128 0x1d
	.4byte	0x3ca
	.uleb128 0x1e
	.ascii	"c\000"
	.byte	0xf
	.byte	0x3f
	.byte	0x8
	.4byte	0x41e
	.byte	0
	.uleb128 0x7
	.4byte	0x26
	.4byte	0x42e
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0xf
	.byte	0x40
	.byte	0x3
	.4byte	0x400
	.uleb128 0x12
	.byte	0x40
	.byte	0xf
	.byte	0x4c
	.byte	0x9
	.4byte	0x458
	.uleb128 0x1e
	.ascii	"r\000"
	.byte	0xf
	.byte	0x4e
	.byte	0xb
	.4byte	0x458
	.uleb128 0x1e
	.ascii	"m\000"
	.byte	0xf
	.byte	0x4f
	.byte	0x8
	.4byte	0x468
	.byte	0
	.uleb128 0x7
	.4byte	0x42e
	.4byte	0x468
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x26
	.4byte	0x478
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF83
	.byte	0xf
	.byte	0x50
	.byte	0x3
	.4byte	0x43a
	.uleb128 0x16
	.4byte	0x478
	.uleb128 0x7
	.4byte	0x42e
	.4byte	0x49f
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x5f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF84
	.byte	0x3
	.byte	0x7
	.byte	0x11
	.4byte	0x489
	.uleb128 0x7
	.4byte	0x16d
	.4byte	0x4c1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x5f
	.byte	0
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x3
	.byte	0xb
	.byte	0xc
	.4byte	0x4ab
	.uleb128 0x9
	.byte	0xc
	.byte	0x10
	.byte	0x4
	.byte	0x9
	.4byte	0x4f1
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0x10
	.byte	0x6
	.byte	0x6
	.4byte	0x13c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x10
	.byte	0x7
	.byte	0x6
	.4byte	0x174
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x10
	.byte	0x8
	.byte	0x3
	.4byte	0x4cd
	.uleb128 0x9
	.byte	0x98
	.byte	0x10
	.byte	0xa
	.byte	0x9
	.4byte	0x52e
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x10
	.byte	0xc
	.byte	0x6
	.4byte	0x13c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x10
	.byte	0xd
	.byte	0x6
	.4byte	0xad
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF91
	.byte	0x10
	.byte	0xe
	.byte	0xd
	.4byte	0x52e
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x4f1
	.4byte	0x53e
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x10
	.byte	0xf
	.byte	0x3
	.4byte	0x4fd
	.uleb128 0x9
	.byte	0x18
	.byte	0x11
	.byte	0x4
	.byte	0x9
	.4byte	0x561
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x11
	.byte	0x6
	.byte	0x8
	.4byte	0x561
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x15d
	.4byte	0x571
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF94
	.byte	0x11
	.byte	0x7
	.byte	0x3
	.4byte	0x54a
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.byte	0xb
	.byte	0x2
	.4byte	0x59f
	.uleb128 0x20
	.4byte	.LASF93
	.byte	0x11
	.byte	0xd
	.byte	0x9
	.4byte	0x15d
	.uleb128 0x20
	.4byte	.LASF95
	.byte	0x11
	.byte	0xe
	.byte	0x10
	.4byte	0x59f
	.byte	0
	.uleb128 0xb
	.4byte	0x571
	.uleb128 0x9
	.byte	0x4
	.byte	0x11
	.byte	0x17
	.byte	0x3
	.4byte	0x5c8
	.uleb128 0x2
	.4byte	.LASF96
	.byte	0x11
	.byte	0x19
	.byte	0x8
	.4byte	0x131
	.byte	0
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x11
	.byte	0x1a
	.byte	0x8
	.4byte	0x131
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.byte	0x14
	.byte	0x2
	.4byte	0x5e3
	.uleb128 0x1e
	.ascii	"dim\000"
	.byte	0x11
	.byte	0x16
	.byte	0x7
	.4byte	0x13c
	.uleb128 0x1d
	.4byte	0x5a4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x11
	.byte	0x23
	.byte	0x3
	.4byte	0x614
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x11
	.byte	0x25
	.byte	0x8
	.4byte	0x131
	.byte	0
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x11
	.byte	0x26
	.byte	0x7
	.4byte	0x127
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x11
	.byte	0x27
	.byte	0x7
	.4byte	0x127
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x11
	.byte	0x20
	.byte	0x2
	.4byte	0x62f
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x11
	.byte	0x22
	.byte	0x7
	.4byte	0x13c
	.uleb128 0x1d
	.4byte	0x5e3
	.byte	0
	.uleb128 0x9
	.byte	0x18
	.byte	0x11
	.byte	0x9
	.byte	0x9
	.4byte	0x681
	.uleb128 0x27
	.4byte	0x57d
	.byte	0
	.uleb128 0x3c
	.ascii	"fmt\000"
	.byte	0x11
	.byte	0x11
	.byte	0xf
	.4byte	0x2ab
	.byte	0x4
	.byte	0x20
	.uleb128 0x3d
	.4byte	.LASF102
	.byte	0x11
	.byte	0x12
	.byte	0x9
	.4byte	0x114
	.byte	0x1c
	.byte	0x24
	.uleb128 0x27
	.4byte	0x5c8
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x11
	.byte	0x1e
	.byte	0x6
	.4byte	0x13c
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x11
	.byte	0x1f
	.byte	0x6
	.4byte	0x13c
	.byte	0x10
	.uleb128 0x27
	.4byte	0x614
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0x11
	.byte	0x2a
	.byte	0x3
	.4byte	0x62f
	.uleb128 0x7
	.4byte	0x26
	.4byte	0x69d
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0x12
	.byte	0x3
	.byte	0xe
	.4byte	0x6d5
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0
	.uleb128 0x1
	.4byte	.LASF107
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF113
	.byte	0x12
	.byte	0xb
	.byte	0x3
	.4byte	0x69d
	.uleb128 0x5
	.4byte	.LASF114
	.byte	0x13
	.byte	0x8
	.byte	0x11
	.4byte	0xbb
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0x13
	.byte	0xa
	.byte	0x6
	.4byte	0x7eb
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF148
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.4byte	.LASF155
	.byte	0x14
	.byte	0x5
	.byte	0x12
	.4byte	0xf0
	.uleb128 0x9
	.byte	0x8
	.byte	0x15
	.byte	0x8
	.byte	0x9
	.4byte	0x81b
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x15
	.byte	0x9
	.byte	0x9
	.4byte	0x114
	.byte	0
	.uleb128 0x2
	.4byte	.LASF156
	.byte	0x15
	.byte	0xa
	.byte	0x8
	.4byte	0x15d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF157
	.byte	0x15
	.byte	0xb
	.byte	0x3
	.4byte	0x7f7
	.uleb128 0x2c
	.2byte	0x2030
	.byte	0x16
	.byte	0x10
	.4byte	0x8d9
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x16
	.byte	0x11
	.byte	0x6
	.4byte	0xad
	.byte	0
	.uleb128 0x2
	.4byte	.LASF158
	.byte	0x16
	.byte	0x12
	.byte	0x8
	.4byte	0x8d9
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x13
	.byte	0xa
	.4byte	0x8f5
	.2byte	0x1004
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0x15
	.byte	0xb
	.4byte	0xf0
	.2byte	0x2004
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x17
	.byte	0xb
	.4byte	0xd8
	.2byte	0x2008
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x19
	.byte	0x6
	.4byte	0x16d
	.2byte	0x200a
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x1a
	.byte	0xb
	.4byte	0xf0
	.2byte	0x200c
	.uleb128 0x3e
	.ascii	"vbo\000"
	.byte	0x16
	.byte	0x1c
	.byte	0xc
	.4byte	0x81b
	.2byte	0x2010
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x1c
	.byte	0x11
	.4byte	0x81b
	.2byte	0x2018
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x1d
	.byte	0x9
	.4byte	0x114
	.2byte	0x2020
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0x1d
	.byte	0x13
	.4byte	0x114
	.2byte	0x2024
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x1e
	.byte	0xb
	.4byte	0xf0
	.2byte	0x2028
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x1f
	.byte	0x6
	.4byte	0x16d
	.2byte	0x202c
	.byte	0
	.uleb128 0x7
	.4byte	0x6e1
	.4byte	0x8f5
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0xbb
	.4byte	0x911
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF169
	.byte	0x16
	.byte	0x20
	.byte	0x3
	.4byte	0x827
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0x16
	.byte	0x22
	.byte	0xe
	.4byte	0x93d
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF173
	.byte	0x16
	.byte	0x26
	.byte	0x3
	.4byte	0x91d
	.uleb128 0x2d
	.4byte	0x102ac
	.byte	0x16
	.byte	0x28
	.4byte	0xa0c
	.uleb128 0x2
	.4byte	.LASF174
	.byte	0x16
	.byte	0x2a
	.byte	0xb
	.4byte	0xf0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF175
	.byte	0x16
	.byte	0x2b
	.byte	0xb
	.4byte	0xf0
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x16
	.byte	0x2d
	.byte	0xb
	.4byte	0xf0
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x16
	.byte	0x2f
	.byte	0x13
	.4byte	0x93d
	.byte	0xc
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x16
	.byte	0x31
	.byte	0x6
	.4byte	0xad
	.byte	0x10
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x16
	.byte	0x31
	.byte	0x9
	.4byte	0xad
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF178
	.byte	0x16
	.byte	0x32
	.byte	0xa
	.4byte	0xa0c
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF179
	.byte	0x16
	.byte	0x34
	.byte	0xa
	.4byte	0xa1c
	.4byte	0x10198
	.uleb128 0xf
	.4byte	.LASF180
	.byte	0x16
	.byte	0x35
	.byte	0xb
	.4byte	0xf0
	.4byte	0x10298
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0x16
	.byte	0x37
	.byte	0x9
	.4byte	0x114
	.4byte	0x1029c
	.uleb128 0xf
	.4byte	.LASF181
	.byte	0x16
	.byte	0x39
	.byte	0xb
	.4byte	0xf0
	.4byte	0x102a0
	.uleb128 0xf
	.4byte	.LASF168
	.byte	0x16
	.byte	0x3a
	.byte	0x6
	.4byte	0x16d
	.4byte	0x102a4
	.uleb128 0xf
	.4byte	.LASF182
	.byte	0x16
	.byte	0x3c
	.byte	0x6
	.4byte	0xad
	.4byte	0x102a8
	.byte	0
	.uleb128 0x7
	.4byte	0x911
	.4byte	0xa1c
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0xbb
	.4byte	0xa32
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF183
	.byte	0x16
	.byte	0x3d
	.byte	0x3
	.4byte	0x949
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0x17
	.byte	0xd
	.byte	0xe
	.4byte	0xa70
	.uleb128 0x1
	.4byte	.LASF184
	.byte	0
	.uleb128 0x1
	.4byte	.LASF185
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF190
	.byte	0x17
	.byte	0x14
	.byte	0x3
	.4byte	0xa3e
	.uleb128 0x9
	.byte	0xc
	.byte	0x17
	.byte	0x16
	.byte	0x9
	.4byte	0xaad
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x17
	.byte	0x17
	.byte	0x11
	.4byte	0xa70
	.byte	0
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x17
	.byte	0x18
	.byte	0x9
	.4byte	0xaad
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x17
	.byte	0x19
	.byte	0xb
	.4byte	0xf0
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xa32
	.uleb128 0x5
	.4byte	.LASF193
	.byte	0x17
	.byte	0x1a
	.byte	0x3
	.4byte	0xa7c
	.uleb128 0x9
	.byte	0xc
	.byte	0x17
	.byte	0x1d
	.byte	0x2
	.4byte	0xaef
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x17
	.byte	0x1d
	.byte	0x17
	.4byte	0xaef
	.byte	0
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x17
	.byte	0x1d
	.byte	0x21
	.4byte	0xad
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x17
	.byte	0x1d
	.byte	0x29
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xab2
	.uleb128 0x9
	.byte	0x18
	.byte	0x17
	.byte	0x1c
	.byte	0x9
	.4byte	0xb25
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x17
	.byte	0x1d
	.byte	0x35
	.4byte	0xabe
	.byte	0
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x17
	.byte	0x1f
	.byte	0xd
	.4byte	0x1c0
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x17
	.byte	0x20
	.byte	0xc
	.4byte	0x190
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF199
	.byte	0x17
	.byte	0x21
	.byte	0x3
	.4byte	0xaf4
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0x18
	.byte	0x11
	.byte	0xe
	.4byte	0xb5d
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF202
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF205
	.byte	0x18
	.byte	0x11
	.byte	0x71
	.4byte	0xb31
	.uleb128 0x3f
	.byte	0
	.byte	0x18
	.byte	0x18
	.byte	0x3
	.uleb128 0x12
	.byte	0
	.byte	0x18
	.byte	0x17
	.byte	0x2
	.4byte	0xb84
	.uleb128 0x20
	.4byte	.LASF206
	.byte	0x18
	.byte	0x1a
	.byte	0x5
	.4byte	0xb69
	.byte	0
	.uleb128 0x9
	.byte	0x10
	.byte	0x18
	.byte	0x13
	.byte	0x9
	.4byte	0xbb5
	.uleb128 0x2
	.4byte	.LASF207
	.byte	0x18
	.byte	0x14
	.byte	0xb
	.4byte	0xfc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF191
	.byte	0x18
	.byte	0x15
	.byte	0xf
	.4byte	0xb5d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF208
	.byte	0x18
	.byte	0x1b
	.byte	0x4
	.4byte	0xb6e
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF209
	.byte	0x18
	.byte	0x1c
	.byte	0x3
	.4byte	0xb84
	.uleb128 0x9
	.byte	0xc
	.byte	0x18
	.byte	0x2a
	.byte	0x2
	.4byte	0xbf2
	.uleb128 0x2
	.4byte	.LASF93
	.byte	0x18
	.byte	0x2a
	.byte	0x13
	.4byte	0xbf2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF194
	.byte	0x18
	.byte	0x2a
	.byte	0x1d
	.4byte	0xad
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x18
	.byte	0x2a
	.byte	0x25
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xaad
	.uleb128 0x2d
	.4byte	0xb5e278
	.byte	0x18
	.byte	0x1f
	.4byte	0xca1
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0x18
	.byte	0x20
	.byte	0x6
	.4byte	0xad
	.byte	0
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x18
	.byte	0x22
	.byte	0x7
	.4byte	0xca1
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF212
	.byte	0x18
	.byte	0x24
	.byte	0x14
	.4byte	0xbb5
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF213
	.byte	0x18
	.byte	0x26
	.byte	0x6
	.4byte	0xad
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF214
	.byte	0x18
	.byte	0x26
	.byte	0x19
	.4byte	0xad
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x18
	.byte	0x28
	.byte	0x8
	.4byte	0xcb1
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF216
	.byte	0x18
	.byte	0x29
	.byte	0x9
	.4byte	0xcc1
	.4byte	0xb5e118
	.uleb128 0xf
	.4byte	.LASF217
	.byte	0x18
	.byte	0x2a
	.byte	0x31
	.4byte	0xbc1
	.4byte	0xb5e25c
	.uleb128 0xf
	.4byte	.LASF218
	.byte	0x18
	.byte	0x2c
	.byte	0xd
	.4byte	0xcd7
	.4byte	0xb5e268
	.uleb128 0xf
	.4byte	.LASF219
	.byte	0x18
	.byte	0x2e
	.byte	0xd
	.4byte	0x7eb
	.4byte	0xb5e26c
	.uleb128 0xf
	.4byte	.LASF220
	.byte	0x18
	.byte	0x30
	.byte	0x6
	.4byte	0xad
	.4byte	0xb5e270
	.byte	0
	.uleb128 0x7
	.4byte	0x166
	.4byte	0xcb1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0xa32
	.4byte	0xcc1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0xb3
	.byte	0
	.uleb128 0x7
	.4byte	0xaad
	.4byte	0xcd7
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x8
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0xb25
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0x18
	.byte	0x31
	.byte	0x3
	.4byte	0xbf7
	.uleb128 0xe
	.byte	0x1
	.4byte	0x47
	.byte	0x19
	.byte	0xa
	.byte	0x6
	.4byte	0xd02
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x3
	.byte	0x1a
	.byte	0xa
	.byte	0x9
	.4byte	0xd33
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0x1a
	.byte	0xb
	.byte	0x8
	.4byte	0x6e1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0x1a
	.byte	0xc
	.byte	0xa
	.4byte	0xbb
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF226
	.byte	0x1a
	.byte	0xc
	.byte	0x10
	.4byte	0xbb
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF227
	.byte	0x1a
	.byte	0xd
	.byte	0x3
	.4byte	0xd02
	.uleb128 0x9
	.byte	0xc
	.byte	0x1b
	.byte	0x9
	.byte	0x2
	.4byte	0xd6a
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x1b
	.byte	0xa
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x1b
	.byte	0xa
	.byte	0xc
	.4byte	0x26
	.byte	0x4
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x1b
	.byte	0xa
	.byte	0xf
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.byte	0xc
	.byte	0x1b
	.byte	0x7
	.byte	0x9
	.4byte	0xd83
	.uleb128 0x1e
	.ascii	"v\000"
	.byte	0x1b
	.byte	0x8
	.byte	0x8
	.4byte	0x68d
	.uleb128 0x1d
	.4byte	0xd3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x1b
	.byte	0xc
	.byte	0x3
	.4byte	0xd6a
	.uleb128 0x9
	.byte	0x14
	.byte	0x1c
	.byte	0x7
	.byte	0x9
	.4byte	0xdd4
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x1c
	.byte	0x8
	.byte	0x6
	.4byte	0xad
	.byte	0
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x1c
	.byte	0x8
	.byte	0x9
	.4byte	0xad
	.byte	0x4
	.uleb128 0x8
	.ascii	"z\000"
	.byte	0x1c
	.byte	0x8
	.byte	0xc
	.4byte	0xad
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF229
	.byte	0x1c
	.byte	0x9
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF230
	.byte	0x1c
	.byte	0xa
	.byte	0xc
	.4byte	0x6d5
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x1c
	.byte	0xb
	.byte	0x3
	.4byte	0xd8f
	.uleb128 0x2c
	.2byte	0x184
	.byte	0x1d
	.byte	0x15
	.4byte	0xfd7
	.uleb128 0x2
	.4byte	.LASF232
	.byte	0x1d
	.byte	0x16
	.byte	0x9
	.4byte	0xd83
	.byte	0
	.uleb128 0x2
	.4byte	.LASF233
	.byte	0x1d
	.byte	0x17
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x8
	.ascii	"yaw\000"
	.byte	0x1d
	.byte	0x17
	.byte	0xf
	.4byte	0x26
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF234
	.byte	0x1d
	.byte	0x18
	.byte	0x8
	.4byte	0x26
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0x1d
	.byte	0x18
	.byte	0x11
	.4byte	0x26
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF236
	.byte	0x1d
	.byte	0x18
	.byte	0x19
	.4byte	0x26
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF237
	.byte	0x1d
	.byte	0x19
	.byte	0x6
	.4byte	0x16d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF238
	.byte	0x1d
	.byte	0x19
	.byte	0x10
	.4byte	0x16d
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF239
	.byte	0x1d
	.byte	0x19
	.byte	0x18
	.4byte	0x16d
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF240
	.byte	0x1d
	.byte	0x19
	.byte	0x23
	.4byte	0x16d
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x1d
	.byte	0x19
	.byte	0x2b
	.4byte	0x16d
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x1d
	.byte	0x1a
	.byte	0x9
	.4byte	0xfd7
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x1d
	.byte	0x1c
	.byte	0x9
	.4byte	0xd83
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF244
	.byte	0x1d
	.byte	0x1e
	.byte	0x6
	.4byte	0x16d
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF245
	.byte	0x1d
	.byte	0x20
	.byte	0x9
	.4byte	0xd83
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF246
	.byte	0x1d
	.byte	0x21
	.byte	0x8
	.4byte	0x26
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF247
	.byte	0x1d
	.byte	0x23
	.byte	0x8
	.4byte	0x26
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x1d
	.byte	0x24
	.byte	0x6
	.4byte	0xad
	.byte	0x50
	.uleb128 0x8
	.ascii	"hp\000"
	.byte	0x1d
	.byte	0x26
	.byte	0x6
	.4byte	0xad
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF249
	.byte	0x1d
	.byte	0x27
	.byte	0x6
	.4byte	0xad
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x1d
	.byte	0x28
	.byte	0x6
	.4byte	0xad
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x1d
	.byte	0x29
	.byte	0x6
	.4byte	0xad
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF252
	.byte	0x1d
	.byte	0x2a
	.byte	0x6
	.4byte	0xad
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x1d
	.byte	0x2b
	.byte	0x8
	.4byte	0x26
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x1d
	.byte	0x2d
	.byte	0x8
	.4byte	0x26
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF255
	.byte	0x1d
	.byte	0x2e
	.byte	0x8
	.4byte	0x26
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF256
	.byte	0x1d
	.byte	0x2f
	.byte	0x8
	.4byte	0x26
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF257
	.byte	0x1d
	.byte	0x30
	.byte	0x6
	.4byte	0xad
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF258
	.byte	0x1d
	.byte	0x32
	.byte	0x6
	.4byte	0xad
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1d
	.byte	0x33
	.byte	0x6
	.4byte	0x16d
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1d
	.byte	0x35
	.byte	0x6
	.4byte	0xad
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0x1d
	.byte	0x36
	.byte	0x6
	.4byte	0xad
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x1d
	.byte	0x37
	.byte	0x6
	.4byte	0xad
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF263
	.byte	0x1d
	.byte	0x38
	.byte	0xc
	.4byte	0xfdc
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x1d
	.byte	0x3a
	.byte	0x11
	.4byte	0xdd4
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0x1d
	.byte	0x3b
	.byte	0x6
	.4byte	0x16d
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x1d
	.byte	0x3b
	.byte	0x14
	.4byte	0x16d
	.byte	0xc1
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x1d
	.byte	0x3c
	.byte	0xc
	.4byte	0xfec
	.byte	0xc2
	.byte	0
	.uleb128 0xb
	.4byte	0xcdc
	.uleb128 0x7
	.4byte	0xd33
	.4byte	0xfec
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0xd33
	.4byte	0xffc
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF268
	.byte	0x1d
	.byte	0x3d
	.byte	0x3
	.4byte	0xde0
	.uleb128 0x9
	.byte	0x10
	.byte	0x1e
	.byte	0x7
	.byte	0x9
	.4byte	0x1045
	.uleb128 0x8
	.ascii	"xyz\000"
	.byte	0x1e
	.byte	0x8
	.byte	0xa
	.4byte	0x1045
	.byte	0
	.uleb128 0x8
	.ascii	"uv\000"
	.byte	0x1e
	.byte	0x9
	.byte	0xa
	.4byte	0x1055
	.byte	0x6
	.uleb128 0x8
	.ascii	"rgb\000"
	.byte	0x1e
	.byte	0xa
	.byte	0xa
	.4byte	0x1065
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x1e
	.byte	0xb
	.byte	0xa
	.4byte	0x1065
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0xc7
	.4byte	0x1055
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0xc7
	.4byte	0x1065
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0xbb
	.4byte	0x1075
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF270
	.byte	0x1e
	.byte	0xc
	.byte	0x3
	.4byte	0x1008
	.uleb128 0x16
	.4byte	0x1075
	.uleb128 0x13
	.4byte	.LASF271
	.byte	0xa
	.byte	0x15
	.4byte	0x1097
	.uleb128 0x5
	.byte	0x3
	.4byte	handVBO
	.uleb128 0xb
	.4byte	0x1075
	.uleb128 0x13
	.4byte	.LASF272
	.byte	0xb
	.byte	0x10
	.4byte	0x681
	.uleb128 0x5
	.byte	0x3
	.4byte	SkinTexture
	.uleb128 0x7
	.4byte	0x1081
	.4byte	0x10bd
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x23
	.byte	0
	.uleb128 0x16
	.4byte	0x10ad
	.uleb128 0x26
	.4byte	.LASF273
	.byte	0x1
	.byte	0xd
	.byte	0x1a
	.4byte	0x10bd
	.uleb128 0x21
	.4byte	.LASF274
	.byte	0x1f
	.byte	0x21
	.byte	0x8
	.4byte	0x15d
	.4byte	0x10ee
	.uleb128 0x4
	.4byte	0x15d
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x114
	.byte	0
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0x20
	.byte	0x17
	.4byte	0x1109
	.uleb128 0x4
	.4byte	0x329
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0xad
	.byte	0
	.uleb128 0x21
	.4byte	.LASF275
	.byte	0x10
	.byte	0x12
	.byte	0x5
	.4byte	0xad
	.4byte	0x1133
	.uleb128 0x4
	.4byte	0x1133
	.uleb128 0x4
	.4byte	0x1d1
	.uleb128 0x4
	.4byte	0x108
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x147
	.byte	0
	.uleb128 0xb
	.4byte	0x53e
	.uleb128 0x11
	.4byte	.LASF277
	.byte	0x10
	.byte	0x11
	.4byte	0x1149
	.uleb128 0x4
	.4byte	0x1133
	.byte	0
	.uleb128 0x40
	.4byte	.LASF318
	.byte	0x10
	.byte	0x14
	.byte	0xe
	.4byte	0x1133
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0x21
	.byte	0xb
	.4byte	0x1170
	.uleb128 0x4
	.4byte	0x16d
	.uleb128 0x4
	.4byte	0x2f5
	.uleb128 0x4
	.4byte	0xad
	.byte	0
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0x11
	.byte	0x39
	.4byte	0x1186
	.uleb128 0x4
	.4byte	0xad
	.uleb128 0x4
	.4byte	0x1186
	.byte	0
	.uleb128 0xb
	.4byte	0x681
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0x13
	.byte	0x3b
	.4byte	0x11ab
	.uleb128 0x4
	.4byte	0x6e1
	.uleb128 0x4
	.4byte	0xbb
	.uleb128 0x4
	.4byte	0x6d5
	.uleb128 0x4
	.4byte	0x11ab
	.byte	0
	.uleb128 0xb
	.4byte	0xbb
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0x13
	.byte	0x39
	.4byte	0x11d0
	.uleb128 0x4
	.4byte	0x6e1
	.uleb128 0x4
	.4byte	0x6d5
	.uleb128 0x4
	.4byte	0xbb
	.uleb128 0x4
	.4byte	0x11d0
	.byte	0
	.uleb128 0xb
	.4byte	0xc7
	.uleb128 0x21
	.4byte	.LASF282
	.byte	0x1f
	.byte	0x1f
	.byte	0x8
	.4byte	0x15d
	.4byte	0x11f5
	.uleb128 0x4
	.4byte	0x15d
	.uleb128 0x4
	.4byte	0x1d1
	.uleb128 0x4
	.4byte	0x114
	.byte	0
	.uleb128 0x17
	.4byte	.LASF283
	.2byte	0x16a
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x1215
	.uleb128 0x4
	.4byte	0x1215
	.byte	0
	.uleb128 0xb
	.4byte	0x478
	.uleb128 0xb
	.4byte	0x484
	.uleb128 0x17
	.4byte	.LASF284
	.2byte	0x1b2
	.4byte	0x123a
	.uleb128 0x4
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x17
	.4byte	.LASF285
	.2byte	0x1d3
	.4byte	0x1255
	.uleb128 0x4
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x16d
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF286
	.2byte	0x163
	.4byte	0x26
	.4byte	0x126a
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x17
	.4byte	.LASF287
	.2byte	0x1cb
	.4byte	0x1285
	.uleb128 0x4
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x16d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF288
	.2byte	0x1c3
	.4byte	0x12a0
	.uleb128 0x4
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x16d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF289
	.2byte	0x1a9
	.4byte	0x12c5
	.uleb128 0x4
	.4byte	0x1210
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x16d
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF290
	.2byte	0x164
	.4byte	0x26
	.4byte	0x12da
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0x11
	.byte	0x3b
	.4byte	0x12eb
	.uleb128 0x4
	.4byte	0x1186
	.byte	0
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0x23
	.byte	0x29
	.4byte	0x12fc
	.uleb128 0x4
	.4byte	0x15d
	.byte	0
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0x24
	.byte	0x6
	.4byte	0x1312
	.uleb128 0x4
	.4byte	0x1186
	.uleb128 0x4
	.4byte	0x1cc
	.byte	0
	.uleb128 0x21
	.4byte	.LASF294
	.byte	0x23
	.byte	0xc
	.byte	0x7
	.4byte	0x15d
	.4byte	0x1328
	.uleb128 0x4
	.4byte	0x114
	.byte	0
	.uleb128 0x41
	.4byte	.LASF319
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1958
	.uleb128 0x22
	.4byte	.LASF295
	.byte	0x14
	.4byte	0xad
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x22
	.4byte	.LASF296
	.byte	0x2a
	.4byte	0x1210
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF297
	.byte	0x40
	.4byte	0xd33
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	.LASF298
	.byte	0x4f
	.4byte	0x1958
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x42
	.ascii	"pm\000"
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.4byte	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x13
	.4byte	.LASF299
	.byte	0x1b
	.byte	0xa
	.4byte	0x478
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.4byte	.LASF300
	.byte	0x67
	.byte	0xf
	.4byte	0x1133
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x30
	.4byte	.LBB104
	.4byte	.LBE104-.LBB104
	.4byte	0x1469
	.uleb128 0x2f
	.4byte	.LASF301
	.byte	0x22
	.byte	0x9
	.4byte	0x26
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x18
	.ascii	"h\000"
	.byte	0x23
	.byte	0x9
	.4byte	0x26
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0xa
	.4byte	.LVL52
	.4byte	0x12c5
	.4byte	0x13fe
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0
	.uleb128 0x23
	.4byte	.LVL54
	.4byte	0x1255
	.uleb128 0xa
	.4byte	.LVL58
	.4byte	0x1285
	.4byte	0x1429
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL59
	.4byte	0x12a0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x8
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.byte	0x1f
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0x1e
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0xb
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x26
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3e800000
	.byte	0x1e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LLRL25
	.4byte	0x15da
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x2f
	.byte	0xb
	.4byte	0xad
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x24
	.4byte	.LLRL27
	.4byte	0x1526
	.uleb128 0x13
	.4byte	.LASF302
	.byte	0x31
	.byte	0xc
	.4byte	0x1055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x13
	.4byte	.LASF303
	.byte	0x32
	.byte	0xc
	.4byte	0x1065
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x24
	.4byte	.LLRL28
	.4byte	0x14d7
	.uleb128 0x18
	.ascii	"j\000"
	.byte	0x39
	.byte	0xd
	.4byte	0xad
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x19
	.4byte	.LLRL30
	.uleb128 0x14
	.ascii	"idx\000"
	.byte	0x1
	.byte	0x3a
	.byte	0x9
	.4byte	0xad
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL26
	.4byte	0x11b0
	.4byte	0x1500
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x53
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x54
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL27
	.4byte	0x118b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x53
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x54
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
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LLRL31
	.4byte	0x158a
	.uleb128 0x13
	.4byte	.LASF304
	.byte	0x48
	.byte	0x13
	.4byte	0x197f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x19
	.4byte	.LLRL32
	.uleb128 0x18
	.ascii	"j\000"
	.byte	0x4b
	.byte	0xe
	.4byte	0xad
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x19
	.4byte	.LLRL34
	.uleb128 0x14
	.ascii	"idx\000"
	.byte	0x1
	.byte	0x4c
	.byte	0xa
	.4byte	0xad
	.uleb128 0x18
	.ascii	"u\000"
	.byte	0x4d
	.byte	0xa
	.4byte	0xad
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x18
	.ascii	"v\000"
	.byte	0x4e
	.byte	0xa
	.4byte	0xad
	.4byte	.LLST36
	.4byte	.LVUS36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.4byte	0x15c3
	.uleb128 0x14
	.ascii	"j\000"
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	0xad
	.uleb128 0x19
	.4byte	.LLRL37
	.uleb128 0x14
	.ascii	"idx\000"
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0xad
	.uleb128 0x13
	.4byte	.LASF305
	.byte	0x56
	.byte	0x13
	.4byte	0x199a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL42
	.4byte	0x1170
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x1ace
	.4byte	.LBI46
	.byte	.LVU28
	.4byte	.LLRL5
	.byte	0x1c
	.4byte	0x1687
	.uleb128 0xd
	.4byte	0x1ad9
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x32
	.4byte	0x1ae6
	.4byte	.LBI47
	.byte	.LVU30
	.4byte	.LLRL5
	.2byte	0x141
	.uleb128 0xd
	.4byte	0x1b1b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xd
	.4byte	0x1b11
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xd
	.4byte	0x1b07
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xd
	.4byte	0x1afd
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xd
	.4byte	0x1af1
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x32
	.4byte	0x1b26
	.4byte	.LBI49
	.byte	.LVU32
	.4byte	.LLRL12
	.2byte	0x134
	.uleb128 0xd
	.4byte	0x1b31
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1f
	.4byte	.LVL9
	.4byte	0x1b3e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x1a16
	.4byte	.LBI64
	.byte	.LVU84
	.4byte	.LLRL14
	.byte	0x2c
	.4byte	0x174f
	.uleb128 0xd
	.4byte	0x1a35
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xd
	.4byte	0x1a2b
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xd
	.4byte	0x1a20
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x43
	.4byte	0x1a41
	.4byte	.LBI65
	.byte	.LVU86
	.4byte	.LLRL14
	.byte	0x3
	.byte	0x28
	.byte	0x2
	.uleb128 0xd
	.4byte	0x1a4b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xd
	.4byte	0x1a6b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xd
	.4byte	0x1a60
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xd
	.4byte	0x1a56
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x19
	.4byte	.LLRL14
	.uleb128 0x33
	.4byte	0x1a76
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x44
	.4byte	0x1a80
	.uleb128 0x45
	.4byte	0x1a92
	.4byte	.LLRL23
	.byte	0x3
	.byte	0x21
	.byte	0x12
	.uleb128 0x28
	.4byte	0x1ab8
	.uleb128 0x28
	.4byte	0x1aae
	.uleb128 0x28
	.4byte	0x1aa3
	.uleb128 0x19
	.4byte	.LLRL23
	.uleb128 0x33
	.4byte	0x1ac3
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LVL11
	.4byte	0x12c5
	.uleb128 0xa
	.4byte	.LVL12
	.4byte	0x12a0
	.4byte	0x177e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbfcccccd
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.4byte	.LVL13
	.4byte	0x12a0
	.4byte	0x17a4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbf99999a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.4byte	.LVL14
	.4byte	0x1285
	.4byte	0x17be
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.4byte	.LVL15
	.4byte	0x126a
	.4byte	0x17e4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3e32b8c2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.4byte	.LVL16
	.4byte	0x121a
	.4byte	0x1811
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3e8f5c29
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3e8f5c29
	.byte	0
	.uleb128 0xa
	.4byte	.LVL17
	.4byte	0x11f5
	.4byte	0x1833
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0xa
	.4byte	.LVL25
	.4byte	0x1b47
	.4byte	0x1848
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x240
	.byte	0
	.uleb128 0xa
	.4byte	.LVL30
	.4byte	0x1155
	.4byte	0x1866
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x23
	.4byte	.LVL31
	.4byte	0x1149
	.uleb128 0xa
	.4byte	.LVL33
	.4byte	0x1138
	.4byte	0x1883
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL34
	.4byte	0x1109
	.4byte	0x18a9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x8
	.uleb128 0x2d
	.byte	0
	.uleb128 0xa
	.4byte	.LVL35
	.4byte	0x10ee
	.4byte	0x18c9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.4byte	.LVL36
	.4byte	0x1155
	.4byte	0x18e9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
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
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL39
	.4byte	0x12a0
	.4byte	0x190f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbfcccccd
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xa
	.4byte	.LVL40
	.4byte	0x12a0
	.4byte	0x1935
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbf99999a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL61
	.4byte	0x123a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3f32b8c2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0xffc
	.uleb128 0x7
	.4byte	0xd3
	.4byte	0x197f
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	0x195d
	.uleb128 0x7
	.4byte	0xd3
	.4byte	0x199a
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x5
	.uleb128 0x6
	.4byte	0xb4
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	0x1984
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x14
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19d0
	.uleb128 0x23
	.4byte	.LVL2
	.4byte	0x12eb
	.uleb128 0x35
	.4byte	.LVL3
	.4byte	0x12da
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF307
	.byte	0xf
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a16
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x1312
	.4byte	0x19f9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x240
	.byte	0
	.uleb128 0x35
	.4byte	.LVL1
	.4byte	0x12fc
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF308
	.byte	0x26
	.4byte	0x1a41
	.uleb128 0x25
	.4byte	.LASF191
	.byte	0x26
	.byte	0x35
	.4byte	0x34d
	.uleb128 0x1a
	.ascii	"id\000"
	.byte	0x26
	.byte	0x3f
	.4byte	0xad
	.uleb128 0x1a
	.ascii	"mtx\000"
	.byte	0x26
	.byte	0x52
	.4byte	0x1215
	.byte	0
	.uleb128 0x36
	.4byte	.LASF309
	.byte	0x1e
	.4byte	0x1a8d
	.uleb128 0x25
	.4byte	.LASF191
	.byte	0x1e
	.byte	0x35
	.4byte	0x34d
	.uleb128 0x1a
	.ascii	"id\000"
	.byte	0x1e
	.byte	0x3f
	.4byte	0xad
	.uleb128 0x1a
	.ascii	"mtx\000"
	.byte	0x1e
	.byte	0x52
	.4byte	0x1215
	.uleb128 0x1a
	.ascii	"num\000"
	.byte	0x1e
	.byte	0x5b
	.4byte	0xad
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x3
	.byte	0x20
	.byte	0x6
	.4byte	0xad
	.uleb128 0x14
	.ascii	"ptr\000"
	.byte	0x3
	.byte	0x21
	.byte	0xc
	.4byte	0x1a8d
	.byte	0
	.uleb128 0xb
	.4byte	0x42e
	.uleb128 0x46
	.4byte	.LASF320
	.byte	0x3
	.byte	0xf
	.byte	0x19
	.4byte	0x1a8d
	.byte	0x3
	.4byte	0x1ace
	.uleb128 0x25
	.4byte	.LASF191
	.byte	0xf
	.byte	0x3c
	.4byte	0x34d
	.uleb128 0x1a
	.ascii	"id\000"
	.byte	0xf
	.byte	0x46
	.4byte	0xad
	.uleb128 0x25
	.4byte	.LASF102
	.byte	0xf
	.byte	0x4e
	.4byte	0xad
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x3
	.byte	0x11
	.byte	0x6
	.4byte	0xad
	.byte	0
	.uleb128 0x29
	.4byte	.LASF310
	.2byte	0x13f
	.4byte	0x1ae6
	.uleb128 0x15
	.ascii	"out\000"
	.2byte	0x13f
	.byte	0x2a
	.4byte	0x1210
	.byte	0
	.uleb128 0x29
	.4byte	.LASF311
	.2byte	0x132
	.4byte	0x1b26
	.uleb128 0x15
	.ascii	"out\000"
	.2byte	0x132
	.byte	0x2a
	.4byte	0x1210
	.uleb128 0x15
	.ascii	"x\000"
	.2byte	0x132
	.byte	0x35
	.4byte	0x26
	.uleb128 0x15
	.ascii	"y\000"
	.2byte	0x132
	.byte	0x3e
	.4byte	0x26
	.uleb128 0x15
	.ascii	"z\000"
	.2byte	0x132
	.byte	0x47
	.4byte	0x26
	.uleb128 0x15
	.ascii	"w\000"
	.2byte	0x132
	.byte	0x50
	.4byte	0x26
	.byte	0
	.uleb128 0x29
	.4byte	.LASF312
	.2byte	0x11b
	.4byte	0x1b3e
	.uleb128 0x15
	.ascii	"out\000"
	.2byte	0x11b
	.byte	0x27
	.4byte	0x1210
	.byte	0
	.uleb128 0x37
	.4byte	.LASF274
	.4byte	.LASF313
	.uleb128 0x37
	.4byte	.LASF282
	.4byte	.LASF314
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 22
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 25
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
	.uleb128 0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 34
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.sleb128 2
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x21
	.sleb128 37
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL9-1-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-1-.LVL4
	.uleb128 .LVL25-.LVL4
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL25-.LVL4
	.uleb128 .LVL38-.LVL4
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL4
	.uleb128 .LVL41-.LVL4
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL41-.LVL4
	.uleb128 .LVL51-.LVL4
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL4
	.uleb128 .LFE226-.LVL4
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL7-.LVL4
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL7-.LVL4
	.uleb128 .LVL23-.LVL4
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL23-.LVL4
	.uleb128 .LVL38-.LVL4
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL4
	.uleb128 .LVL41-.LVL4
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL41-.LVL4
	.uleb128 .LVL51-.LVL4
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL4
	.uleb128 .LFE226-.LVL4
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS2:
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL8-.LVL6
	.uleb128 0x5
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.uleb128 .LVL8-.LVL6
	.uleb128 .LVL9-1-.LVL6
	.uleb128 0x9
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL9-1-.LVL6
	.uleb128 .LVL25-.LVL6
	.uleb128 0xa
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL25-.LVL6
	.uleb128 .LVL37-.LVL6
	.uleb128 0xb
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL37-.LVL6
	.uleb128 .LVL38-.LVL6
	.uleb128 0x9
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL38-.LVL6
	.uleb128 .LVL41-.LVL6
	.uleb128 0xa
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL41-.LVL6
	.uleb128 .LVL51-.LVL6
	.uleb128 0xb
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL51-.LVL6
	.uleb128 .LFE226-.LVL6
	.uleb128 0xa
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-.LVL4
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL5-.LVL4
	.uleb128 .LVL24-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL24-.LVL4
	.uleb128 .LVL38-.LVL4
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL38-.LVL4
	.uleb128 .LVL41-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL41-.LVL4
	.uleb128 .LVL51-.LVL4
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.LVL4
	.uleb128 .LFE226-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS4:
	.uleb128 .LVU171
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU179
.LLST4:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-1-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-1-.LVL32
	.uleb128 .LVL38-.LVL32
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS38:
	.uleb128 .LVU249
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU252
.LLST38:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL54-1-.LVL53
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4f
	.byte	0x4
	.uleb128 .LVL54-1-.LVL53
	.uleb128 .LVL55-.LVL53
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS39:
	.uleb128 .LVU253
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 .LVU260
.LLST39:
	.byte	0x6
	.4byte	.LVL56
	.byte	0x4
	.uleb128 .LVL56-.LVL56
	.uleb128 .LVL57-.LVL56
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL57-.LVL56
	.uleb128 .LVL60-.LVL56
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x51
	.byte	0
.LVUS26:
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU179
	.uleb128 .LVU187
	.uleb128 .LVU237
.LLST26:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL25-.LVL25
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL38-.LVL25
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL41-.LVL25
	.uleb128 .LVL51-.LVL25
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS29:
	.uleb128 .LVU133
	.uleb128 .LVU141
.LLST29:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU216
	.uleb128 .LVU218
.LLST33:
	.byte	0x8
	.4byte	.LVL43
	.uleb128 .LVL44-.LVL43
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU222
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU229
.LLST35:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL47-.LVL45
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL47-.LVL45
	.uleb128 .LVL48-.LVL45
	.uleb128 0x9
	.byte	0x7c
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU223
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU234
.LLST36:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-.LVL45
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL46-.LVL45
	.uleb128 .LVL49-.LVL45
	.uleb128 0x9
	.byte	0x7c
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.LVL45
	.uleb128 .LVL50-.LVL45
	.uleb128 0x9
	.byte	0x7c
	.sleb128 -8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 .LVU28
	.uleb128 .LVU45
.LLST6:
	.byte	0x8
	.4byte	.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU30
	.uleb128 .LVU45
.LLST7:
	.byte	0x8
	.4byte	.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS11:
	.uleb128 .LVU30
	.uleb128 .LVU45
.LLST11:
	.byte	0x8
	.4byte	.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU32
	.uleb128 .LVU34
.LLST13:
	.byte	0x8
	.4byte	.LVL8
	.uleb128 .LVL9-.LVL8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x9f
	.byte	0
.LVUS15:
	.uleb128 .LVU84
	.uleb128 .LVU114
.LLST15:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU84
	.uleb128 .LVU114
.LLST16:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS17:
	.uleb128 .LVU84
	.uleb128 .LVU114
.LLST17:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU87
	.uleb128 .LVU114
.LLST18:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU87
	.uleb128 .LVU114
.LLST19:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU86
	.uleb128 .LVU114
.LLST20:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x4
	.byte	0x91
	.sleb128 -200
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU86
	.uleb128 .LVU114
.LLST21:
	.byte	0x8
	.4byte	.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS22:
	.uleb128 .LVU110
	.uleb128 .LVU114
.LLST22:
	.byte	0x8
	.4byte	.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU87
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU108
.LLST24:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL20-.LVL17
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL20-.LVL17
	.uleb128 .LVL21-.LVL17
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL17
	.uleb128 .LVL21-.LVL17
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
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
.LLRL5:
	.byte	0x5
	.4byte	.LBB46
	.byte	0x4
	.uleb128 .LBB46-.LBB46
	.uleb128 .LBE46-.LBB46
	.byte	0x4
	.uleb128 .LBB61-.LBB46
	.uleb128 .LBE61-.LBB46
	.byte	0x4
	.uleb128 .LBB62-.LBB46
	.uleb128 .LBE62-.LBB46
	.byte	0x4
	.uleb128 .LBB63-.LBB46
	.uleb128 .LBE63-.LBB46
	.byte	0
.LLRL12:
	.byte	0x5
	.4byte	.LBB49
	.byte	0x4
	.uleb128 .LBB49-.LBB49
	.uleb128 .LBE49-.LBB49
	.byte	0x4
	.uleb128 .LBB53-.LBB49
	.uleb128 .LBE53-.LBB49
	.byte	0x4
	.uleb128 .LBB54-.LBB49
	.uleb128 .LBE54-.LBB49
	.byte	0
.LLRL14:
	.byte	0x5
	.4byte	.LBB64
	.byte	0x4
	.uleb128 .LBB64-.LBB64
	.uleb128 .LBE64-.LBB64
	.byte	0x4
	.uleb128 .LBB75-.LBB64
	.uleb128 .LBE75-.LBB64
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB67
	.byte	0x4
	.uleb128 .LBB67-.LBB67
	.uleb128 .LBE67-.LBB67
	.byte	0x4
	.uleb128 .LBB71-.LBB67
	.uleb128 .LBE71-.LBB67
	.byte	0x4
	.uleb128 .LBB72-.LBB67
	.uleb128 .LBE72-.LBB67
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB76
	.byte	0x4
	.uleb128 .LBB76-.LBB76
	.uleb128 .LBE76-.LBB76
	.byte	0x4
	.uleb128 .LBB101-.LBB76
	.uleb128 .LBE101-.LBB76
	.byte	0x4
	.uleb128 .LBB102-.LBB76
	.uleb128 .LBE102-.LBB76
	.byte	0x4
	.uleb128 .LBB103-.LBB76
	.uleb128 .LBE103-.LBB76
	.byte	0
.LLRL27:
	.byte	0x5
	.4byte	.LBB77
	.byte	0x4
	.uleb128 .LBB77-.LBB77
	.uleb128 .LBE77-.LBB77
	.byte	0x4
	.uleb128 .LBB84-.LBB77
	.uleb128 .LBE84-.LBB77
	.byte	0
.LLRL28:
	.byte	0x5
	.4byte	.LBB78
	.byte	0x4
	.uleb128 .LBB78-.LBB78
	.uleb128 .LBE78-.LBB78
	.byte	0x4
	.uleb128 .LBB83-.LBB78
	.uleb128 .LBE83-.LBB78
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB79
	.byte	0x4
	.uleb128 .LBB79-.LBB79
	.uleb128 .LBE79-.LBB79
	.byte	0x4
	.uleb128 .LBB80-.LBB79
	.uleb128 .LBE80-.LBB79
	.byte	0x4
	.uleb128 .LBB81-.LBB79
	.uleb128 .LBE81-.LBB79
	.byte	0x4
	.uleb128 .LBB82-.LBB79
	.uleb128 .LBE82-.LBB79
	.byte	0
.LLRL31:
	.byte	0x5
	.4byte	.LBB85
	.byte	0x4
	.uleb128 .LBB85-.LBB85
	.uleb128 .LBE85-.LBB85
	.byte	0x4
	.uleb128 .LBB100-.LBB85
	.uleb128 .LBE100-.LBB85
	.byte	0
.LLRL32:
	.byte	0x5
	.4byte	.LBB86
	.byte	0x4
	.uleb128 .LBB86-.LBB86
	.uleb128 .LBE86-.LBB86
	.byte	0x4
	.uleb128 .LBB92-.LBB86
	.uleb128 .LBE92-.LBB86
	.byte	0x4
	.uleb128 .LBB93-.LBB86
	.uleb128 .LBE93-.LBB86
	.byte	0x4
	.uleb128 .LBB94-.LBB86
	.uleb128 .LBE94-.LBB86
	.byte	0x4
	.uleb128 .LBB95-.LBB86
	.uleb128 .LBE95-.LBB86
	.byte	0
.LLRL34:
	.byte	0x5
	.4byte	.LBB87
	.byte	0x4
	.uleb128 .LBB87-.LBB87
	.uleb128 .LBE87-.LBB87
	.byte	0x4
	.uleb128 .LBB88-.LBB87
	.uleb128 .LBE88-.LBB87
	.byte	0x4
	.uleb128 .LBB89-.LBB87
	.uleb128 .LBE89-.LBB87
	.byte	0x4
	.uleb128 .LBB90-.LBB87
	.uleb128 .LBE90-.LBB87
	.byte	0x4
	.uleb128 .LBB91-.LBB87
	.uleb128 .LBE91-.LBB87
	.byte	0
.LLRL37:
	.byte	0x5
	.4byte	.LBB97
	.byte	0x4
	.uleb128 .LBB97-.LBB97
	.uleb128 .LBE97-.LBB97
	.byte	0x4
	.uleb128 .LBB98-.LBB97
	.uleb128 .LBE98-.LBB97
	.byte	0x4
	.uleb128 .LBB99-.LBB97
	.uleb128 .LBE99-.LBB97
	.byte	0
.LLRL40:
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0x7
	.4byte	.LFB225
	.uleb128 .LFE225-.LFB225
	.byte	0x7
	.4byte	.LFB226
	.uleb128 .LFE226-.LFB226
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF230:
	.ascii	"direction\000"
.LASF164:
	.ascii	"transparentVBO\000"
.LASF42:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF263:
	.ascii	"quickSelectBar\000"
.LASF72:
	.ascii	"GPU_GEOMETRY_PRIM\000"
.LASF153:
	.ascii	"Block_Furnace\000"
.LASF193:
	.ascii	"WorkerItem\000"
.LASF46:
	.ascii	"GPU_RGB8\000"
.LASF195:
	.ascii	"capacity\000"
.LASF152:
	.ascii	"Block_Emerald_Block\000"
.LASF226:
	.ascii	"amount\000"
.LASF311:
	.ascii	"Mtx_Diagonal\000"
.LASF87:
	.ascii	"flags\000"
.LASF271:
	.ascii	"handVBO\000"
.LASF134:
	.ascii	"Block_Snow\000"
.LASF269:
	.ascii	"fxyz\000"
.LASF138:
	.ascii	"Block_Smooth_Stone\000"
.LASF112:
	.ascii	"Direction_Invalid\000"
.LASF221:
	.ascii	"World\000"
.LASF235:
	.ascii	"fovAdd\000"
.LASF15:
	.ascii	"unsigned int\000"
.LASF197:
	.ascii	"itemAddedEvent\000"
.LASF205:
	.ascii	"WorldGenType\000"
.LASF304:
	.ascii	"uvRotationTable\000"
.LASF126:
	.ascii	"Block_Brick\000"
.LASF121:
	.ascii	"Block_Log\000"
.LASF40:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF155:
	.ascii	"Xorshift32\000"
.LASF99:
	.ascii	"maxLevel\000"
.LASF320:
	.ascii	"C3D_FVUnifWritePtr\000"
.LASF229:
	.ascii	"distSqr\000"
.LASF135:
	.ascii	"Block_Obsidian\000"
.LASF140:
	.ascii	"Block_Grass_Path\000"
.LASF83:
	.ascii	"C3D_Mtx\000"
.LASF179:
	.ascii	"heightmap\000"
.LASF94:
	.ascii	"C3D_TexCube\000"
.LASF270:
	.ascii	"WorldVertex\000"
.LASF89:
	.ascii	"base_paddr\000"
.LASF100:
	.ascii	"minLevel\000"
.LASF62:
	.ascii	"GPU_EQUAL\000"
.LASF33:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF312:
	.ascii	"Mtx_Zeros\000"
.LASF252:
	.ascii	"difficulty\000"
.LASF173:
	.ascii	"ChunkGenProgress\000"
.LASF314:
	.ascii	"__builtin_memcpy\000"
.LASF44:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF288:
	.ascii	"Mtx_RotateX\000"
.LASF287:
	.ascii	"Mtx_RotateY\000"
.LASF285:
	.ascii	"Mtx_RotateZ\000"
.LASF110:
	.ascii	"Direction_North\000"
.LASF280:
	.ascii	"Block_GetColor\000"
.LASF266:
	.ascii	"blockInActionRange\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF74:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF158:
	.ascii	"blocks\000"
.LASF310:
	.ascii	"Mtx_Identity\000"
.LASF192:
	.ascii	"chunk\000"
.LASF305:
	.ascii	"uvLookUp\000"
.LASF168:
	.ascii	"forceVBOUpdate\000"
.LASF73:
	.ascii	"GPU_Primitive_t\000"
.LASF273:
	.ascii	"cube_sides_lut\000"
.LASF20:
	.ascii	"uint32_t\000"
.LASF79:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF317:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF54:
	.ascii	"GPU_LA4\000"
.LASF21:
	.ascii	"uint64_t\000"
.LASF50:
	.ascii	"GPU_LA8\000"
.LASF157:
	.ascii	"VBO_Block\000"
.LASF267:
	.ascii	"inventory\000"
.LASF225:
	.ascii	"meta\000"
.LASF43:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF118:
	.ascii	"Block_Grass\000"
.LASF249:
	.ascii	"armour\000"
.LASF17:
	.ascii	"int16_t\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF250:
	.ascii	"oxygen\000"
.LASF233:
	.ascii	"pitch\000"
.LASF213:
	.ascii	"cacheTranslationX\000"
.LASF214:
	.ascii	"cacheTranslationZ\000"
.LASF260:
	.ascii	"quickSelectBarSlots\000"
.LASF132:
	.ascii	"Block_Door_Bottom\000"
.LASF49:
	.ascii	"GPU_RGBA4\000"
.LASF45:
	.ascii	"GPU_RGBA8\000"
.LASF104:
	.ascii	"border\000"
.LASF200:
	.ascii	"WorldGen_Smea\000"
.LASF294:
	.ascii	"linearAlloc\000"
.LASF293:
	.ascii	"Texture_Load\000"
.LASF56:
	.ascii	"GPU_A4\000"
.LASF223:
	.ascii	"Items_Count\000"
.LASF313:
	.ascii	"__builtin_memset\000"
.LASF142:
	.ascii	"Block_Lava\000"
.LASF258:
	.ascii	"gamemode\000"
.LASF38:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF98:
	.ascii	"lodBias\000"
.LASF23:
	.ascii	"size_t\000"
.LASF154:
	.ascii	"Blocks_Count\000"
.LASF10:
	.ascii	"long int\000"
.LASF97:
	.ascii	"width\000"
.LASF86:
	.ascii	"offset\000"
.LASF183:
	.ascii	"Chunk\000"
.LASF27:
	.ascii	"_Bool\000"
.LASF185:
	.ascii	"WorkerItemType_Save\000"
.LASF115:
	.ascii	"Block_Air\000"
.LASF318:
	.ascii	"C3D_GetBufInfo\000"
.LASF176:
	.ascii	"uuid\000"
.LASF14:
	.ascii	"__uint64_t\000"
.LASF281:
	.ascii	"Block_GetTexture\000"
.LASF218:
	.ascii	"workqueue\000"
.LASF298:
	.ascii	"player\000"
.LASF239:
	.ascii	"sprinting\000"
.LASF219:
	.ascii	"randomTickGen\000"
.LASF131:
	.ascii	"Block_Door_Top\000"
.LASF240:
	.ascii	"flying\000"
.LASF127:
	.ascii	"Block_Planks\000"
.LASF55:
	.ascii	"GPU_L4\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF136:
	.ascii	"Block_Netherrack\000"
.LASF52:
	.ascii	"GPU_L8\000"
.LASF208:
	.ascii	"settings\000"
.LASF70:
	.ascii	"GPU_TRIANGLE_STRIP\000"
.LASF149:
	.ascii	"Block_Diamond_Block\000"
.LASF145:
	.ascii	"Block_Diamond_Ore\000"
.LASF299:
	.ascii	"model\000"
.LASF222:
	.ascii	"Item_Totem\000"
.LASF261:
	.ascii	"quickSelectBarSlot\000"
.LASF116:
	.ascii	"Block_Stone\000"
.LASF26:
	.ascii	"char\000"
.LASF29:
	.ascii	"LightLock\000"
.LASF37:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF186:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF36:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF22:
	.ascii	"ptrdiff_t\000"
.LASF160:
	.ascii	"revision\000"
.LASF180:
	.ascii	"heightmapRevision\000"
.LASF212:
	.ascii	"genSettings\000"
.LASF93:
	.ascii	"data\000"
.LASF306:
	.ascii	"Hand_Deinit\000"
.LASF32:
	.ascii	"LightEvent\000"
.LASF172:
	.ascii	"ChunkGen_Finished\000"
.LASF16:
	.ascii	"uint8_t\000"
.LASF236:
	.ascii	"crouchAdd\000"
.LASF264:
	.ascii	"viewRayCast\000"
.LASF151:
	.ascii	"Block_Iron_Block\000"
.LASF307:
	.ascii	"Hand_Init\000"
.LASF174:
	.ascii	"tasksRunning\000"
.LASF289:
	.ascii	"Mtx_Translate\000"
.LASF210:
	.ascii	"HighestBlock\000"
.LASF284:
	.ascii	"Mtx_Scale\000"
.LASF34:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF109:
	.ascii	"Direction_Top\000"
.LASF189:
	.ascii	"WorkerItemTypes_Count\000"
.LASF148:
	.ascii	"Block_Gold_Block\000"
.LASF248:
	.ascii	"hungertimer\000"
.LASF13:
	.ascii	"long long int\000"
.LASF48:
	.ascii	"GPU_RGB565\000"
.LASF147:
	.ascii	"Block_Emerald_Ore\000"
.LASF316:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/rendering/"
	.ascii	"Hand.c\000"
.LASF31:
	.ascii	"lock\000"
.LASF262:
	.ascii	"inventorySite\000"
.LASF47:
	.ascii	"GPU_RGBA5551\000"
.LASF204:
	.ascii	"WorldGenTypes_Count\000"
.LASF90:
	.ascii	"bufCount\000"
.LASF215:
	.ascii	"chunkPool\000"
.LASF82:
	.ascii	"C3D_FVec\000"
.LASF296:
	.ascii	"projection\000"
.LASF292:
	.ascii	"linearFree\000"
.LASF103:
	.ascii	"param\000"
.LASF253:
	.ascii	"rndy\000"
.LASF274:
	.ascii	"memset\000"
.LASF71:
	.ascii	"GPU_TRIANGLE_FAN\000"
.LASF206:
	.ascii	"superflat\000"
.LASF139:
	.ascii	"Block_Crafting_Table\000"
.LASF201:
	.ascii	"WorldGen_SuperFlat\000"
.LASF247:
	.ascii	"breakPlaceTimeout\000"
.LASF315:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF102:
	.ascii	"size\000"
.LASF161:
	.ascii	"seeThrough\000"
.LASF301:
	.ascii	"dist\000"
.LASF39:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF279:
	.ascii	"C3D_TexBind\000"
.LASF220:
	.ascii	"weather\000"
.LASF309:
	.ascii	"C3D_FVUnifMtxNx4\000"
.LASF231:
	.ascii	"Raycast_Result\000"
.LASF96:
	.ascii	"height\000"
.LASF254:
	.ascii	"spawnx\000"
.LASF255:
	.ascii	"spawny\000"
.LASF256:
	.ascii	"spawnz\000"
.LASF81:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF41:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF295:
	.ascii	"projUniform\000"
.LASF207:
	.ascii	"seed\000"
.LASF84:
	.ascii	"C3D_FVUnif\000"
.LASF111:
	.ascii	"Direction_South\000"
.LASF203:
	.ascii	"WorldGen_Default\000"
.LASF114:
	.ascii	"Block\000"
.LASF275:
	.ascii	"BufInfo_Add\000"
.LASF59:
	.ascii	"GPU_TEXCOLOR\000"
.LASF143:
	.ascii	"Block_Iron_Ore\000"
.LASF163:
	.ascii	"emptyRevision\000"
.LASF286:
	.ascii	"cosf\000"
.LASF117:
	.ascii	"Block_Dirt\000"
.LASF95:
	.ascii	"cube\000"
.LASF227:
	.ascii	"ItemStack\000"
.LASF181:
	.ascii	"displayRevision\000"
.LASF24:
	.ascii	"long double\000"
.LASF28:
	.ascii	"_LOCK_T\000"
.LASF18:
	.ascii	"uint16_t\000"
.LASF76:
	.ascii	"GPU_SHADER_TYPE\000"
.LASF106:
	.ascii	"Direction_West\000"
.LASF319:
	.ascii	"Hand_Draw\000"
.LASF63:
	.ascii	"GPU_NOTEQUAL\000"
.LASF259:
	.ascii	"cheats\000"
.LASF65:
	.ascii	"GPU_LEQUAL\000"
.LASF237:
	.ascii	"grounded\000"
.LASF107:
	.ascii	"Direction_East\000"
.LASF53:
	.ascii	"GPU_A8\000"
.LASF234:
	.ascii	"bobbing\000"
.LASF6:
	.ascii	"short int\000"
.LASF35:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF67:
	.ascii	"GPU_GEQUAL\000"
.LASF257:
	.ascii	"spawnset\000"
.LASF308:
	.ascii	"C3D_FVUnifMtx4x4\000"
.LASF251:
	.ascii	"hunger\000"
.LASF194:
	.ascii	"length\000"
.LASF217:
	.ascii	"freeChunks\000"
.LASF80:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF175:
	.ascii	"graphicalTasksRunning\000"
.LASF244:
	.ascii	"autoJumpEnabled\000"
.LASF188:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF75:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF77:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF108:
	.ascii	"Direction_Bottom\000"
.LASF61:
	.ascii	"GPU_ALWAYS\000"
.LASF137:
	.ascii	"Block_Sandstone\000"
.LASF224:
	.ascii	"block\000"
.LASF85:
	.ascii	"C3D_FVUnifDirty\000"
.LASF170:
	.ascii	"ChunkGen_Empty\000"
.LASF60:
	.ascii	"GPU_NEVER\000"
.LASF141:
	.ascii	"Block_Water\000"
.LASF66:
	.ascii	"GPU_GREATER\000"
.LASF165:
	.ascii	"vertices\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF57:
	.ascii	"GPU_ETC1\000"
.LASF128:
	.ascii	"Block_Wool\000"
.LASF211:
	.ascii	"name\000"
.LASF297:
	.ascii	"stack\000"
.LASF124:
	.ascii	"Block_Glass\000"
.LASF283:
	.ascii	"Mtx_Multiply\000"
.LASF159:
	.ascii	"metadataLight\000"
.LASF290:
	.ascii	"sinf\000"
.LASF246:
	.ascii	"simStepAccum\000"
.LASF245:
	.ascii	"velocity\000"
.LASF228:
	.ascii	"float3\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF169:
	.ascii	"Cluster\000"
.LASF162:
	.ascii	"empty\000"
.LASF199:
	.ascii	"WorkQueue\000"
.LASF58:
	.ascii	"GPU_ETC1A4\000"
.LASF0:
	.ascii	"float\000"
.LASF196:
	.ascii	"queue\000"
.LASF171:
	.ascii	"ChunkGen_Terrain\000"
.LASF19:
	.ascii	"int32_t\000"
.LASF51:
	.ascii	"GPU_HILO8\000"
.LASF242:
	.ascii	"world\000"
.LASF277:
	.ascii	"BufInfo_Init\000"
.LASF156:
	.ascii	"memory\000"
.LASF120:
	.ascii	"Block_Sand\000"
.LASF113:
	.ascii	"Direction\000"
.LASF191:
	.ascii	"type\000"
.LASF129:
	.ascii	"Block_Bedrock\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF209:
	.ascii	"GeneratorSettings\000"
.LASF101:
	.ascii	"lodParam\000"
.LASF146:
	.ascii	"Block_Gold_Ore\000"
.LASF119:
	.ascii	"Block_Cobblestone\000"
.LASF167:
	.ascii	"vboRevision\000"
.LASF276:
	.ascii	"C3D_DrawArrays\000"
.LASF182:
	.ascii	"references\000"
.LASF278:
	.ascii	"C3D_AlphaTest\000"
.LASF187:
	.ascii	"WorkerItemType_Decorate\000"
.LASF69:
	.ascii	"GPU_TRIANGLES\000"
.LASF30:
	.ascii	"state\000"
.LASF123:
	.ascii	"Block_Leaves\000"
.LASF302:
	.ascii	"iconUV\000"
.LASF303:
	.ascii	"color\000"
.LASF91:
	.ascii	"buffers\000"
.LASF133:
	.ascii	"Block_Snow_Grass\000"
.LASF88:
	.ascii	"C3D_BufCfg\000"
.LASF122:
	.ascii	"Block_Gravel\000"
.LASF177:
	.ascii	"genProgress\000"
.LASF2:
	.ascii	"signed char\000"
.LASF105:
	.ascii	"C3D_Tex\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF64:
	.ascii	"GPU_LESS\000"
.LASF130:
	.ascii	"Block_Coarse\000"
.LASF282:
	.ascii	"memcpy\000"
.LASF178:
	.ascii	"clusters\000"
.LASF243:
	.ascii	"view\000"
.LASF166:
	.ascii	"transparentVertices\000"
.LASF300:
	.ascii	"bufInfo\000"
.LASF272:
	.ascii	"SkinTexture\000"
.LASF25:
	.ascii	"double\000"
.LASF198:
	.ascii	"listInUse\000"
.LASF238:
	.ascii	"jumped\000"
.LASF144:
	.ascii	"Block_Coal_Ore\000"
.LASF190:
	.ascii	"WorkerItemType\000"
.LASF125:
	.ascii	"Block_Stonebrick\000"
.LASF150:
	.ascii	"Block_Coal_Block\000"
.LASF216:
	.ascii	"chunkCache\000"
.LASF291:
	.ascii	"C3D_TexDelete\000"
.LASF184:
	.ascii	"WorkerItemType_Load\000"
.LASF202:
	.ascii	"WorldGen_FlatBedrock\000"
.LASF232:
	.ascii	"position\000"
.LASF241:
	.ascii	"crouching\000"
.LASF268:
	.ascii	"Player\000"
.LASF92:
	.ascii	"C3D_BufInfo\000"
.LASF68:
	.ascii	"GPU_TESTFUNC\000"
.LASF78:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF265:
	.ascii	"blockInSight\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
