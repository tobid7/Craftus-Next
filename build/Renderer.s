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
	.file	"Renderer.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"projection\000"
	.align	2
.LC1:
	.ascii	"romfs:/assets/textures/gui/title/craftus.png\000"
	.section	.text.Renderer_Init,"ax",%progbits
	.align	2
	.global	Renderer_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	Renderer_Init, %function
Renderer_Init:
.LVL0:
.LFB224:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/rendering/Renderer.c"
	.loc 1 49 93 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 50 2 view .LVU1
	.loc 1 49 93 is_stmt 0 view .LVU2
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 49 93 view .LVU3
	mov	ip, r0
	.loc 1 57 21 view .LVU4
	mov	r5, #0
	.loc 1 50 8 view .LVU5
	ldr	r4, .L4
	.loc 1 55 2 view .LVU6
	mov	r0, #262144
.LVL1:
	.loc 1 50 8 view .LVU7
	str	ip, [r4]
	.loc 1 51 2 is_stmt 1 view .LVU8
	.loc 1 49 93 is_stmt 0 view .LVU9
	mov	r7, r1
	.loc 1 53 12 view .LVU10
	strd	r2, [r4, #8]
	.loc 1 51 9 view .LVU11
	str	r1, [r4, #4]
	.loc 1 52 2 is_stmt 1 view .LVU12
	.loc 1 53 2 view .LVU13
	.loc 1 55 2 view .LVU14
	bl	C3D_Init
.LVL2:
	.loc 1 57 2 view .LVU15
	.loc 1 57 21 is_stmt 0 view .LVU16
	mov	r3, r5
	mov	r2, r5
	mov	r1, #400
	mov	r0, #240
	bl	C3D_RenderTargetCreate
.LVL3:
	.loc 1 58 21 view .LVU17
	mov	r3, r5
	mov	r2, r5
	.loc 1 57 19 view .LVU18
	str	r0, [r4, #16]
	.loc 1 58 2 is_stmt 1 view .LVU19
	.loc 1 58 21 is_stmt 0 view .LVU20
	mov	r1, #400
	mov	r0, #240
	bl	C3D_RenderTargetCreate
.LVL4:
	.loc 1 59 2 view .LVU21
	mov	r2, r5
	mov	r1, r5
	.loc 1 58 19 view .LVU22
	str	r0, [r4, #20]
	.loc 1 59 2 is_stmt 1 view .LVU23
	mov	r3, #4096
	ldr	r0, [r4, #16]
	bl	C3D_RenderTargetSetOutput
.LVL5:
	.loc 1 60 2 view .LVU24
	mov	r1, r5
	ldr	r0, [r4, #20]
	mov	r3, #4096
	mov	r2, #1
	bl	C3D_RenderTargetSetOutput
.LVL6:
	.loc 1 62 2 view .LVU25
	.loc 1 62 16 is_stmt 0 view .LVU26
	mov	r3, r5
	mov	r2, r5
	mov	r1, #320
	mov	r0, #240
	bl	C3D_RenderTargetCreate
.LVL7:
	.loc 1 63 2 view .LVU27
	mov	r2, r5
	mov	r3, #4096
	mov	r1, #1
	.loc 1 62 14 view .LVU28
	str	r0, [r4, #24]
	.loc 1 63 2 is_stmt 1 view .LVU29
	bl	C3D_RenderTargetSetOutput
.LVL8:
	.loc 1 65 2 view .LVU30
	.loc 1 65 15 is_stmt 0 view .LVU31
	ldr	r3, .L4+4
	ldr	r0, .L4+8
	ldr	r1, [r3]
	bl	DVLB_ParseFile
.LVL9:
	.loc 1 66 2 view .LVU32
	add	fp, r4, #32
	.loc 1 65 13 view .LVU33
	str	r0, [r4, #28]
	.loc 1 66 2 is_stmt 1 view .LVU34
	mov	r0, fp
	bl	shaderProgramInit
.LVL10:
	.loc 1 67 2 view .LVU35
	ldr	r3, [r4, #28]
	.loc 1 68 32 is_stmt 0 view .LVU36
	ldr	r9, .L4+12
	.loc 1 67 2 view .LVU37
	ldr	r1, [r3, #20]
	mov	r0, fp
	bl	shaderProgramSetVsh
.LVL11:
	.loc 1 68 2 is_stmt 1 view .LVU38
	.loc 1 68 32 is_stmt 0 view .LVU39
	mov	r1, r9
	ldr	r0, [r4, #32]
	bl	shaderInstanceGetUniformLocation
.LVL12:
	.loc 1 70 13 view .LVU40
	ldr	r3, .L4+16
	.loc 1 68 32 view .LVU41
	str	r0, [r4, #52]
	.loc 1 70 2 is_stmt 1 view .LVU42
	.loc 1 70 13 is_stmt 0 view .LVU43
	ldr	r1, [r3]
	ldr	r0, .L4+20
	bl	DVLB_ParseFile
.LVL13:
	.loc 1 71 2 view .LVU44
	add	r10, r4, #60
	.loc 1 70 11 view .LVU45
	str	r0, [r4, #56]
	.loc 1 71 2 is_stmt 1 view .LVU46
	mov	r0, r10
	bl	shaderProgramInit
.LVL14:
	.loc 1 72 2 view .LVU47
	ldr	r3, [r4, #56]
	mov	r0, r10
	ldr	r1, [r3, #20]
	bl	shaderProgramSetVsh
.LVL15:
	.loc 1 73 2 view .LVU48
	.loc 1 73 30 is_stmt 0 view .LVU49
	mov	r1, r9
	ldr	r0, [r4, #60]
	bl	shaderInstanceGetUniformLocation
.LVL16:
	.loc 1 75 2 view .LVU50
	add	r6, r4, #88
	.loc 1 73 30 view .LVU51
	str	r0, [r4, #80]
	.loc 1 75 2 is_stmt 1 view .LVU52
	mov	r0, r6
	bl	AttrInfo_Init
.LVL17:
	.loc 1 76 2 view .LVU53
	mov	r1, r5
	mov	r3, #3
	mov	r2, #2
	mov	r0, r6
	bl	AttrInfo_AddLoader
.LVL18:
	.loc 1 77 2 view .LVU54
	mov	r3, #2
	mov	r1, #1
	mov	r2, r3
	mov	r0, r6
	bl	AttrInfo_AddLoader
.LVL19:
	.loc 1 78 2 view .LVU55
	mov	r3, #3
	mov	r2, #1
	mov	r1, #2
	mov	r0, r6
	bl	AttrInfo_AddLoader
.LVL20:
	.loc 1 79 2 view .LVU56
	mov	r3, #3
	.loc 1 81 2 is_stmt 0 view .LVU57
	add	r8, r4, #112
	.loc 1 79 2 view .LVU58
	mov	r1, r3
	mov	r2, #1
	mov	r0, r6
	bl	AttrInfo_AddLoader
.LVL21:
	.loc 1 81 2 is_stmt 1 view .LVU59
	mov	r0, r8
	bl	AttrInfo_Init
.LVL22:
	.loc 1 82 2 view .LVU60
	mov	r1, r5
	mov	r3, #3
	mov	r2, #2
	mov	r0, r8
	bl	AttrInfo_AddLoader
.LVL23:
	.loc 1 83 2 view .LVU61
	mov	r3, #3
	mov	r2, #2
	mov	r0, r8
	mov	r1, #1
	bl	AttrInfo_AddLoader
.LVL24:
	.loc 1 85 2 view .LVU62
	mov	r1, r7
	ldr	r0, [r4]
	bl	PolyGen_Init
.LVL25:
	.loc 1 87 2 view .LVU63
	ldmib	r4, {r0, r2}
	ldr	r1, [r4]
	ldr	r3, [r4, #52]
	bl	WorldRenderer_Init
.LVL26:
	.loc 1 89 2 view .LVU64
	ldr	r0, [r4, #80]
	bl	SpriteBatch_Init
.LVL27:
	.loc 1 91 2 view .LVU65
	bl	Gui_Init
.LVL28:
	.loc 1 93 2 view .LVU66
	mov	r0, #2
	bl	C3D_CullFace
.LVL29:
	.loc 1 95 2 view .LVU67
	bl	Block_Init
.LVL30:
	.loc 1 99 2 view .LVU68
	add	r0, r4, #136
	ldr	r1, .L4+24
	.loc 1 100 1 is_stmt 0 view .LVU69
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_restore 3
	.cfi_def_cfa_offset 0
.LVL31:
	.loc 1 99 2 view .LVU70
	b	Texture_Load
.LVL32:
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	world_shbin_size
	.word	world_shbin
	.word	.LC0
	.word	gui_shbin_size
	.word	gui_shbin
	.word	.LC1
	.cfi_endproc
.LFE224:
	.size	Renderer_Init, .-Renderer_Init
	.section	.text.Renderer_Deinit,"ax",%progbits
	.align	2
	.global	Renderer_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	Renderer_Deinit, %function
Renderer_Deinit:
.LFB225:
	.loc 1 101 24 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 102 2 view .LVU72
	.loc 1 101 24 is_stmt 0 view .LVU73
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 102 2 view .LVU74
	ldr	r4, .L8
	add	r0, r4, #136
	bl	C3D_TexDelete
.LVL33:
	.loc 1 104 2 is_stmt 1 view .LVU75
	bl	Item_Deinit
.LVL34:
	.loc 1 106 2 view .LVU76
	bl	Block_Deinit
.LVL35:
	.loc 1 108 2 view .LVU77
	bl	PolyGen_Deinit
.LVL36:
	.loc 1 110 2 view .LVU78
	bl	WorldRenderer_Deinit
.LVL37:
	.loc 1 112 2 view .LVU79
	bl	Gui_Deinit
.LVL38:
	.loc 1 114 2 view .LVU80
	bl	SpriteBatch_Deinit
.LVL39:
	.loc 1 116 2 view .LVU81
	add	r0, r4, #60
	bl	shaderProgramFree
.LVL40:
	.loc 1 117 2 view .LVU82
	ldr	r0, [r4, #56]
	bl	DVLB_Free
.LVL41:
	.loc 1 118 2 view .LVU83
	add	r0, r4, #32
	bl	shaderProgramFree
.LVL42:
	.loc 1 119 2 view .LVU84
	ldr	r0, [r4, #28]
	bl	DVLB_Free
.LVL43:
	.loc 1 121 2 view .LVU85
	.loc 1 122 1 is_stmt 0 view .LVU86
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 121 2 view .LVU87
	b	C3D_Fini
.LVL44:
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.cfi_endproc
.LFE225:
	.size	Renderer_Deinit, .-Renderer_Deinit
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"v0.5.4\000"
	.section	.text.Renderer_Render,"ax",%progbits
	.align	2
	.global	Renderer_Render
	.syntax unified
	.arm
	.fpu vfp
	.type	Renderer_Render, %function
Renderer_Render:
.LFB226:
	.loc 1 124 24 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 125 2 view .LVU89
.LBB48:
.LBI48:
	.file 2 "/opt/devkitpro/libctru/include/3ds/os.h"
	.loc 2 313 21 view .LVU90
.LBB49:
	.loc 2 315 2 view .LVU91
.LBE49:
.LBE48:
	.loc 1 124 24 is_stmt 0 view .LVU92
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
.LBB52:
.LBB50:
	.loc 2 315 40 view .LVU93
	ldr	r3, .L29+36
.LBE50:
.LBE52:
	.loc 1 124 24 view .LVU94
	vpush.64	{d8, d9}
	.cfi_def_cfa_offset 48
	.cfi_offset 80, -48
	.cfi_offset 81, -44
	.cfi_offset 82, -40
	.cfi_offset 83, -36
	.loc 1 125 8 view .LVU95
	vldr.32	s15, .L29
.LBB53:
.LBB51:
	.loc 2 315 40 view .LVU96
	vldr.32	s16, [r3, #128]
.LBE51:
.LBE53:
	.loc 1 129 6 view .LVU97
	ldr	r4, .L29+40
	.loc 1 127 2 view .LVU98
	mov	r0, #1
	.loc 1 124 24 view .LVU99
	sub	sp, sp, #216
	.cfi_def_cfa_offset 264
	.loc 1 125 8 view .LVU100
	vmul.f32	s16, s16, s15
.LVL45:
	.loc 1 127 2 is_stmt 1 view .LVU101
	bl	C3D_FrameBegin
.LVL46:
	.loc 1 129 2 view .LVU102
	.loc 1 129 6 is_stmt 0 view .LVU103
	ldr	r3, [r4, #12]
	.loc 1 129 5 view .LVU104
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L27
.L11:
	.loc 1 124 24 view .LVU105
	mov	r7, #0
.LBB54:
.LBB55:
.LBB56:
	.loc 1 154 4 view .LVU106
	vldr.32	s19, .L29+4
	vldr.32	s18, .L29+8
	vldr.32	s17, .L29+12
.LBE56:
.LBB73:
.LBB74:
	.file 3 "/opt/devkitpro/libctru/include/c3d/renderqueue.h"
	.loc 3 74 2 view .LVU107
	mov	r5, r7
	ldr	r6, .L29+44
.LBE74:
.LBE73:
	.loc 1 142 3 view .LVU108
	add	r9, r6, #16
	.loc 1 143 3 view .LVU109
	add	r8, r6, #72
.L17:
.LVL47:
	.loc 1 132 3 is_stmt 1 view .LVU110
	ldr	r0, [r6]
.LVL48:
.LBB76:
.LBI73:
	.loc 3 72 20 view .LVU111
.LBB75:
	.loc 3 74 2 view .LVU112
	mov	r3, #0
	ldr	r2, .L29+48
	mov	r1, #3
	add	r0, r0, #8
.LVL49:
	.loc 3 74 2 is_stmt 0 view .LVU113
	bl	C3D_FrameBufClear
.LVL50:
	.loc 3 74 2 view .LVU114
.LBE75:
.LBE76:
	.loc 1 133 3 is_stmt 1 view .LVU115
	ldr	r0, [r6], #4
	bl	C3D_FrameDrawOn
.LVL51:
	.loc 1 135 3 view .LVU116
	mov	r1, #240
	mov	r0, #400
	bl	SpriteBatch_StartFrame
.LVL52:
	.loc 1 137 3 view .LVU117
	.loc 1 137 21 is_stmt 0 view .LVU118
	mov	r0, #0
	bl	C3D_GetTexEnv
.LVL53:
.LBB77:
.LBB78:
	.file 4 "/opt/devkitpro/libctru/include/c3d/texenv.h"
	.loc 4 38 13 view .LVU119
	mvn	r2, #0
.LBE78:
.LBE77:
	.loc 1 137 21 view .LVU120
	mov	r3, r0
.LBB81:
.LBB82:
	.loc 4 56 15 view .LVU121
	ldr	ip, .L29+52
.LBE82:
.LBE81:
.LBB85:
.LBB86:
	.loc 4 80 16 view .LVU122
	ldr	r1, .L29+56
.LBE86:
.LBE85:
.LBB89:
.LBB83:
	.loc 4 56 15 view .LVU123
	str	ip, [r3]
.LBE83:
.LBE89:
.LBB90:
.LBB87:
	.loc 4 80 16 view .LVU124
	str	r1, [r3, #8]
.LBE87:
.LBE90:
.LBB91:
.LBB79:
	.loc 4 38 13 view .LVU125
	str	r2, [r3, #12]
	.loc 4 35 13 view .LVU126
	str	r5, [r3, #4]
	.loc 4 39 16 view .LVU127
	str	r5, [r3, #16]
.LBE79:
.LBE91:
	.loc 1 142 3 view .LVU128
	mov	r0, r9
.LVL54:
	.loc 1 138 3 is_stmt 1 view .LVU129
.LBB92:
.LBI77:
	.loc 4 31 20 view .LVU130
.LBB80:
	.loc 4 33 2 view .LVU131
	.loc 4 34 2 view .LVU132
	.loc 4 35 2 view .LVU133
	.loc 4 36 2 view .LVU134
	.loc 4 37 2 view .LVU135
	.loc 4 38 2 view .LVU136
	.loc 4 39 2 view .LVU137
	.loc 4 40 2 view .LVU138
	.loc 4 40 2 is_stmt 0 view .LVU139
.LBE80:
.LBE92:
	.loc 1 139 3 is_stmt 1 view .LVU140
.LBB93:
.LBI81:
	.loc 4 49 20 view .LVU141
.LBB84:
	.loc 4 54 2 view .LVU142
	.loc 4 55 2 view .LVU143
	.loc 4 56 3 view .LVU144
	.loc 4 57 2 view .LVU145
	.loc 4 58 3 view .LVU146
	.loc 4 58 3 is_stmt 0 view .LVU147
.LBE84:
.LBE93:
	.loc 1 140 3 is_stmt 1 view .LVU148
.LBB94:
.LBI85:
	.loc 4 77 20 view .LVU149
.LBB88:
	.loc 4 79 2 view .LVU150
	.loc 4 80 3 view .LVU151
	.loc 4 81 2 view .LVU152
	.loc 4 82 3 view .LVU153
	.loc 4 82 3 is_stmt 0 view .LVU154
.LBE88:
.LBE94:
	.loc 1 142 3 is_stmt 1 view .LVU155
	bl	C3D_BindProgram
.LVL55:
	.loc 1 143 3 view .LVU156
	mov	r0, r8
	bl	C3D_SetAttrInfo
.LVL56:
	.loc 1 145 3 view .LVU157
	.loc 1 145 7 is_stmt 0 view .LVU158
	ldr	r3, [r4, #12]
	.loc 1 145 6 view .LVU159
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L28
.LBB95:
	.loc 1 153 4 is_stmt 1 view .LVU160
	.loc 1 154 4 view .LVU161
.LBB57:
.LBB58:
.LBB59:
.LBB60:
.LBB61:
	.file 5 "/opt/devkitpro/libctru/include/c3d/maths.h"
	.loc 5 285 2 is_stmt 0 view .LVU162
	mov	r10, #64
.LBE61:
.LBE60:
.LBE59:
.LBE58:
.LBE57:
	.loc 1 154 4 view .LVU163
	cmp	r7, #0
	vnegeq.f32	s4, s16
	vmovne.f32	s4, s16
	vmov.f32	s5, s19
	vmov.f32	s3, s18
	vmov.f32	s2, s17
	vldr.32	s1, .L29+16
	vldr.32	s0, .L29+20
	mov	r1, #0
	add	r0, sp, #24
	bl	Mtx_PerspStereoTilt
.LVL57:
	.loc 1 157 4 is_stmt 1 view .LVU164
	.loc 1 158 4 view .LVU165
.LBB70:
.LBI57:
	.loc 5 319 20 view .LVU166
	.loc 5 321 2 view .LVU167
.LBB67:
.LBI58:
	.loc 5 306 20 view .LVU168
.LBB64:
	.loc 5 308 2 view .LVU169
.LBB63:
.LBI60:
	.loc 5 283 20 view .LVU170
.LBB62:
	.loc 5 285 2 view .LVU171
	mov	r2, r10
	mov	r1, #0
	add	r0, sp, #88
	bl	memset
.LVL58:
	.loc 5 285 2 is_stmt 0 view .LVU172
.LBE62:
.LBE63:
	.loc 5 309 2 is_stmt 1 view .LVU173
.LBE64:
.LBE67:
.LBE70:
	.loc 1 159 4 is_stmt 0 view .LVU174
	vldr.32	s2, .L29+24
.LBB71:
.LBB68:
.LBB65:
	.loc 5 309 14 view .LVU175
	mov	r3, #1065353216
.LBE65:
.LBE68:
.LBE71:
	.loc 1 159 4 view .LVU176
	vmov.f32	s0, s2
	vldr.32	s1, .L29+28
	mov	r1, #0
	add	r0, sp, #88
.LBB72:
.LBB69:
.LBB66:
	.loc 5 309 14 view .LVU177
	str	r3, [sp, #100]	@ float
	.loc 5 310 2 is_stmt 1 view .LVU178
	.loc 5 310 14 is_stmt 0 view .LVU179
	str	r3, [sp, #112]	@ float
	.loc 5 311 2 is_stmt 1 view .LVU180
	.loc 5 311 14 is_stmt 0 view .LVU181
	str	r3, [sp, #124]	@ float
	.loc 5 312 2 is_stmt 1 view .LVU182
	.loc 5 312 14 is_stmt 0 view .LVU183
	str	r3, [sp, #136]	@ float
.LVL59:
	.loc 5 312 14 view .LVU184
.LBE66:
.LBE69:
.LBE72:
	.loc 1 159 4 is_stmt 1 view .LVU185
	bl	Mtx_Translate
.LVL60:
	.loc 1 161 4 view .LVU186
	vldr.32	s0, .L29+32
	mov	r1, #1
	add	r0, sp, #88
	bl	Mtx_RotateX
.LVL61:
	.loc 1 163 4 view .LVU187
	.loc 1 164 4 view .LVU188
	add	r2, sp, #88
	add	r1, sp, #24
	add	r0, sp, #152
	bl	Mtx_Multiply
.LVL62:
	.loc 1 166 4 view .LVU189
	vldr.32	s1, .L29+24
	ldr	r2, [r4]
	vmov.f32	s0, s1
	add	r1, sp, #152
	ldr	r0, [r4, #52]
	bl	Clouds_Render
.LVL63:
	.loc 1 168 4 view .LVU190
	ldr	r0, .L29+60
	bl	SpriteBatch_BindTexture
.LVL64:
	.loc 1 170 4 view .LVU191
	mov	r0, #2
	bl	SpriteBatch_SetScale
.LVL65:
	.loc 1 171 4 view .LVU192
	mov	r0, #128
	mov	r1, #32
	mov	r3, #256
	strd	r0, [sp, #12]
	mov	r2, #0
	mov	r1, #60
	mov	r0, #12
	str	r10, [sp]
	str	r5, [sp, #8]
	str	r5, [sp, #4]
	bl	SpriteBatch_PushQuad
.LVL66:
	.loc 1 173 4 view .LVU193
	mov	r2, #0
	mov	r0, #1
	mvn	r1, #-2147483648
	ldr	r3, .L29+64
	strd	r0, [sp]
	str	r3, [sp, #12]
	mov	r1, r2
	mov	r0, r2
	ldr	r3, .L29+68
	str	r5, [sp, #8]
	bl	SpriteBatch_PushText
.LVL67:
.L14:
	.loc 1 173 4 is_stmt 0 view .LVU194
.LBE95:
	.loc 1 176 3 is_stmt 1 view .LVU195
	ldr	r0, .L29+72
	bl	C3D_BindProgram
.LVL68:
	.loc 1 177 3 view .LVU196
	ldr	r0, .L29+76
	bl	C3D_SetAttrInfo
.LVL69:
	.loc 1 179 3 view .LVU197
	mov	r0, #0
	bl	SpriteBatch_Render
.LVL70:
	.loc 1 181 3 view .LVU198
	.loc 1 181 6 is_stmt 0 view .LVU199
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	bls	.L15
.LBE55:
	.loc 1 131 26 is_stmt 1 discriminator 2 view .LVU200
.LVL71:
	.loc 1 131 20 discriminator 2 view .LVU201
	cmp	r7, #1
	bne	.L22
.LVL72:
.L15:
	.loc 1 131 20 is_stmt 0 discriminator 2 view .LVU202
.LBE54:
	.loc 1 184 2 is_stmt 1 view .LVU203
.LBB97:
.LBI97:
	.loc 3 72 20 view .LVU204
.LBB98:
	.loc 3 74 2 view .LVU205
	ldr	r0, [r4, #24]
	mov	r3, #0
	mov	r2, #255
	mov	r1, #3
	add	r0, r0, #8
	bl	C3D_FrameBufClear
.LVL73:
	.loc 3 74 2 is_stmt 0 view .LVU206
.LBE98:
.LBE97:
	.loc 1 185 2 is_stmt 1 view .LVU207
	ldr	r0, [r4, #24]
	bl	C3D_FrameDrawOn
.LVL74:
	.loc 1 187 2 view .LVU208
	mov	r1, #240
	mov	r0, #320
	bl	SpriteBatch_StartFrame
.LVL75:
	.loc 1 189 2 view .LVU209
	.loc 1 189 6 is_stmt 0 view .LVU210
	ldr	r3, [r4, #12]
	.loc 1 189 5 view .LVU211
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L18
	.loc 1 191 3 is_stmt 1 view .LVU212
	bl	WorldSelect_Render
.LVL76:
.L19:
	.loc 1 204 2 view .LVU213
	bl	Gui_Frame
.LVL77:
	.loc 1 206 2 view .LVU214
	mov	r0, #1
	bl	SpriteBatch_Render
.LVL78:
	.loc 1 208 2 view .LVU215
	mov	r0, #0
	.loc 1 209 1 is_stmt 0 view .LVU216
	add	sp, sp, #216
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 32
.LVL79:
	.loc 1 209 1 view .LVU217
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 208 2 view .LVU218
	b	C3D_FrameEnd
.LVL80:
.L22:
	.cfi_restore_state
.LBB99:
	.loc 1 208 2 view .LVU219
	mov	r7, #1
.LVL81:
	.loc 1 208 2 view .LVU220
	b	.L17
.L18:
	.loc 1 208 2 view .LVU221
.LBE99:
	.loc 1 194 3 is_stmt 1 view .LVU222
	mov	r0, #2
	bl	SpriteBatch_SetScale
.LVL82:
	.loc 1 195 3 view .LVU223
	.loc 1 195 31 is_stmt 0 view .LVU224
	mov	r3, #7
	.loc 1 195 9 view .LVU225
	ldr	ip, [r4, #4]
	.loc 1 196 3 view .LVU226
	mov	r1, #97
	add	lr, ip, #136
	.loc 1 195 31 view .LVU227
	str	r3, [ip, #132]
	.loc 1 196 3 is_stmt 1 view .LVU228
	add	r2, ip, #144
	mov	r0, #3
	str	lr, [sp]
	bl	Inventory_DrawQuickSelect
.LVL83:
	.loc 1 199 3 view .LVU229
	.loc 1 199 27 is_stmt 0 view .LVU230
	mov	ip, #64
	.loc 1 199 60 view .LVU231
	ldr	r4, [r4, #4]
	.loc 1 199 27 view .LVU232
	mov	r2, #160
	ldr	r3, [r4, #140]
	mov	r1, #0
	str	r3, [sp, #4]
	mov	r0, #16
	add	r3, r4, #194
	str	ip, [sp]
	bl	Inventory_Draw
.LVL84:
	.loc 1 201 7 view .LVU233
	ldr	r3, .L29+80
	.loc 1 199 25 view .LVU234
	str	r0, [r4, #140]
	.loc 1 201 3 is_stmt 1 view .LVU235
	.loc 1 201 6 is_stmt 0 view .LVU236
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L19
	.loc 1 201 22 is_stmt 1 discriminator 1 view .LVU237
	bl	DebugUI_Draw
.LVL85:
	b	.L19
.LVL86:
.L28:
.LBB100:
.LBB96:
	.loc 1 146 4 view .LVU238
	.loc 1 146 19 is_stmt 0 view .LVU239
	bl	Block_GetTextureMap
.LVL87:
	mov	r1, r0
	.loc 1 146 4 view .LVU240
	mov	r0, #0
	bl	C3D_TexBind
.LVL88:
	.loc 1 148 4 is_stmt 1 view .LVU241
	cmp	r7, #0
	vnegeq.f32	s0, s16
	vmovne.f32	s0, s16
	bl	WorldRenderer_Render
.LVL89:
	.loc 1 150 4 view .LVU242
	mov	r0, #3
	bl	SpriteBatch_BindGuiTexture
.LVL90:
	.loc 1 151 4 view .LVU243
	.loc 1 151 7 is_stmt 0 view .LVU244
	vcmp.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L14
	.loc 1 151 20 is_stmt 1 discriminator 1 view .LVU245
	mov	r3, #16
	mov	r5, #0
	mov	r2, #240
	mov	r1, #52
	str	r3, [sp, #16]
	str	r3, [sp, #12]
	str	r3, [sp]
	stmib	sp, {r2, r5}
	mov	r0, #92
	mov	r2, r5
	bl	SpriteBatch_PushQuad
.LVL91:
	.loc 1 176 3 discriminator 1 view .LVU246
	ldr	r0, .L29+72
	bl	C3D_BindProgram
.LVL92:
	.loc 1 177 3 discriminator 1 view .LVU247
	ldr	r0, .L29+76
	bl	C3D_SetAttrInfo
.LVL93:
	.loc 1 179 3 discriminator 1 view .LVU248
	mov	r0, r5
	bl	SpriteBatch_Render
.LVL94:
	.loc 1 181 3 discriminator 1 view .LVU249
	b	.L15
.LVL95:
.L27:
	.loc 1 181 3 is_stmt 0 discriminator 1 view .LVU250
.LBE96:
.LBE100:
	.loc 1 129 39 is_stmt 1 discriminator 1 view .LVU251
	bl	PolyGen_Harvest
.LVL96:
	b	.L11
.L30:
	.align	2
.L29:
	.word	1032805417
	.word	1077936128
	.word	1115684864
	.word	1046562734
	.word	1070945621
	.word	1070141403
	.word	0
	.word	-1031012352
	.word	-1090123118
	.word	536350720
	.word	.LANCHOR0
	.word	.LANCHOR0+16
	.word	-1864761345
	.word	196611
	.word	65537
	.word	.LANCHOR0+136
	.word	.LC2
	.word	32767
	.word	.LANCHOR0+60
	.word	.LANCHOR0+112
	.word	showDebugInfo
	.cfi_endproc
.LFE226:
	.size	Renderer_Render, .-Renderer_Render
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	world, %object
	.size	world, 4
world:
	.space	4
	.type	player, %object
	.size	player, 4
player:
	.space	4
	.type	workqueue, %object
	.size	workqueue, 4
workqueue:
	.space	4
	.type	gamestate, %object
	.size	gamestate, 4
gamestate:
	.space	4
	.type	renderTargets, %object
	.size	renderTargets, 8
renderTargets:
	.space	8
	.type	lowerScreen, %object
	.size	lowerScreen, 4
lowerScreen:
	.space	4
	.type	world_dvlb, %object
	.size	world_dvlb, 4
world_dvlb:
	.space	4
	.type	world_shader, %object
	.size	world_shader, 20
world_shader:
	.space	20
	.type	world_shader_uLocProjection, %object
	.size	world_shader_uLocProjection, 4
world_shader_uLocProjection:
	.space	4
	.type	gui_dvlb, %object
	.size	gui_dvlb, 4
gui_dvlb:
	.space	4
	.type	gui_shader, %object
	.size	gui_shader, 20
gui_shader:
	.space	20
	.type	gui_shader_uLocProjection, %object
	.size	gui_shader_uLocProjection, 4
gui_shader_uLocProjection:
	.space	4
	.space	4
	.type	world_vertexAttribs, %object
	.size	world_vertexAttribs, 24
world_vertexAttribs:
	.space	24
	.type	gui_vertexAttribs, %object
	.size	gui_vertexAttribs, 24
gui_vertexAttribs:
	.space	24
	.type	logoTex, %object
	.size	logoTex, 24
logoTex:
	.space	24
	.text
.Letext0:
	.file 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 9 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 10 "/home/tobi/Dokumente/Craftus-Next/include/misc/Xorshift.h"
	.file 11 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 13 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 14 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 16 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 17 "/opt/devkitpro/libctru/include/3ds/gfx.h"
	.file 18 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 19 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 20 "/opt/devkitpro/libctru/include/3ds/gpu/gx.h"
	.file 21 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 22 "/opt/devkitpro/libctru/include/3ds/gpu/shbin.h"
	.file 23 "/opt/devkitpro/libctru/include/3ds/gpu/shaderProgram.h"
	.file 24 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 25 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 26 "/home/tobi/Dokumente/Craftus-Next/include/world/WorkQueue.h"
	.file 27 "/home/tobi/Dokumente/Craftus-Next/include/world/World.h"
	.file 28 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Item.h"
	.file 29 "/home/tobi/Dokumente/Craftus-Next/include/inventory/ItemStack.h"
	.file 30 "/home/tobi/Dokumente/Craftus-Next/include/misc/VecMath.h"
	.file 31 "/home/tobi/Dokumente/Craftus-Next/include/misc/Raycast.h"
	.file 32 "/home/tobi/Dokumente/Craftus-Next/include/entity/Player.h"
	.file 33 "/home/tobi/Dokumente/Craftus-Next/include/GameStates.h"
	.file 34 "/opt/devkitpro/libctru/include/c3d/types.h"
	.file 35 "/opt/devkitpro/libctru/include/c3d/attribs.h"
	.file 36 "/opt/devkitpro/libctru/include/c3d/texture.h"
	.file 37 "/opt/devkitpro/libctru/include/c3d/framebuffer.h"
	.file 38 "/home/tobi/Dokumente/Craftus-Next/include/gui/SpriteBatch.h"
	.file 39 "/home/tobi/Dokumente/Craftus-Next/include/rendering/Camera.h"
	.file 40 "/home/tobi/Dokumente/Craftus-Next/build/gui_shbin.h"
	.file 41 "/home/tobi/Dokumente/Craftus-Next/build/world_shbin.h"
	.file 42 "/home/tobi/Dokumente/Craftus-Next/include/gui/Gui.h"
	.file 43 "/home/tobi/Dokumente/Craftus-Next/include/gui/DebugUI.h"
	.file 44 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 45 "/home/tobi/Dokumente/Craftus-Next/include/gui/Inventory.h"
	.file 46 "/home/tobi/Dokumente/Craftus-Next/include/gui/WorldSelect.h"
	.file 47 "/home/tobi/Dokumente/Craftus-Next/include/rendering/Clouds.h"
	.file 48 "/home/tobi/Dokumente/Craftus-Next/include/rendering/WorldRenderer.h"
	.file 49 "/opt/devkitpro/libctru/include/c3d/base.h"
	.file 50 "/home/tobi/Dokumente/Craftus-Next/include/rendering/PolyGen.h"
	.file 51 "/home/tobi/Dokumente/Craftus-Next/include/rendering/TextureMap.h"
	.file 52 "/opt/devkitpro/libctru/include/c3d/effect.h"
	.file 53 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2d8e
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x36
	.4byte	.LASF557
	.byte	0x1d
	.4byte	.LASF558
	.4byte	.LASF559
	.4byte	.LLRL42
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x5
	.4byte	.LASF2
	.byte	0x6
	.byte	0x29
	.byte	0x15
	.4byte	0x39
	.uleb128 0x11
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0x6
	.byte	0x2b
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x6
	.byte	0x37
	.byte	0x13
	.4byte	0x5f
	.uleb128 0x11
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x6
	.byte	0x39
	.byte	0x1c
	.4byte	0x72
	.uleb128 0x11
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.4byte	0x85
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x6
	.byte	0x4f
	.byte	0x1b
	.4byte	0x98
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x6
	.byte	0x67
	.byte	0x17
	.4byte	0xab
	.uleb128 0x11
	.byte	0x8
	.byte	0x5
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x6
	.byte	0x69
	.byte	0x20
	.4byte	0xbe
	.uleb128 0x11
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x37
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x7
	.byte	0x14
	.byte	0x12
	.4byte	0x2d
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x40
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0x7
	.byte	0x20
	.byte	0x13
	.4byte	0x53
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x66
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x79
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x8c
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0x7
	.byte	0x38
	.byte	0x13
	.4byte	0x9f
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.4byte	0xb2
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x8
	.byte	0x3
	.byte	0xe
	.4byte	0x16b
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x8
	.byte	0xb
	.byte	0x3
	.4byte	0x133
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x9
	.byte	0x8
	.byte	0x11
	.4byte	0xdf
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x9
	.byte	0xa
	.byte	0x6
	.4byte	0x281
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.4byte	0x28d
	.uleb128 0x11
	.byte	0x1
	.byte	0x8
	.4byte	.LASF75
	.uleb128 0x20
	.4byte	0x286
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0xa
	.byte	0x5
	.byte	0x12
	.4byte	0x10f
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0xb
	.byte	0xd1
	.byte	0x16
	.4byte	0xcc
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.4byte	.LASF78
	.uleb128 0x38
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0xc
	.byte	0x7
	.byte	0x11
	.4byte	0x103
	.uleb128 0x9
	.4byte	0x286
	.uleb128 0x7
	.byte	0x8
	.byte	0xd
	.byte	0x8
	.byte	0x9
	.4byte	0x2e8
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0xd
	.byte	0x9
	.byte	0x9
	.4byte	0x29e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0xd
	.byte	0xa
	.byte	0x8
	.4byte	0x2b1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF82
	.byte	0xd
	.byte	0xb
	.byte	0x3
	.4byte	0x2c4
	.uleb128 0x2d
	.2byte	0x2030
	.byte	0xe
	.byte	0x10
	.4byte	0x3a6
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0xe
	.byte	0x11
	.byte	0x6
	.4byte	0xc5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0xe
	.byte	0x12
	.byte	0x8
	.4byte	0x3a6
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x13
	.byte	0xa
	.4byte	0x3c2
	.2byte	0x1004
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x15
	.byte	0xb
	.4byte	0x10f
	.2byte	0x2004
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x17
	.byte	0xb
	.4byte	0xf7
	.2byte	0x2008
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x19
	.byte	0x6
	.4byte	0x3de
	.2byte	0x200a
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x1a
	.byte	0xb
	.4byte	0x10f
	.2byte	0x200c
	.uleb128 0x39
	.ascii	"vbo\000"
	.byte	0xe
	.byte	0x1c
	.byte	0xc
	.4byte	0x2e8
	.2byte	0x2010
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1c
	.byte	0x11
	.4byte	0x2e8
	.2byte	0x2018
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1d
	.byte	0x9
	.4byte	0x29e
	.2byte	0x2020
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x1d
	.byte	0x13
	.4byte	0x29e
	.2byte	0x2024
	.uleb128 0x16
	.4byte	.LASF92
	.byte	0x1e
	.byte	0xb
	.4byte	0x10f
	.2byte	0x2028
	.uleb128 0x16
	.4byte	.LASF93
	.byte	0x1f
	.byte	0x6
	.4byte	0x3de
	.2byte	0x202c
	.byte	0
	.uleb128 0xa
	.4byte	0x177
	.4byte	0x3c2
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0xdf
	.4byte	0x3de
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.byte	0x2
	.4byte	.LASF94
	.uleb128 0x5
	.4byte	.LASF95
	.byte	0xe
	.byte	0x20
	.byte	0x3
	.4byte	0x2f4
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0xe
	.byte	0x22
	.byte	0xe
	.4byte	0x411
	.uleb128 0x1
	.4byte	.LASF96
	.byte	0
	.uleb128 0x1
	.4byte	.LASF97
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF98
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF99
	.byte	0xe
	.byte	0x26
	.byte	0x3
	.4byte	0x3f1
	.uleb128 0x2e
	.4byte	0x102ac
	.byte	0xe
	.byte	0x28
	.4byte	0x4e0
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0xe
	.byte	0x2a
	.byte	0xb
	.4byte	0x10f
	.byte	0
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0xe
	.byte	0x2b
	.byte	0xb
	.4byte	0x10f
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0xe
	.byte	0x2d
	.byte	0xb
	.4byte	0x10f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0xe
	.byte	0x2f
	.byte	0x13
	.4byte	0x411
	.byte	0xc
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0xe
	.byte	0x31
	.byte	0x6
	.4byte	0xc5
	.byte	0x10
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0xe
	.byte	0x31
	.byte	0x9
	.4byte	0xc5
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0xe
	.byte	0x32
	.byte	0xa
	.4byte	0x4e0
	.byte	0x18
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0xe
	.byte	0x34
	.byte	0xa
	.4byte	0x4f0
	.4byte	0x10198
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0xe
	.byte	0x35
	.byte	0xb
	.4byte	0x10f
	.4byte	0x10298
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0xe
	.byte	0x37
	.byte	0x9
	.4byte	0x29e
	.4byte	0x1029c
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0xe
	.byte	0x39
	.byte	0xb
	.4byte	0x10f
	.4byte	0x102a0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0xe
	.byte	0x3a
	.byte	0x6
	.4byte	0x3de
	.4byte	0x102a4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0xe
	.byte	0x3c
	.byte	0x6
	.4byte	0xc5
	.4byte	0x102a8
	.byte	0
	.uleb128 0xa
	.4byte	0x3e5
	.4byte	0x4f0
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0xdf
	.4byte	0x506
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0xe
	.byte	0x3d
	.byte	0x3
	.4byte	0x41d
	.uleb128 0x9
	.4byte	0xc5
	.uleb128 0x1c
	.4byte	0x26
	.uleb128 0x11
	.byte	0x8
	.byte	0x4
	.4byte	.LASF110
	.uleb128 0x19
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xdf
	.uleb128 0x1c
	.4byte	0x523
	.uleb128 0x20
	.4byte	0x523
	.uleb128 0x19
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xf7
	.uleb128 0x19
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0x10f
	.uleb128 0x1c
	.4byte	0x542
	.uleb128 0x20
	.4byte	0x542
	.uleb128 0x19
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0x127
	.uleb128 0x1c
	.4byte	0x557
	.uleb128 0x19
	.ascii	"s8\000"
	.byte	0x1a
	.byte	0x10
	.4byte	0xd3
	.uleb128 0x19
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0x103
	.uleb128 0x19
	.ascii	"s64\000"
	.byte	0x1d
	.byte	0x11
	.4byte	0x11b
	.uleb128 0x19
	.ascii	"vu8\000"
	.byte	0x1f
	.byte	0x15
	.4byte	0x52d
	.uleb128 0x5
	.4byte	.LASF111
	.byte	0xf
	.byte	0x21
	.byte	0x16
	.4byte	0x54d
	.uleb128 0x5
	.4byte	.LASF112
	.byte	0xf
	.byte	0x22
	.byte	0x16
	.4byte	0x562
	.uleb128 0x5
	.4byte	.LASF113
	.byte	0xf
	.byte	0x2a
	.byte	0xd
	.4byte	0x571
	.uleb128 0xa
	.4byte	0x542
	.4byte	0x5c6
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x523
	.4byte	0x5d6
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x523
	.4byte	0x5e6
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x542
	.4byte	0x5f6
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x20
	.byte	0x2
	.byte	0x66
	.byte	0x9
	.4byte	0x634
	.uleb128 0x2
	.4byte	.LASF114
	.byte	0x2
	.byte	0x68
	.byte	0x6
	.4byte	0x557
	.byte	0
	.uleb128 0x2
	.4byte	.LASF115
	.byte	0x2
	.byte	0x69
	.byte	0x6
	.4byte	0x557
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF116
	.byte	0x2
	.byte	0x6a
	.byte	0x6
	.4byte	0x57c
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF117
	.byte	0x2
	.byte	0x6b
	.byte	0x6
	.4byte	0x57c
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF118
	.byte	0x2
	.byte	0x6c
	.byte	0x3
	.4byte	0x5f6
	.uleb128 0x1c
	.4byte	0x634
	.uleb128 0x7
	.byte	0xc8
	.byte	0x2
	.byte	0x6f
	.byte	0x9
	.4byte	0x746
	.uleb128 0x2
	.4byte	.LASF119
	.byte	0x2
	.byte	0x71
	.byte	0x7
	.4byte	0x592
	.byte	0
	.uleb128 0x2
	.4byte	.LASF120
	.byte	0x2
	.byte	0x72
	.byte	0x5
	.4byte	0x523
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF121
	.byte	0x2
	.byte	0x73
	.byte	0x5
	.4byte	0x523
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF122
	.byte	0x2
	.byte	0x74
	.byte	0x5
	.4byte	0x746
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF123
	.byte	0x2
	.byte	0x75
	.byte	0x17
	.4byte	0x766
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF124
	.byte	0x2
	.byte	0x76
	.byte	0x5
	.4byte	0x76b
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF125
	.byte	0x2
	.byte	0x77
	.byte	0x6
	.4byte	0x587
	.byte	0x66
	.uleb128 0x2
	.4byte	.LASF126
	.byte	0x2
	.byte	0x78
	.byte	0x6
	.4byte	0x587
	.byte	0x67
	.uleb128 0x2
	.4byte	.LASF127
	.byte	0x2
	.byte	0x79
	.byte	0x5
	.4byte	0x77b
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF128
	.byte	0x2
	.byte	0x7a
	.byte	0x11
	.4byte	0x517
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF129
	.byte	0x2
	.byte	0x7b
	.byte	0x6
	.4byte	0x587
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF130
	.byte	0x2
	.byte	0x7c
	.byte	0x6
	.4byte	0x587
	.byte	0x85
	.uleb128 0x2
	.4byte	.LASF131
	.byte	0x2
	.byte	0x7d
	.byte	0x6
	.4byte	0x587
	.byte	0x86
	.uleb128 0x2
	.4byte	.LASF132
	.byte	0x2
	.byte	0x7e
	.byte	0x5
	.4byte	0x523
	.byte	0x87
	.uleb128 0x2
	.4byte	.LASF133
	.byte	0x2
	.byte	0x7f
	.byte	0x5
	.4byte	0x77b
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF134
	.byte	0x2
	.byte	0x80
	.byte	0x7
	.4byte	0x59e
	.byte	0xa0
	.uleb128 0x2
	.4byte	.LASF135
	.byte	0x2
	.byte	0x81
	.byte	0x7
	.4byte	0x59e
	.byte	0xa8
	.uleb128 0x2
	.4byte	.LASF136
	.byte	0x2
	.byte	0x82
	.byte	0x5
	.4byte	0x5c6
	.byte	0xb0
	.uleb128 0x2
	.4byte	.LASF137
	.byte	0x2
	.byte	0x83
	.byte	0x6
	.4byte	0x587
	.byte	0xc0
	.byte	0
	.uleb128 0xa
	.4byte	0x523
	.4byte	0x756
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x640
	.4byte	0x766
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x1
	.byte	0
	.uleb128 0x1c
	.4byte	0x756
	.uleb128 0xa
	.4byte	0x523
	.4byte	0x77b
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x523
	.4byte	0x78b
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.4byte	.LASF138
	.byte	0x2
	.byte	0x84
	.byte	0x3
	.4byte	0x645
	.uleb128 0x5
	.4byte	.LASF139
	.byte	0x10
	.byte	0xa
	.byte	0x11
	.4byte	0x2b3
	.uleb128 0x7
	.byte	0x8
	.byte	0x10
	.byte	0x13
	.byte	0x9
	.4byte	0x7c7
	.uleb128 0x2
	.4byte	.LASF140
	.byte	0x10
	.byte	0x15
	.byte	0x6
	.4byte	0x571
	.byte	0
	.uleb128 0x2
	.4byte	.LASF141
	.byte	0x10
	.byte	0x16
	.byte	0xc
	.4byte	0x797
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF142
	.byte	0x10
	.byte	0x17
	.byte	0x3
	.4byte	0x7a3
	.uleb128 0x9
	.4byte	0x542
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x11
	.byte	0x19
	.byte	0xe
	.4byte	0x7f2
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF145
	.byte	0x11
	.byte	0x1c
	.byte	0x3
	.4byte	0x7d8
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x11
	.byte	0x24
	.byte	0xe
	.4byte	0x818
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF148
	.byte	0x11
	.byte	0x27
	.byte	0x3
	.4byte	0x7fe
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x12
	.byte	0x28
	.byte	0x1
	.4byte	0x84a
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x12
	.byte	0x31
	.byte	0x1
	.4byte	0x870
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x542
	.4byte	0x880
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x13
	.byte	0x21
	.byte	0xe
	.4byte	0x8a6
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x14
	.byte	0x13
	.byte	0x1
	.4byte	0x8d2
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x14
	.byte	0x22
	.byte	0x1
	.4byte	0x8f2
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x15
	.byte	0x40
	.byte	0x1
	.4byte	0x954
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF175
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF176
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF177
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF178
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF179
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF182
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF183
	.byte	0x15
	.byte	0x4f
	.byte	0x3
	.4byte	0x8f2
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x15
	.byte	0x95
	.byte	0x1
	.4byte	0x98c
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
	.byte	0
	.uleb128 0x5
	.4byte	.LASF189
	.byte	0x15
	.byte	0x9b
	.byte	0x3
	.4byte	0x960
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x15
	.byte	0x9f
	.byte	0x1
	.4byte	0x9b8
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0
	.uleb128 0x1
	.4byte	.LASF191
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF192
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF193
	.byte	0x15
	.byte	0xa3
	.byte	0x3
	.4byte	0x998
	.uleb128 0x1d
	.4byte	0x4c
	.2byte	0x127
	.4byte	0x9e8
	.uleb128 0x1
	.4byte	.LASF194
	.byte	0
	.uleb128 0x1
	.4byte	.LASF195
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF196
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF197
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.4byte	.LASF198
	.2byte	0x12c
	.4byte	0x9c4
	.uleb128 0x1d
	.4byte	0x4c
	.2byte	0x130
	.4byte	0xa11
	.uleb128 0x1
	.4byte	.LASF199
	.byte	0
	.uleb128 0x1
	.4byte	.LASF200
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF201
	.byte	0x2
	.byte	0
	.uleb128 0x26
	.4byte	.LASF202
	.2byte	0x134
	.4byte	0x9f3
	.uleb128 0x1d
	.4byte	0x4c
	.2byte	0x13b
	.4byte	0xa64
	.uleb128 0x1
	.4byte	.LASF203
	.byte	0
	.uleb128 0x1
	.4byte	.LASF204
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF205
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF209
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF210
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF211
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF212
	.byte	0xf
	.byte	0
	.uleb128 0x26
	.4byte	.LASF213
	.2byte	0x146
	.4byte	0xa1c
	.uleb128 0x1d
	.4byte	0x4c
	.2byte	0x16c
	.4byte	0xab1
	.uleb128 0x1
	.4byte	.LASF214
	.byte	0
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF216
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF217
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF218
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF220
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF221
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF222
	.byte	0x9
	.byte	0
	.uleb128 0x26
	.4byte	.LASF223
	.2byte	0x176
	.4byte	0xa6f
	.uleb128 0x1d
	.4byte	0x4c
	.2byte	0x17a
	.4byte	0xada
	.uleb128 0x1
	.4byte	.LASF224
	.byte	0
	.uleb128 0x1
	.4byte	.LASF225
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF226
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.4byte	0x4c
	.2byte	0x1f5
	.4byte	0xaf2
	.uleb128 0x1
	.4byte	.LASF227
	.byte	0
	.uleb128 0x1
	.4byte	.LASF228
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x16
	.byte	0xa
	.byte	0xd
	.4byte	0xb0c
	.uleb128 0x1
	.4byte	.LASF229
	.byte	0
	.uleb128 0x1
	.4byte	.LASF230
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x16
	.byte	0xd
	.byte	0x2
	.4byte	0xaf2
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x16
	.byte	0x25
	.byte	0x1
	.4byte	0xb38
	.uleb128 0x1
	.4byte	.LASF232
	.byte	0
	.uleb128 0x1
	.4byte	.LASF233
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF234
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF235
	.byte	0x16
	.byte	0x29
	.byte	0x3
	.4byte	0xb18
	.uleb128 0x7
	.byte	0x10
	.byte	0x16
	.byte	0x2c
	.byte	0x9
	.4byte	0xb82
	.uleb128 0x2
	.4byte	.LASF236
	.byte	0x16
	.byte	0x2d
	.byte	0x6
	.4byte	0x542
	.byte	0
	.uleb128 0x2
	.4byte	.LASF237
	.byte	0x16
	.byte	0x2e
	.byte	0x7
	.4byte	0x7d3
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF238
	.byte	0x16
	.byte	0x2f
	.byte	0x6
	.4byte	0x542
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF239
	.byte	0x16
	.byte	0x30
	.byte	0x7
	.4byte	0x7d3
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.4byte	.LASF240
	.byte	0x16
	.byte	0x31
	.byte	0x2
	.4byte	0xb44
	.uleb128 0x7
	.byte	0x14
	.byte	0x16
	.byte	0x34
	.byte	0x9
	.4byte	0xbbe
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x16
	.byte	0x35
	.byte	0x6
	.4byte	0x537
	.byte	0
	.uleb128 0xe
	.ascii	"id\000"
	.byte	0x16
	.byte	0x36
	.byte	0x6
	.4byte	0x537
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x16
	.byte	0x37
	.byte	0x6
	.4byte	0xbbe
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x542
	.4byte	0xbce
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF243
	.byte	0x16
	.byte	0x38
	.byte	0x2
	.4byte	0xb8e
	.uleb128 0x7
	.byte	0x8
	.byte	0x16
	.byte	0x3b
	.byte	0x9
	.4byte	0xc18
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x16
	.byte	0x3c
	.byte	0x6
	.4byte	0x537
	.byte	0
	.uleb128 0x2
	.4byte	.LASF244
	.byte	0x16
	.byte	0x3d
	.byte	0x6
	.4byte	0x537
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF245
	.byte	0x16
	.byte	0x3e
	.byte	0x5
	.4byte	0x523
	.byte	0x4
	.uleb128 0xe
	.ascii	"unk\000"
	.byte	0x16
	.byte	0x3f
	.byte	0x5
	.4byte	0x5d6
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF246
	.byte	0x16
	.byte	0x40
	.byte	0x2
	.4byte	0xbda
	.uleb128 0x7
	.byte	0x8
	.byte	0x16
	.byte	0x43
	.byte	0x9
	.4byte	0xc55
	.uleb128 0x2
	.4byte	.LASF247
	.byte	0x16
	.byte	0x44
	.byte	0x6
	.4byte	0x542
	.byte	0
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x16
	.byte	0x45
	.byte	0x6
	.4byte	0x537
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF249
	.byte	0x16
	.byte	0x46
	.byte	0x6
	.4byte	0x537
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF250
	.byte	0x16
	.byte	0x47
	.byte	0x2
	.4byte	0xc24
	.uleb128 0x7
	.byte	0x5c
	.byte	0x16
	.byte	0x4a
	.byte	0x9
	.4byte	0xd6f
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x16
	.byte	0x4b
	.byte	0xc
	.4byte	0xb0c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x16
	.byte	0x4c
	.byte	0x6
	.4byte	0x3de
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF252
	.byte	0x16
	.byte	0x4d
	.byte	0x15
	.4byte	0xb38
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x16
	.byte	0x4e
	.byte	0x5
	.4byte	0x523
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF254
	.byte	0x16
	.byte	0x4f
	.byte	0x5
	.4byte	0x523
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF255
	.byte	0x16
	.byte	0x50
	.byte	0x5
	.4byte	0x523
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF256
	.byte	0x16
	.byte	0x51
	.byte	0xa
	.4byte	0xd6f
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF257
	.byte	0x16
	.byte	0x52
	.byte	0x6
	.4byte	0x542
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF258
	.byte	0x16
	.byte	0x53
	.byte	0x6
	.4byte	0x542
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x16
	.byte	0x54
	.byte	0x6
	.4byte	0x542
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x16
	.byte	0x55
	.byte	0x15
	.4byte	0xd74
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF261
	.byte	0x16
	.byte	0x56
	.byte	0x6
	.4byte	0x542
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x16
	.byte	0x57
	.byte	0x13
	.4byte	0xd79
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF263
	.byte	0x16
	.byte	0x58
	.byte	0x6
	.4byte	0x542
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x16
	.byte	0x59
	.byte	0x17
	.4byte	0xd7e
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF265
	.byte	0x16
	.byte	0x5a
	.byte	0x8
	.4byte	0x2bf
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF266
	.byte	0x16
	.byte	0x5b
	.byte	0x5
	.4byte	0x523
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF267
	.byte	0x16
	.byte	0x5c
	.byte	0x6
	.4byte	0x870
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x16
	.byte	0x5d
	.byte	0x6
	.4byte	0x542
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x16
	.byte	0x5e
	.byte	0x6
	.4byte	0x542
	.byte	0x58
	.byte	0
	.uleb128 0x9
	.4byte	0xb82
	.uleb128 0x9
	.4byte	0xbce
	.uleb128 0x9
	.4byte	0xc18
	.uleb128 0x9
	.4byte	0xc55
	.uleb128 0x5
	.4byte	.LASF270
	.byte	0x16
	.byte	0x5f
	.byte	0x2
	.4byte	0xc61
	.uleb128 0x7
	.byte	0x18
	.byte	0x16
	.byte	0x62
	.byte	0x9
	.4byte	0xdc0
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x16
	.byte	0x63
	.byte	0x6
	.4byte	0x542
	.byte	0
	.uleb128 0x2
	.4byte	.LASF272
	.byte	0x16
	.byte	0x64
	.byte	0x9
	.4byte	0xb82
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF273
	.byte	0x16
	.byte	0x65
	.byte	0xa
	.4byte	0xdc0
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0xd83
	.uleb128 0x5
	.4byte	.LASF274
	.byte	0x16
	.byte	0x66
	.byte	0x2
	.4byte	0xd8f
	.uleb128 0x7
	.byte	0x10
	.byte	0x17
	.byte	0xb
	.byte	0x9
	.4byte	0xdf4
	.uleb128 0xe
	.ascii	"id\000"
	.byte	0x17
	.byte	0xd
	.byte	0x6
	.4byte	0x542
	.byte	0
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x17
	.byte	0xe
	.byte	0x6
	.4byte	0x5e6
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF275
	.byte	0x17
	.byte	0xf
	.byte	0x2
	.4byte	0xdd1
	.uleb128 0x7
	.byte	0x20
	.byte	0x17
	.byte	0x12
	.byte	0x9
	.4byte	0xe65
	.uleb128 0x2
	.4byte	.LASF276
	.byte	0x17
	.byte	0x14
	.byte	0xa
	.4byte	0xdc0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF277
	.byte	0x17
	.byte	0x15
	.byte	0x6
	.4byte	0x537
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF278
	.byte	0x17
	.byte	0x16
	.byte	0x6
	.4byte	0x537
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF279
	.byte	0x17
	.byte	0x17
	.byte	0x6
	.4byte	0xbbe
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF280
	.byte	0x17
	.byte	0x18
	.byte	0x14
	.4byte	0xe65
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF281
	.byte	0x17
	.byte	0x19
	.byte	0x5
	.4byte	0x523
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF282
	.byte	0x17
	.byte	0x1a
	.byte	0x5
	.4byte	0x523
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.4byte	0xdf4
	.uleb128 0x5
	.4byte	.LASF283
	.byte	0x17
	.byte	0x1b
	.byte	0x2
	.4byte	0xe00
	.uleb128 0x7
	.byte	0x14
	.byte	0x17
	.byte	0x1e
	.byte	0x9
	.4byte	0xeb4
	.uleb128 0x2
	.4byte	.LASF284
	.byte	0x17
	.byte	0x20
	.byte	0x14
	.4byte	0xeb4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF285
	.byte	0x17
	.byte	0x21
	.byte	0x14
	.4byte	0xeb4
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF286
	.byte	0x17
	.byte	0x22
	.byte	0x6
	.4byte	0x5b6
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF287
	.byte	0x17
	.byte	0x23
	.byte	0x5
	.4byte	0x523
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	0xe6a
	.uleb128 0x5
	.4byte	.LASF288
	.byte	0x17
	.byte	0x24
	.byte	0x2
	.4byte	0xe76
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.4byte	0xee5
	.uleb128 0x1
	.4byte	.LASF289
	.byte	0
	.uleb128 0x1
	.4byte	.LASF290
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF291
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.4byte	0x72
	.byte	0x19
	.byte	0x9
	.byte	0x1
	.4byte	0xf01
	.uleb128 0x2f
	.4byte	.LASF292
	.2byte	0x100
	.uleb128 0x2f
	.4byte	.LASF293
	.2byte	0x200
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x1a
	.byte	0xd
	.byte	0xe
	.4byte	0xf33
	.uleb128 0x1
	.4byte	.LASF294
	.byte	0
	.uleb128 0x1
	.4byte	.LASF295
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF296
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF297
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF298
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF299
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF300
	.byte	0x1a
	.byte	0x14
	.byte	0x3
	.4byte	0xf01
	.uleb128 0x7
	.byte	0xc
	.byte	0x1a
	.byte	0x16
	.byte	0x9
	.4byte	0xf70
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x1a
	.byte	0x17
	.byte	0x11
	.4byte	0xf33
	.byte	0
	.uleb128 0x2
	.4byte	.LASF301
	.byte	0x1a
	.byte	0x18
	.byte	0x9
	.4byte	0xf70
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF102
	.byte	0x1a
	.byte	0x19
	.byte	0xb
	.4byte	0x10f
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x506
	.uleb128 0x5
	.4byte	.LASF302
	.byte	0x1a
	.byte	0x1a
	.byte	0x3
	.4byte	0xf3f
	.uleb128 0x7
	.byte	0xc
	.byte	0x1a
	.byte	0x1d
	.byte	0x2
	.4byte	0xfb2
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x1a
	.byte	0x1d
	.byte	0x17
	.4byte	0xfb2
	.byte	0
	.uleb128 0x2
	.4byte	.LASF303
	.byte	0x1a
	.byte	0x1d
	.byte	0x21
	.4byte	0xc5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF304
	.byte	0x1a
	.byte	0x1d
	.byte	0x29
	.4byte	0xc5
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xf75
	.uleb128 0x7
	.byte	0x18
	.byte	0x1a
	.byte	0x1c
	.byte	0x9
	.4byte	0xfe8
	.uleb128 0x2
	.4byte	.LASF305
	.byte	0x1a
	.byte	0x1d
	.byte	0x35
	.4byte	0xf81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF306
	.byte	0x1a
	.byte	0x1f
	.byte	0xd
	.4byte	0x7c7
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF307
	.byte	0x1a
	.byte	0x20
	.byte	0xc
	.4byte	0x797
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF308
	.byte	0x1a
	.byte	0x21
	.byte	0x3
	.4byte	0xfb7
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x1b
	.byte	0x11
	.byte	0xe
	.4byte	0x1020
	.uleb128 0x1
	.4byte	.LASF309
	.byte	0
	.uleb128 0x1
	.4byte	.LASF310
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF311
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF312
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF313
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF314
	.byte	0x1b
	.byte	0x11
	.byte	0x71
	.4byte	0xff4
	.uleb128 0x3a
	.byte	0
	.byte	0x1b
	.byte	0x18
	.byte	0x3
	.uleb128 0x17
	.byte	0
	.byte	0x1b
	.byte	0x17
	.byte	0x2
	.4byte	0x1047
	.uleb128 0x21
	.4byte	.LASF336
	.byte	0x1b
	.byte	0x1a
	.byte	0x5
	.4byte	0x102c
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x1b
	.byte	0x13
	.byte	0x9
	.4byte	0x1078
	.uleb128 0x2
	.4byte	.LASF315
	.byte	0x1b
	.byte	0x14
	.byte	0xb
	.4byte	0x127
	.byte	0
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x1b
	.byte	0x15
	.byte	0xf
	.4byte	0x1020
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF316
	.byte	0x1b
	.byte	0x1b
	.byte	0x4
	.4byte	0x1031
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF317
	.byte	0x1b
	.byte	0x1c
	.byte	0x3
	.4byte	0x1047
	.uleb128 0x7
	.byte	0xc
	.byte	0x1b
	.byte	0x2a
	.byte	0x2
	.4byte	0x10b5
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x1b
	.byte	0x2a
	.byte	0x13
	.4byte	0x10b5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF303
	.byte	0x1b
	.byte	0x2a
	.byte	0x1d
	.4byte	0xc5
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF304
	.byte	0x1b
	.byte	0x2a
	.byte	0x25
	.4byte	0xc5
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xf70
	.uleb128 0x2e
	.4byte	0xb5e278
	.byte	0x1b
	.byte	0x1f
	.4byte	0x1164
	.uleb128 0x2
	.4byte	.LASF318
	.byte	0x1b
	.byte	0x20
	.byte	0x6
	.4byte	0xc5
	.byte	0
	.uleb128 0x2
	.4byte	.LASF319
	.byte	0x1b
	.byte	0x22
	.byte	0x7
	.4byte	0x1164
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF320
	.byte	0x1b
	.byte	0x24
	.byte	0x14
	.4byte	0x1078
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF321
	.byte	0x1b
	.byte	0x26
	.byte	0x6
	.4byte	0xc5
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF322
	.byte	0x1b
	.byte	0x26
	.byte	0x19
	.4byte	0xc5
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF323
	.byte	0x1b
	.byte	0x28
	.byte	0x8
	.4byte	0x1174
	.byte	0x28
	.uleb128 0x15
	.4byte	.LASF324
	.byte	0x1b
	.byte	0x29
	.byte	0x9
	.4byte	0x1184
	.4byte	0xb5e118
	.uleb128 0x15
	.4byte	.LASF325
	.byte	0x1b
	.byte	0x2a
	.byte	0x31
	.4byte	0x1084
	.4byte	0xb5e25c
	.uleb128 0x15
	.4byte	.LASF326
	.byte	0x1b
	.byte	0x2c
	.byte	0xd
	.4byte	0x119a
	.4byte	0xb5e268
	.uleb128 0x15
	.4byte	.LASF327
	.byte	0x1b
	.byte	0x2e
	.byte	0xd
	.4byte	0x292
	.4byte	0xb5e26c
	.uleb128 0x15
	.4byte	.LASF328
	.byte	0x1b
	.byte	0x30
	.byte	0x6
	.4byte	0xc5
	.4byte	0xb5e270
	.byte	0
	.uleb128 0xa
	.4byte	0x286
	.4byte	0x1174
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.4byte	0x506
	.4byte	0x1184
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xb3
	.byte	0
	.uleb128 0xa
	.4byte	0xf70
	.4byte	0x119a
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x8
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0xfe8
	.uleb128 0x5
	.4byte	.LASF329
	.byte	0x1b
	.byte	0x31
	.byte	0x3
	.4byte	0x10ba
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x1c
	.byte	0xa
	.byte	0x6
	.4byte	0x11c5
	.uleb128 0x1
	.4byte	.LASF330
	.byte	0
	.uleb128 0x1
	.4byte	.LASF331
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x3
	.byte	0x1d
	.byte	0xa
	.byte	0x9
	.4byte	0x11f6
	.uleb128 0x2
	.4byte	.LASF332
	.byte	0x1d
	.byte	0xb
	.byte	0x8
	.4byte	0x177
	.byte	0
	.uleb128 0x2
	.4byte	.LASF333
	.byte	0x1d
	.byte	0xc
	.byte	0xa
	.4byte	0xdf
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF334
	.byte	0x1d
	.byte	0xc
	.byte	0x10
	.4byte	0xdf
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF335
	.byte	0x1d
	.byte	0xd
	.byte	0x3
	.4byte	0x11c5
	.uleb128 0x7
	.byte	0xc
	.byte	0x1e
	.byte	0x9
	.byte	0x2
	.4byte	0x122d
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x1e
	.byte	0xa
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x1e
	.byte	0xa
	.byte	0xc
	.4byte	0x26
	.byte	0x4
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x1e
	.byte	0xa
	.byte	0xf
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x17
	.byte	0xc
	.byte	0x1e
	.byte	0x7
	.byte	0x9
	.4byte	0x1246
	.uleb128 0x1a
	.ascii	"v\000"
	.byte	0x1e
	.byte	0x8
	.byte	0x8
	.4byte	0x1246
	.uleb128 0x1e
	.4byte	0x1202
	.byte	0
	.uleb128 0xa
	.4byte	0x26
	.4byte	0x1256
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF337
	.byte	0x1e
	.byte	0xc
	.byte	0x3
	.4byte	0x122d
	.uleb128 0x7
	.byte	0x14
	.byte	0x1f
	.byte	0x7
	.byte	0x9
	.4byte	0x12a7
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x1f
	.byte	0x8
	.byte	0x6
	.4byte	0xc5
	.byte	0
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x1f
	.byte	0x8
	.byte	0x9
	.4byte	0xc5
	.byte	0x4
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x1f
	.byte	0x8
	.byte	0xc
	.4byte	0xc5
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF338
	.byte	0x1f
	.byte	0x9
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF339
	.byte	0x1f
	.byte	0xa
	.byte	0xc
	.4byte	0x16b
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF340
	.byte	0x1f
	.byte	0xb
	.byte	0x3
	.4byte	0x1262
	.uleb128 0x2d
	.2byte	0x184
	.byte	0x20
	.byte	0x15
	.4byte	0x14aa
	.uleb128 0x2
	.4byte	.LASF341
	.byte	0x20
	.byte	0x16
	.byte	0x9
	.4byte	0x1256
	.byte	0
	.uleb128 0x2
	.4byte	.LASF342
	.byte	0x20
	.byte	0x17
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0xe
	.ascii	"yaw\000"
	.byte	0x20
	.byte	0x17
	.byte	0xf
	.4byte	0x26
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF343
	.byte	0x20
	.byte	0x18
	.byte	0x8
	.4byte	0x26
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF344
	.byte	0x20
	.byte	0x18
	.byte	0x11
	.4byte	0x26
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF345
	.byte	0x20
	.byte	0x18
	.byte	0x19
	.4byte	0x26
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF346
	.byte	0x20
	.byte	0x19
	.byte	0x6
	.4byte	0x3de
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF347
	.byte	0x20
	.byte	0x19
	.byte	0x10
	.4byte	0x3de
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF348
	.byte	0x20
	.byte	0x19
	.byte	0x18
	.4byte	0x3de
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF349
	.byte	0x20
	.byte	0x19
	.byte	0x23
	.4byte	0x3de
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF350
	.byte	0x20
	.byte	0x19
	.byte	0x2b
	.4byte	0x3de
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF351
	.byte	0x20
	.byte	0x1a
	.byte	0x9
	.4byte	0x14aa
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF352
	.byte	0x20
	.byte	0x1c
	.byte	0x9
	.4byte	0x1256
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF353
	.byte	0x20
	.byte	0x1e
	.byte	0x6
	.4byte	0x3de
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF354
	.byte	0x20
	.byte	0x20
	.byte	0x9
	.4byte	0x1256
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF355
	.byte	0x20
	.byte	0x21
	.byte	0x8
	.4byte	0x26
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF356
	.byte	0x20
	.byte	0x23
	.byte	0x8
	.4byte	0x26
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF357
	.byte	0x20
	.byte	0x24
	.byte	0x6
	.4byte	0xc5
	.byte	0x50
	.uleb128 0xe
	.ascii	"hp\000"
	.byte	0x20
	.byte	0x26
	.byte	0x6
	.4byte	0xc5
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF358
	.byte	0x20
	.byte	0x27
	.byte	0x6
	.4byte	0xc5
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF359
	.byte	0x20
	.byte	0x28
	.byte	0x6
	.4byte	0xc5
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF360
	.byte	0x20
	.byte	0x29
	.byte	0x6
	.4byte	0xc5
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF361
	.byte	0x20
	.byte	0x2a
	.byte	0x6
	.4byte	0xc5
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF362
	.byte	0x20
	.byte	0x2b
	.byte	0x8
	.4byte	0x26
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF363
	.byte	0x20
	.byte	0x2d
	.byte	0x8
	.4byte	0x26
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF364
	.byte	0x20
	.byte	0x2e
	.byte	0x8
	.4byte	0x26
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF365
	.byte	0x20
	.byte	0x2f
	.byte	0x8
	.4byte	0x26
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF366
	.byte	0x20
	.byte	0x30
	.byte	0x6
	.4byte	0xc5
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF367
	.byte	0x20
	.byte	0x32
	.byte	0x6
	.4byte	0xc5
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF368
	.byte	0x20
	.byte	0x33
	.byte	0x6
	.4byte	0x3de
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF369
	.byte	0x20
	.byte	0x35
	.byte	0x6
	.4byte	0xc5
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF370
	.byte	0x20
	.byte	0x36
	.byte	0x6
	.4byte	0xc5
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF371
	.byte	0x20
	.byte	0x37
	.byte	0x6
	.4byte	0xc5
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF372
	.byte	0x20
	.byte	0x38
	.byte	0xc
	.4byte	0x14af
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF373
	.byte	0x20
	.byte	0x3a
	.byte	0x11
	.4byte	0x12a7
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF374
	.byte	0x20
	.byte	0x3b
	.byte	0x6
	.4byte	0x3de
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF375
	.byte	0x20
	.byte	0x3b
	.byte	0x14
	.4byte	0x3de
	.byte	0xc1
	.uleb128 0x2
	.4byte	.LASF376
	.byte	0x20
	.byte	0x3c
	.byte	0xc
	.4byte	0x14bf
	.byte	0xc2
	.byte	0
	.uleb128 0x9
	.4byte	0x119f
	.uleb128 0xa
	.4byte	0x11f6
	.4byte	0x14bf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x11f6
	.4byte	0x14cf
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF377
	.byte	0x20
	.byte	0x3d
	.byte	0x3
	.4byte	0x12b3
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x21
	.byte	0x3
	.byte	0xe
	.4byte	0x14f5
	.uleb128 0x1
	.4byte	.LASF378
	.byte	0
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF380
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.4byte	0x14db
	.uleb128 0x7
	.byte	0x10
	.byte	0x22
	.byte	0x29
	.byte	0x2
	.4byte	0x1537
	.uleb128 0xe
	.ascii	"w\000"
	.byte	0x22
	.byte	0x2b
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xe
	.ascii	"z\000"
	.byte	0x22
	.byte	0x2c
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0xe
	.ascii	"y\000"
	.byte	0x22
	.byte	0x2d
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0xe
	.ascii	"x\000"
	.byte	0x22
	.byte	0x2e
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x10
	.byte	0x22
	.byte	0x34
	.byte	0x2
	.4byte	0x156d
	.uleb128 0xe
	.ascii	"r\000"
	.byte	0x22
	.byte	0x36
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xe
	.ascii	"k\000"
	.byte	0x22
	.byte	0x37
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0xe
	.ascii	"j\000"
	.byte	0x22
	.byte	0x38
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0xe
	.ascii	"i\000"
	.byte	0x22
	.byte	0x39
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.byte	0x10
	.byte	0x22
	.byte	0x24
	.byte	0x9
	.4byte	0x158b
	.uleb128 0x1e
	.4byte	0x1501
	.uleb128 0x1e
	.4byte	0x1537
	.uleb128 0x1a
	.ascii	"c\000"
	.byte	0x22
	.byte	0x3f
	.byte	0x8
	.4byte	0x158b
	.byte	0
	.uleb128 0xa
	.4byte	0x26
	.4byte	0x159b
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF381
	.byte	0x22
	.byte	0x40
	.byte	0x3
	.4byte	0x156d
	.uleb128 0x17
	.byte	0x40
	.byte	0x22
	.byte	0x4c
	.byte	0x9
	.4byte	0x15c5
	.uleb128 0x1a
	.ascii	"r\000"
	.byte	0x22
	.byte	0x4e
	.byte	0xb
	.4byte	0x15c5
	.uleb128 0x1a
	.ascii	"m\000"
	.byte	0x22
	.byte	0x4f
	.byte	0x8
	.4byte	0x15d5
	.byte	0
	.uleb128 0xa
	.4byte	0x159b
	.4byte	0x15d5
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x26
	.4byte	0x15e5
	.uleb128 0x8
	.4byte	0xcc
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF382
	.byte	0x22
	.byte	0x50
	.byte	0x3
	.4byte	0x15a7
	.uleb128 0x20
	.4byte	0x15e5
	.uleb128 0x7
	.byte	0x18
	.byte	0x23
	.byte	0x4
	.byte	0x9
	.4byte	0x1627
	.uleb128 0x2
	.4byte	.LASF383
	.byte	0x23
	.byte	0x6
	.byte	0x6
	.4byte	0x5b6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF384
	.byte	0x23
	.byte	0x7
	.byte	0x6
	.4byte	0x557
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF385
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.4byte	0xc5
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF386
	.byte	0x23
	.byte	0x9
	.byte	0x3
	.4byte	0x15f6
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.4byte	0x1659
	.uleb128 0x22
	.4byte	.LASF387
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.4byte	0x542
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.4byte	.LASF388
	.byte	0x4
	.byte	0xa
	.byte	0x1a
	.4byte	0x542
	.byte	0xc
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.byte	0x2
	.4byte	0x1674
	.uleb128 0x21
	.4byte	.LASF389
	.byte	0x4
	.byte	0x9
	.byte	0x7
	.4byte	0x542
	.uleb128 0x1e
	.4byte	0x1633
	.byte	0
	.uleb128 0x7
	.byte	0x14
	.byte	0x4
	.byte	0x4
	.byte	0x9
	.4byte	0x16df
	.uleb128 0x2
	.4byte	.LASF390
	.byte	0x4
	.byte	0x6
	.byte	0x6
	.4byte	0x537
	.byte	0
	.uleb128 0x2
	.4byte	.LASF391
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.4byte	0x537
	.byte	0x2
	.uleb128 0x27
	.4byte	0x1659
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF392
	.byte	0x4
	.byte	0xc
	.byte	0x6
	.4byte	0x537
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF393
	.byte	0x4
	.byte	0xc
	.byte	0xf
	.4byte	0x537
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF394
	.byte	0x4
	.byte	0xd
	.byte	0x6
	.4byte	0x542
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF395
	.byte	0x4
	.byte	0xe
	.byte	0x6
	.4byte	0x537
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF396
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.4byte	0x537
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.4byte	.LASF397
	.byte	0x4
	.byte	0xf
	.byte	0x3
	.4byte	0x1674
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x4
	.byte	0x12
	.byte	0x1
	.4byte	0x170b
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF399
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF400
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF401
	.byte	0x4
	.byte	0x16
	.byte	0x3
	.4byte	0x16eb
	.uleb128 0x7
	.byte	0x18
	.byte	0x24
	.byte	0x4
	.byte	0x9
	.4byte	0x172e
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x24
	.byte	0x6
	.byte	0x8
	.4byte	0x172e
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x2b1
	.4byte	0x173e
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF402
	.byte	0x24
	.byte	0x7
	.byte	0x3
	.4byte	0x1717
	.uleb128 0x17
	.byte	0x4
	.byte	0x24
	.byte	0xb
	.byte	0x2
	.4byte	0x176c
	.uleb128 0x21
	.4byte	.LASF242
	.byte	0x24
	.byte	0xd
	.byte	0x9
	.4byte	0x2b1
	.uleb128 0x21
	.4byte	.LASF403
	.byte	0x24
	.byte	0xe
	.byte	0x10
	.4byte	0x176c
	.byte	0
	.uleb128 0x9
	.4byte	0x173e
	.uleb128 0x7
	.byte	0x4
	.byte	0x24
	.byte	0x17
	.byte	0x3
	.4byte	0x1795
	.uleb128 0x2
	.4byte	.LASF404
	.byte	0x24
	.byte	0x19
	.byte	0x8
	.4byte	0x537
	.byte	0
	.uleb128 0x2
	.4byte	.LASF405
	.byte	0x24
	.byte	0x1a
	.byte	0x8
	.4byte	0x537
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.byte	0x2
	.4byte	0x17b0
	.uleb128 0x1a
	.ascii	"dim\000"
	.byte	0x24
	.byte	0x16
	.byte	0x7
	.4byte	0x542
	.uleb128 0x1e
	.4byte	0x1771
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x24
	.byte	0x23
	.byte	0x3
	.4byte	0x17e1
	.uleb128 0x2
	.4byte	.LASF406
	.byte	0x24
	.byte	0x25
	.byte	0x8
	.4byte	0x537
	.byte	0
	.uleb128 0x2
	.4byte	.LASF407
	.byte	0x24
	.byte	0x26
	.byte	0x7
	.4byte	0x523
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF408
	.byte	0x24
	.byte	0x27
	.byte	0x7
	.4byte	0x523
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x24
	.byte	0x20
	.byte	0x2
	.4byte	0x17fc
	.uleb128 0x21
	.4byte	.LASF409
	.byte	0x24
	.byte	0x22
	.byte	0x7
	.4byte	0x542
	.uleb128 0x1e
	.4byte	0x17b0
	.byte	0
	.uleb128 0x7
	.byte	0x18
	.byte	0x24
	.byte	0x9
	.byte	0x9
	.4byte	0x184e
	.uleb128 0x27
	.4byte	0x174a
	.byte	0
	.uleb128 0x3b
	.ascii	"fmt\000"
	.byte	0x24
	.byte	0x11
	.byte	0xf
	.4byte	0x954
	.byte	0x4
	.byte	0x20
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x24
	.byte	0x12
	.byte	0x9
	.4byte	0x29e
	.byte	0x1c
	.byte	0x24
	.uleb128 0x27
	.4byte	0x1795
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF410
	.byte	0x24
	.byte	0x1e
	.byte	0x6
	.4byte	0x542
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF411
	.byte	0x24
	.byte	0x1f
	.byte	0x6
	.4byte	0x542
	.byte	0x10
	.uleb128 0x27
	.4byte	0x17e1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF412
	.byte	0x24
	.byte	0x2a
	.byte	0x3
	.4byte	0x17fc
	.uleb128 0x7
	.byte	0x10
	.byte	0x25
	.byte	0x4
	.byte	0x9
	.4byte	0x18db
	.uleb128 0x2
	.4byte	.LASF413
	.byte	0x25
	.byte	0x6
	.byte	0x8
	.4byte	0x2b1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF414
	.byte	0x25
	.byte	0x7
	.byte	0x8
	.4byte	0x2b1
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF405
	.byte	0x25
	.byte	0x8
	.byte	0x6
	.4byte	0x537
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF404
	.byte	0x25
	.byte	0x9
	.byte	0x6
	.4byte	0x537
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF415
	.byte	0x25
	.byte	0xa
	.byte	0xf
	.4byte	0x98c
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF416
	.byte	0x25
	.byte	0xb
	.byte	0xf
	.4byte	0x9b8
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF417
	.byte	0x25
	.byte	0xc
	.byte	0x6
	.4byte	0x3de
	.byte	0xe
	.uleb128 0x22
	.4byte	.LASF418
	.byte	0x25
	.byte	0xd
	.byte	0x5
	.4byte	0x523
	.byte	0x4
	.byte	0x78
	.uleb128 0x22
	.4byte	.LASF419
	.byte	0x25
	.byte	0xe
	.byte	0x5
	.4byte	0x523
	.byte	0x4
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF420
	.byte	0x25
	.byte	0xf
	.byte	0x3
	.4byte	0x185a
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x25
	.byte	0x13
	.byte	0x1
	.4byte	0x1907
	.uleb128 0x1
	.4byte	.LASF421
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF422
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF423
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF424
	.byte	0x25
	.byte	0x17
	.byte	0x3
	.4byte	0x18e7
	.uleb128 0x5
	.4byte	.LASF425
	.byte	0x3
	.byte	0x4
	.byte	0x25
	.4byte	0x191f
	.uleb128 0x3c
	.4byte	.LASF560
	.byte	0x24
	.byte	0x3
	.byte	0x6
	.byte	0x8
	.4byte	0x19af
	.uleb128 0x2
	.4byte	.LASF426
	.byte	0x3
	.byte	0x8
	.byte	0x14
	.4byte	0x19af
	.byte	0
	.uleb128 0x2
	.4byte	.LASF427
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.4byte	0x19af
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF428
	.byte	0x3
	.byte	0x9
	.byte	0xf
	.4byte	0x18db
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF429
	.byte	0x3
	.byte	0xb
	.byte	0x6
	.4byte	0x3de
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF430
	.byte	0x3
	.byte	0xc
	.byte	0x6
	.4byte	0x3de
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF431
	.byte	0x3
	.byte	0xc
	.byte	0x11
	.4byte	0x3de
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF432
	.byte	0x3
	.byte	0xe
	.byte	0x6
	.4byte	0x3de
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF433
	.byte	0x3
	.byte	0xf
	.byte	0xe
	.4byte	0x7f2
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF434
	.byte	0x3
	.byte	0x10
	.byte	0xe
	.4byte	0x818
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF435
	.byte	0x3
	.byte	0x11
	.byte	0x6
	.4byte	0x542
	.byte	0x20
	.byte	0
	.uleb128 0x9
	.4byte	0x1913
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x3
	.byte	0x16
	.byte	0x1
	.4byte	0x19ce
	.uleb128 0x1
	.4byte	.LASF436
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF437
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.byte	0x9
	.4byte	0x19f0
	.uleb128 0x1a
	.ascii	"__i\000"
	.byte	0x3
	.byte	0x2c
	.byte	0x6
	.4byte	0xc5
	.uleb128 0x1a
	.ascii	"__e\000"
	.byte	0x3
	.byte	0x2d
	.byte	0xf
	.4byte	0x9b8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF438
	.byte	0x3
	.byte	0x2e
	.byte	0x3
	.4byte	0x19ce
	.uleb128 0xb
	.byte	0x1
	.4byte	0x4c
	.byte	0x26
	.byte	0x10
	.byte	0xe
	.4byte	0x1a28
	.uleb128 0x1
	.4byte	.LASF439
	.byte	0
	.uleb128 0x1
	.4byte	.LASF440
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF441
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF442
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF443
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF444
	.byte	0x26
	.byte	0x10
	.byte	0x75
	.4byte	0x19fc
	.uleb128 0x30
	.4byte	.LASF452
	.4byte	0x4c
	.byte	0x9
	.4byte	0x1a6d
	.uleb128 0x1
	.4byte	.LASF445
	.byte	0
	.uleb128 0x1
	.4byte	.LASF446
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF447
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF448
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF449
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF451
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.4byte	.LASF453
	.4byte	0x4c
	.byte	0x14
	.4byte	0x1ab2
	.uleb128 0x1
	.4byte	.LASF454
	.byte	0
	.uleb128 0x1
	.4byte	.LASF455
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF456
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF457
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF458
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF460
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF461
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF462
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x532
	.4byte	0x1abd
	.uleb128 0x3d
	.byte	0
	.uleb128 0x20
	.4byte	0x1ab2
	.uleb128 0x23
	.4byte	.LASF463
	.byte	0x28
	.byte	0x2
	.byte	0x11
	.4byte	0x1abd
	.uleb128 0x23
	.4byte	.LASF464
	.byte	0x28
	.byte	0x3
	.byte	0x12
	.4byte	0x552
	.uleb128 0x23
	.4byte	.LASF465
	.byte	0x29
	.byte	0x2
	.byte	0x11
	.4byte	0x1abd
	.uleb128 0x23
	.4byte	.LASF466
	.byte	0x29
	.byte	0x3
	.byte	0x12
	.4byte	0x552
	.uleb128 0xa
	.4byte	0x19af
	.4byte	0x1b02
	.uleb128 0x8
	.4byte	0xcc
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.4byte	.LASF467
	.byte	0x1e
	.byte	0x1a
	.4byte	0x1af2
	.uleb128 0x5
	.byte	0x3
	.4byte	renderTargets
	.uleb128 0x10
	.4byte	.LASF468
	.byte	0x1f
	.byte	0x1a
	.4byte	0x19af
	.uleb128 0x5
	.byte	0x3
	.4byte	lowerScreen
	.uleb128 0x10
	.4byte	.LASF469
	.byte	0x21
	.byte	0x10
	.4byte	0x1b35
	.uleb128 0x5
	.byte	0x3
	.4byte	world_dvlb
	.uleb128 0x9
	.4byte	0xdc5
	.uleb128 0x10
	.4byte	.LASF470
	.byte	0x21
	.byte	0x1d
	.4byte	0x1b35
	.uleb128 0x5
	.byte	0x3
	.4byte	gui_dvlb
	.uleb128 0x10
	.4byte	.LASF471
	.byte	0x22
	.byte	0x18
	.4byte	0xeb9
	.uleb128 0x5
	.byte	0x3
	.4byte	world_shader
	.uleb128 0x10
	.4byte	.LASF472
	.byte	0x22
	.byte	0x26
	.4byte	0xeb9
	.uleb128 0x5
	.byte	0x3
	.4byte	gui_shader
	.uleb128 0x10
	.4byte	.LASF473
	.byte	0x23
	.byte	0xc
	.4byte	0xc5
	.uleb128 0x5
	.byte	0x3
	.4byte	world_shader_uLocProjection
	.uleb128 0x10
	.4byte	.LASF474
	.byte	0x23
	.byte	0x29
	.4byte	0xc5
	.uleb128 0x5
	.byte	0x3
	.4byte	gui_shader_uLocProjection
	.uleb128 0x10
	.4byte	.LASF475
	.byte	0x25
	.byte	0x15
	.4byte	0x1627
	.uleb128 0x5
	.byte	0x3
	.4byte	world_vertexAttribs
	.uleb128 0x10
	.4byte	.LASF476
	.byte	0x25
	.byte	0x2a
	.4byte	0x1627
	.uleb128 0x5
	.byte	0x3
	.4byte	gui_vertexAttribs
	.uleb128 0x10
	.4byte	.LASF477
	.byte	0x27
	.byte	0x10
	.4byte	0x184e
	.uleb128 0x5
	.byte	0x3
	.4byte	logoTex
	.uleb128 0x10
	.4byte	.LASF351
	.byte	0x29
	.byte	0xf
	.4byte	0x14aa
	.uleb128 0x5
	.byte	0x3
	.4byte	world
	.uleb128 0x10
	.4byte	.LASF478
	.byte	0x2a
	.byte	0x10
	.4byte	0x1be4
	.uleb128 0x5
	.byte	0x3
	.4byte	player
	.uleb128 0x9
	.4byte	0x14cf
	.uleb128 0x10
	.4byte	.LASF326
	.byte	0x2b
	.byte	0x13
	.4byte	0x119a
	.uleb128 0x5
	.byte	0x3
	.4byte	workqueue
	.uleb128 0x10
	.4byte	.LASF479
	.byte	0x2d
	.byte	0x13
	.4byte	0x1c0b
	.uleb128 0x5
	.byte	0x3
	.4byte	gamestate
	.uleb128 0x9
	.4byte	0x14f5
	.uleb128 0x23
	.4byte	.LASF480
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x3de
	.uleb128 0xd
	.4byte	.LASF481
	.byte	0x25
	.byte	0x1f
	.4byte	0x1c3c
	.uleb128 0x4
	.4byte	0x1c3c
	.uleb128 0x4
	.4byte	0x1907
	.uleb128 0x4
	.4byte	0x542
	.uleb128 0x4
	.4byte	0x542
	.byte	0
	.uleb128 0x9
	.4byte	0x18db
	.uleb128 0x12
	.4byte	.LASF485
	.byte	0x2c
	.byte	0x21
	.byte	0x8
	.4byte	0x2b1
	.4byte	0x1c61
	.uleb128 0x4
	.4byte	0x2b1
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x29e
	.byte	0
	.uleb128 0xd
	.4byte	.LASF482
	.byte	0x3
	.byte	0x22
	.4byte	0x1c72
	.uleb128 0x4
	.4byte	0x523
	.byte	0
	.uleb128 0x14
	.4byte	.LASF483
	.byte	0x2a
	.byte	0xd
	.4byte	0x1c7f
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF484
	.byte	0x2b
	.byte	0xa
	.4byte	0x1c8c
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF486
	.byte	0x2d
	.byte	0x11
	.byte	0x5
	.4byte	0xc5
	.4byte	0x1cbb
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x1cbb
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0x9
	.4byte	0x11f6
	.uleb128 0xd
	.4byte	.LASF487
	.byte	0x2d
	.byte	0xf
	.4byte	0x1ce5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x1cbb
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x512
	.byte	0
	.uleb128 0x14
	.4byte	.LASF488
	.byte	0x2e
	.byte	0x11
	.4byte	0x1cf2
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF489
	.byte	0x26
	.byte	0x2a
	.4byte	0x1d03
	.uleb128 0x4
	.4byte	0x7f2
	.byte	0
	.uleb128 0x12
	.4byte	.LASF490
	.byte	0x26
	.byte	0x1c
	.byte	0x5
	.4byte	0xc5
	.4byte	0x1d3d
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xeb
	.uleb128 0x4
	.4byte	0x3de
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x512
	.uleb128 0x4
	.4byte	0x281
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF491
	.byte	0x26
	.byte	0x23
	.4byte	0x1d4e
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF492
	.byte	0x26
	.byte	0x13
	.4byte	0x1d5f
	.uleb128 0x4
	.4byte	0x1d5f
	.byte	0
	.uleb128 0x9
	.4byte	0x184e
	.uleb128 0xd
	.4byte	.LASF493
	.byte	0x2f
	.byte	0xa
	.4byte	0x1d89
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x1d89
	.uleb128 0x4
	.4byte	0x14aa
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x9
	.4byte	0x15e5
	.uleb128 0x28
	.4byte	.LASF494
	.2byte	0x16a
	.4byte	0x1da9
	.uleb128 0x4
	.4byte	0x1d89
	.uleb128 0x4
	.4byte	0x1da9
	.uleb128 0x4
	.4byte	0x1da9
	.byte	0
	.uleb128 0x9
	.4byte	0x15f1
	.uleb128 0x28
	.4byte	.LASF495
	.2byte	0x1c3
	.4byte	0x1dc9
	.uleb128 0x4
	.4byte	0x1d89
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x3de
	.byte	0
	.uleb128 0x28
	.4byte	.LASF496
	.2byte	0x1a9
	.4byte	0x1dee
	.uleb128 0x4
	.4byte	0x1d89
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x3de
	.byte	0
	.uleb128 0x28
	.4byte	.LASF497
	.2byte	0x238
	.4byte	0x1e22
	.uleb128 0x4
	.4byte	0x1d89
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x3de
	.byte	0
	.uleb128 0xd
	.4byte	.LASF498
	.byte	0x26
	.byte	0x17
	.4byte	0x1e5b
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF499
	.byte	0x26
	.byte	0x12
	.4byte	0x1e6c
	.uleb128 0x4
	.4byte	0x1a28
	.byte	0
	.uleb128 0xd
	.4byte	.LASF500
	.byte	0x30
	.byte	0xc
	.4byte	0x1e7d
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.4byte	.LASF501
	.byte	0x24
	.byte	0x39
	.4byte	0x1e93
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x1d5f
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF502
	.byte	0x9
	.byte	0x37
	.byte	0x7
	.4byte	0x2b1
	.4byte	0x1ea5
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF503
	.byte	0x23
	.byte	0x10
	.4byte	0x1eb6
	.uleb128 0x4
	.4byte	0x1eb6
	.byte	0
	.uleb128 0x9
	.4byte	0x1627
	.uleb128 0xd
	.4byte	.LASF504
	.byte	0x31
	.byte	0x12
	.4byte	0x1ecc
	.uleb128 0x4
	.4byte	0x1ecc
	.byte	0
	.uleb128 0x9
	.4byte	0xeb9
	.uleb128 0x12
	.4byte	.LASF505
	.byte	0x4
	.byte	0x18
	.byte	0xd
	.4byte	0x1ee7
	.4byte	0x1ee7
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0x9
	.4byte	0x16df
	.uleb128 0xd
	.4byte	.LASF506
	.byte	0x26
	.byte	0x29
	.4byte	0x1f02
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0x12
	.4byte	.LASF507
	.byte	0x3
	.byte	0x20
	.byte	0x5
	.4byte	0x3de
	.4byte	0x1f18
	.uleb128 0x4
	.4byte	0x19af
	.byte	0
	.uleb128 0x14
	.4byte	.LASF508
	.byte	0x32
	.byte	0xc
	.4byte	0x1f25
	.uleb128 0x13
	.byte	0
	.uleb128 0x12
	.4byte	.LASF509
	.byte	0x3
	.byte	0x1f
	.byte	0x5
	.4byte	0x3de
	.4byte	0x1f3b
	.uleb128 0x4
	.4byte	0x523
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF561
	.byte	0x31
	.byte	0xe
	.byte	0x6
	.uleb128 0xd
	.4byte	.LASF510
	.byte	0x16
	.byte	0x74
	.4byte	0x1f54
	.uleb128 0x4
	.4byte	0x1b35
	.byte	0
	.uleb128 0x12
	.4byte	.LASF511
	.byte	0x17
	.byte	0x54
	.byte	0x8
	.4byte	0x5aa
	.4byte	0x1f6a
	.uleb128 0x4
	.4byte	0x1ecc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF512
	.byte	0x26
	.byte	0xe
	.4byte	0x1f77
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF513
	.byte	0x2a
	.byte	0x9
	.4byte	0x1f84
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF514
	.byte	0x30
	.byte	0xa
	.4byte	0x1f91
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF515
	.byte	0x32
	.byte	0xa
	.4byte	0x1f9e
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF516
	.byte	0x9
	.byte	0x35
	.4byte	0x1fab
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF517
	.byte	0x1c
	.byte	0x10
	.4byte	0x1fb8
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF518
	.byte	0x24
	.byte	0x3b
	.4byte	0x1fc9
	.uleb128 0x4
	.4byte	0x1d5f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF519
	.byte	0x33
	.byte	0x6
	.4byte	0x1fdf
	.uleb128 0x4
	.4byte	0x1d5f
	.uleb128 0x4
	.4byte	0x2bf
	.byte	0
	.uleb128 0x14
	.4byte	.LASF520
	.byte	0x9
	.byte	0x34
	.4byte	0x1fec
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF521
	.byte	0x34
	.byte	0x5
	.4byte	0x1ffd
	.uleb128 0x4
	.4byte	0xa11
	.byte	0
	.uleb128 0x14
	.4byte	.LASF522
	.byte	0x2a
	.byte	0x8
	.4byte	0x200a
	.uleb128 0x13
	.byte	0
	.uleb128 0xd
	.4byte	.LASF523
	.byte	0x26
	.byte	0xd
	.4byte	0x201b
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF524
	.byte	0x30
	.byte	0x9
	.4byte	0x203b
	.uleb128 0x4
	.4byte	0x1be4
	.uleb128 0x4
	.4byte	0x14aa
	.uleb128 0x4
	.4byte	0x119a
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF525
	.byte	0x32
	.byte	0x9
	.4byte	0x2051
	.uleb128 0x4
	.4byte	0x14aa
	.uleb128 0x4
	.4byte	0x1be4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF526
	.byte	0x23
	.byte	0xc
	.byte	0x5
	.4byte	0xc5
	.4byte	0x2076
	.uleb128 0x4
	.4byte	0x1eb6
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x9e8
	.uleb128 0x4
	.4byte	0xc5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF527
	.byte	0x23
	.byte	0xb
	.4byte	0x2087
	.uleb128 0x4
	.4byte	0x1eb6
	.byte	0
	.uleb128 0x12
	.4byte	.LASF528
	.byte	0x17
	.byte	0x48
	.byte	0x4
	.4byte	0x567
	.4byte	0x20a2
	.uleb128 0x4
	.4byte	0xeb4
	.uleb128 0x4
	.4byte	0x281
	.byte	0
	.uleb128 0x12
	.4byte	.LASF529
	.byte	0x17
	.byte	0x5b
	.byte	0x8
	.4byte	0x5aa
	.4byte	0x20bd
	.uleb128 0x4
	.4byte	0x1ecc
	.uleb128 0x4
	.4byte	0xdc0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF530
	.byte	0x17
	.byte	0x4e
	.byte	0x8
	.4byte	0x5aa
	.4byte	0x20d3
	.uleb128 0x4
	.4byte	0x1ecc
	.byte	0
	.uleb128 0x12
	.4byte	.LASF531
	.byte	0x16
	.byte	0x6e
	.byte	0x9
	.4byte	0x1b35
	.4byte	0x20ee
	.uleb128 0x4
	.4byte	0x7d3
	.uleb128 0x4
	.4byte	0x542
	.byte	0
	.uleb128 0xd
	.4byte	.LASF532
	.byte	0x3
	.byte	0x41
	.4byte	0x210e
	.uleb128 0x4
	.4byte	0x19af
	.uleb128 0x4
	.4byte	0x7f2
	.uleb128 0x4
	.4byte	0x818
	.uleb128 0x4
	.4byte	0x542
	.byte	0
	.uleb128 0x12
	.4byte	.LASF533
	.byte	0x3
	.byte	0x3e
	.byte	0x13
	.4byte	0x19af
	.4byte	0x2133
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0xc5
	.uleb128 0x4
	.4byte	0x98c
	.uleb128 0x4
	.4byte	0x19f0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF534
	.byte	0x31
	.byte	0xd
	.byte	0x5
	.4byte	0x3de
	.4byte	0x2149
	.uleb128 0x4
	.4byte	0x29e
	.byte	0
	.uleb128 0x31
	.4byte	.LASF536
	.byte	0x7c
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2829
	.uleb128 0x2b
	.ascii	"iod\000"
	.byte	0x7d
	.byte	0x8
	.4byte	0x26
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x32
	.4byte	.LLRL6
	.4byte	0x26ce
	.uleb128 0x2b
	.ascii	"i\000"
	.byte	0x83
	.byte	0xb
	.4byte	0xc5
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x33
	.4byte	.LLRL8
	.uleb128 0x2b
	.ascii	"env\000"
	.byte	0x89
	.byte	0xf
	.4byte	0x1ee7
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x32
	.4byte	.LLRL10
	.4byte	0x243f
	.uleb128 0x10
	.4byte	.LASF535
	.byte	0x99
	.byte	0xc
	.4byte	0x15e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x10
	.4byte	.LASF352
	.byte	0x9d
	.byte	0xc
	.4byte	0x15e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x40
	.ascii	"vp\000"
	.byte	0x1
	.byte	0xa3
	.byte	0xc
	.4byte	0x15e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x24
	.4byte	0x2cd2
	.4byte	.LBI57
	.byte	.LVU166
	.4byte	.LLRL11
	.byte	0x9e
	.byte	0x4
	.4byte	0x2287
	.uleb128 0xc
	.4byte	0x2cdd
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x34
	.4byte	0x2cea
	.4byte	.LBI58
	.byte	.LVU168
	.4byte	.LLRL11
	.2byte	0x141
	.uleb128 0xc
	.4byte	0x2d1f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	0x2d15
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	0x2d0b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	0x2d01
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	0x2cf5
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x34
	.4byte	0x2d2a
	.4byte	.LBI60
	.byte	.LVU170
	.4byte	.LLRL18
	.2byte	0x134
	.uleb128 0xc
	.4byte	0x2d35
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x25
	.4byte	.LVL58
	.4byte	0x2d86
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL57
	.4byte	0x1dee
	.4byte	0x22d2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3fc90fdb
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x3fd55555
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x51
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x43
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x45
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x53
	.uleb128 0x26
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL60
	.4byte	0x1dc9
	.4byte	0x2311
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
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
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xc28c0000
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL61
	.4byte	0x1dae
	.4byte	0x2337
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0xbf060a92
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x6
	.4byte	.LVL62
	.4byte	0x1d8e
	.4byte	0x235a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x6
	.4byte	.LVL63
	.4byte	0x1d64
	.4byte	0x2387
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
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
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL64
	.4byte	0x1d4e
	.4byte	0x239e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+136
	.byte	0
	.uleb128 0x6
	.4byte	.LVL65
	.4byte	0x1d3d
	.4byte	0x23b1
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LVL66
	.4byte	0x1e22
	.4byte	0x23fa
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
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
	.byte	0xa
	.2byte	0x100
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x25
	.4byte	.LVL67
	.4byte	0x1d03
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
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
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7fff
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x2c03
	.4byte	.LBI73
	.byte	.LVU111
	.4byte	.LLRL20
	.byte	0x84
	.byte	0x3
	.4byte	0x24a7
	.uleb128 0xc
	.4byte	0x2c32
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xc
	.4byte	0x2c26
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xc
	.4byte	0x2c1a
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xc
	.4byte	0x2c0e
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x25
	.4byte	.LVL50
	.4byte	0x1c1c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.byte	0x11
	.sleb128 -1864761345
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x2cbb
	.4byte	.LBI77
	.byte	.LVU130
	.4byte	.LLRL25
	.byte	0x8a
	.byte	0x3
	.4byte	0x24c9
	.uleb128 0xc
	.4byte	0x2cc6
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0x24
	.4byte	0x2c6e
	.4byte	.LBI81
	.byte	.LVU141
	.4byte	.LLRL27
	.byte	0x8b
	.byte	0x3
	.4byte	0x2532
	.uleb128 0xc
	.4byte	0x2ca4
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0xc
	.4byte	0x2c9a
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0xc
	.4byte	0x2c90
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0xc
	.4byte	0x2c84
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0xc
	.4byte	0x2c79
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x33
	.4byte	.LLRL27
	.uleb128 0x41
	.4byte	0x2cae
	.4byte	.LLST33
	.4byte	.LVUS33
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x2c3f
	.4byte	.LBI85
	.byte	.LVU149
	.4byte	.LLRL34
	.byte	0x8c
	.byte	0x3
	.4byte	0x256e
	.uleb128 0xc
	.4byte	0x2c61
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0xc
	.4byte	0x2c55
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0xc
	.4byte	0x2c4a
	.4byte	.LLST37
	.4byte	.LVUS37
	.byte	0
	.uleb128 0xf
	.4byte	.LVL51
	.4byte	0x1f02
	.uleb128 0x6
	.4byte	.LVL52
	.4byte	0x1eec
	.4byte	0x2592
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL53
	.4byte	0x1ed1
	.4byte	0x25a6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL55
	.4byte	0x1ebb
	.4byte	0x25ba
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL56
	.4byte	0x1ea5
	.4byte	0x25ce
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL68
	.4byte	0x1ebb
	.4byte	0x25e5
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+60
	.byte	0
	.uleb128 0x6
	.4byte	.LVL69
	.4byte	0x1ea5
	.4byte	0x25fc
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+112
	.byte	0
	.uleb128 0x6
	.4byte	.LVL70
	.4byte	0x1cf2
	.4byte	0x2610
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL87
	.4byte	0x1e93
	.uleb128 0x6
	.4byte	.LVL88
	.4byte	0x1e7d
	.4byte	0x262d
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL89
	.4byte	0x1e6c
	.uleb128 0x6
	.4byte	.LVL90
	.4byte	0x1e5b
	.4byte	0x2649
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.4byte	.LVL91
	.4byte	0x1e22
	.4byte	0x268e
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x34
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	.LVL92
	.4byte	0x1ebb
	.4byte	0x26a5
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+60
	.byte	0
	.uleb128 0x6
	.4byte	.LVL93
	.4byte	0x1ea5
	.4byte	0x26bc
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+112
	.byte	0
	.uleb128 0x25
	.4byte	.LVL94
	.4byte	0x1cf2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.4byte	0x2d78
	.4byte	.LBI48
	.byte	.LVU90
	.4byte	.LLRL5
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.uleb128 0x43
	.4byte	0x2c03
	.4byte	.LBI97
	.byte	.LVU204
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.byte	0x1
	.byte	0xb8
	.byte	0x2
	.4byte	0x2748
	.uleb128 0xc
	.4byte	0x2c32
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0xc
	.4byte	0x2c26
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0xc
	.4byte	0x2c1a
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0xc
	.4byte	0x2c0e
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x25
	.4byte	.LVL73
	.4byte	0x1c1c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL46
	.4byte	0x1f25
	.4byte	0x275b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.4byte	.LVL74
	.4byte	0x1f02
	.uleb128 0x6
	.4byte	.LVL75
	.4byte	0x1eec
	.4byte	0x277f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x140
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL76
	.4byte	0x1ce5
	.uleb128 0xf
	.4byte	.LVL77
	.4byte	0x1c72
	.uleb128 0x6
	.4byte	.LVL78
	.4byte	0x1cf2
	.4byte	0x27a4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x44
	.4byte	.LVL80
	.4byte	0x1c61
	.4byte	0x27b8
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL82
	.4byte	0x1d3d
	.4byte	0x27cb
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LVL83
	.4byte	0x1cc0
	.4byte	0x27e9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x6
	.4byte	.LVL84
	.4byte	0x1c8c
	.4byte	0x2816
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xa0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x74
	.sleb128 194
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.4byte	.LVL85
	.4byte	0x1c7f
	.uleb128 0xf
	.4byte	.LVL96
	.4byte	0x1f18
	.byte	0
	.uleb128 0x31
	.4byte	.LASF537
	.byte	0x65
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28cc
	.uleb128 0x6
	.4byte	.LVL33
	.4byte	0x1fb8
	.4byte	0x2852
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 136
	.byte	0
	.uleb128 0xf
	.4byte	.LVL34
	.4byte	0x1fab
	.uleb128 0xf
	.4byte	.LVL35
	.4byte	0x1f9e
	.uleb128 0xf
	.4byte	.LVL36
	.4byte	0x1f91
	.uleb128 0xf
	.4byte	.LVL37
	.4byte	0x1f84
	.uleb128 0xf
	.4byte	.LVL38
	.4byte	0x1f77
	.uleb128 0xf
	.4byte	.LVL39
	.4byte	0x1f6a
	.uleb128 0x6
	.4byte	.LVL40
	.4byte	0x1f54
	.4byte	0x289c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 60
	.byte	0
	.uleb128 0xf
	.4byte	.LVL41
	.4byte	0x1f43
	.uleb128 0x6
	.4byte	.LVL42
	.4byte	0x1f54
	.4byte	0x28b9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 32
	.byte	0
	.uleb128 0xf
	.4byte	.LVL43
	.4byte	0x1f43
	.uleb128 0x45
	.4byte	.LVL44
	.4byte	0x1f3b
	.byte	0
	.uleb128 0x46
	.4byte	.LASF562
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c03
	.uleb128 0x29
	.4byte	.LASF538
	.byte	0x1b
	.4byte	0x14aa
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x29
	.4byte	.LASF539
	.byte	0x2b
	.4byte	0x1be4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x29
	.4byte	.LASF305
	.byte	0x3f
	.4byte	0x119a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x29
	.4byte	.LASF540
	.byte	0x51
	.4byte	0x1c0b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x6
	.4byte	.LVL2
	.4byte	0x2133
	.4byte	0x293f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.4byte	.LVL3
	.4byte	0x210e
	.4byte	0x2966
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL4
	.4byte	0x210e
	.4byte	0x298d
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x190
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL5
	.4byte	0x20ee
	.4byte	0x29ae
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
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
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x6
	.4byte	.LVL6
	.4byte	0x20ee
	.4byte	0x29ce
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0x6
	.4byte	.LVL7
	.4byte	0x210e
	.4byte	0x29f5
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x140
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
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL8
	.4byte	0x20ee
	.4byte	0x2a15
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
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
	.byte	0xa
	.2byte	0x1000
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x20d3
	.uleb128 0x6
	.4byte	.LVL10
	.4byte	0x20bd
	.4byte	0x2a32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL11
	.4byte	0x20a2
	.4byte	0x2a46
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL12
	.4byte	0x2087
	.4byte	0x2a5a
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x20d3
	.uleb128 0x6
	.4byte	.LVL14
	.4byte	0x20bd
	.4byte	0x2a77
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL15
	.4byte	0x20a2
	.4byte	0x2a8b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL16
	.4byte	0x2087
	.4byte	0x2a9f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL17
	.4byte	0x2076
	.4byte	0x2ab3
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL18
	.4byte	0x2051
	.4byte	0x2ad7
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
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
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.4byte	.LVL19
	.4byte	0x2051
	.4byte	0x2afa
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x6
	.4byte	.LVL20
	.4byte	0x2051
	.4byte	0x2b1d
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.4byte	.LVL21
	.4byte	0x2051
	.4byte	0x2b40
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.4byte	.LVL22
	.4byte	0x2076
	.4byte	0x2b54
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LVL23
	.4byte	0x2051
	.4byte	0x2b78
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
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
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.4byte	.LVL24
	.4byte	0x2051
	.4byte	0x2b9b
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x6
	.4byte	.LVL25
	.4byte	0x203b
	.4byte	0x2baf
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL26
	.4byte	0x201b
	.uleb128 0xf
	.4byte	.LVL27
	.4byte	0x200a
	.uleb128 0xf
	.4byte	.LVL28
	.4byte	0x1ffd
	.uleb128 0x6
	.4byte	.LVL29
	.4byte	0x1fec
	.4byte	0x2bdd
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0xf
	.4byte	.LVL30
	.4byte	0x1fdf
	.uleb128 0x47
	.4byte	.LVL32
	.4byte	0x1fc9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+136
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF545
	.byte	0x3
	.byte	0x48
	.4byte	0x2c3f
	.uleb128 0x18
	.4byte	.LASF541
	.byte	0x3
	.byte	0x48
	.byte	0x3c
	.4byte	0x19af
	.uleb128 0x18
	.4byte	.LASF542
	.byte	0x3
	.byte	0x48
	.byte	0x52
	.4byte	0x1907
	.uleb128 0x18
	.4byte	.LASF543
	.byte	0x3
	.byte	0x48
	.byte	0x61
	.4byte	0x542
	.uleb128 0x18
	.4byte	.LASF544
	.byte	0x3
	.byte	0x48
	.byte	0x71
	.4byte	0x542
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF546
	.byte	0x4
	.byte	0x4d
	.4byte	0x2c6e
	.uleb128 0x1f
	.ascii	"env\000"
	.byte	0x4d
	.byte	0x2f
	.4byte	0x1ee7
	.uleb128 0x18
	.4byte	.LASF547
	.byte	0x4
	.byte	0x4d
	.byte	0x43
	.4byte	0x170b
	.uleb128 0x18
	.4byte	.LASF410
	.byte	0x4
	.byte	0x4d
	.byte	0x59
	.4byte	0xab1
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF548
	.byte	0x4
	.byte	0x31
	.4byte	0x2cbb
	.uleb128 0x1f
	.ascii	"env\000"
	.byte	0x31
	.byte	0x2e
	.4byte	0x1ee7
	.uleb128 0x18
	.4byte	.LASF547
	.byte	0x4
	.byte	0x31
	.byte	0x42
	.4byte	0x170b
	.uleb128 0x1f
	.ascii	"s1\000"
	.byte	0x32
	.byte	0xd
	.4byte	0xa64
	.uleb128 0x1f
	.ascii	"s2\000"
	.byte	0x33
	.byte	0xd
	.4byte	0xa64
	.uleb128 0x1f
	.ascii	"s3\000"
	.byte	0x34
	.byte	0xd
	.4byte	0xa64
	.uleb128 0x48
	.4byte	.LASF410
	.byte	0x4
	.byte	0x36
	.byte	0x6
	.4byte	0xc5
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF549
	.byte	0x4
	.byte	0x1f
	.4byte	0x2cd2
	.uleb128 0x1f
	.ascii	"env\000"
	.byte	0x1f
	.byte	0x2f
	.4byte	0x1ee7
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF550
	.2byte	0x13f
	.4byte	0x2cea
	.uleb128 0x1b
	.ascii	"out\000"
	.2byte	0x13f
	.byte	0x2a
	.4byte	0x1d89
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF551
	.2byte	0x132
	.4byte	0x2d2a
	.uleb128 0x1b
	.ascii	"out\000"
	.2byte	0x132
	.byte	0x2a
	.4byte	0x1d89
	.uleb128 0x1b
	.ascii	"x\000"
	.2byte	0x132
	.byte	0x35
	.4byte	0x26
	.uleb128 0x1b
	.ascii	"y\000"
	.2byte	0x132
	.byte	0x3e
	.4byte	0x26
	.uleb128 0x1b
	.ascii	"z\000"
	.2byte	0x132
	.byte	0x47
	.4byte	0x26
	.uleb128 0x1b
	.ascii	"w\000"
	.2byte	0x132
	.byte	0x50
	.4byte	0x26
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF552
	.2byte	0x11b
	.4byte	0x2d42
	.uleb128 0x1b
	.ascii	"out\000"
	.2byte	0x11b
	.byte	0x27
	.4byte	0x1d89
	.byte	0
	.uleb128 0x35
	.4byte	.LASF553
	.byte	0xd
	.4byte	0xc5
	.4byte	0x2d5d
	.uleb128 0x18
	.4byte	.LASF554
	.byte	0x2d
	.byte	0xd
	.byte	0x2f
	.4byte	0xc5
	.byte	0
	.uleb128 0x35
	.4byte	.LASF555
	.byte	0xc
	.4byte	0xc5
	.4byte	0x2d78
	.uleb128 0x18
	.4byte	.LASF556
	.byte	0x2d
	.byte	0xc
	.byte	0x2f
	.4byte	0xc5
	.byte	0
	.uleb128 0x49
	.4byte	.LASF563
	.byte	0x2
	.2byte	0x139
	.byte	0x15
	.4byte	0x26
	.byte	0x3
	.uleb128 0x4a
	.4byte	.LASF485
	.4byte	.LASF564
	.byte	0x35
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
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 49
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 39
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.sleb128 5
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 2
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 45
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x43
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x44
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
.LVUS4:
	.uleb128 .LVU101
	.uleb128 .LVU217
	.uleb128 .LVU219
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL79-.LVL45
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL80-.LVL45
	.uleb128 .LFE226-.LVL45
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS7:
	.uleb128 .LVU110
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU202
	.uleb128 .LVU219
	.uleb128 .LVU220
	.uleb128 .LVU238
	.uleb128 .LVU250
.LLST7:
	.byte	0x6
	.4byte	.LVL47
	.byte	0x4
	.uleb128 .LVL47-.LVL47
	.uleb128 .LVL71-.LVL47
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL71-.LVL47
	.uleb128 .LVL72-.LVL47
	.uleb128 0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.LVL47
	.uleb128 .LVL81-.LVL47
	.uleb128 0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL86-.LVL47
	.uleb128 .LVL95-.LVL47
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS9:
	.uleb128 .LVU129
	.uleb128 .LVU156
.LLST9:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL55-1-.LVL54
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS12:
	.uleb128 .LVU166
	.uleb128 .LVU184
.LLST12:
	.byte	0x8
	.4byte	.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU168
	.uleb128 .LVU184
.LLST13:
	.byte	0x8
	.4byte	.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0
.LVUS17:
	.uleb128 .LVU168
	.uleb128 .LVU184
.LLST17:
	.byte	0x8
	.4byte	.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x9f
	.byte	0
.LVUS19:
	.uleb128 .LVU170
	.uleb128 .LVU172
.LLST19:
	.byte	0x8
	.4byte	.LVL57
	.uleb128 .LVL58-.LVL57
	.uleb128 0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU111
	.uleb128 .LVU114
.LLST21:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL50-.LVL48
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU111
	.uleb128 .LVU114
.LLST22:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL50-.LVL48
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x90d9ffff
	.byte	0
.LVUS23:
	.uleb128 .LVU111
	.uleb128 .LVU114
.LLST23:
	.byte	0x8
	.4byte	.LVL48
	.uleb128 .LVL50-.LVL48
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
.LLST24:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-.LVL48
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL48
	.uleb128 .LVL50-1-.LVL48
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
.LVUS26:
	.uleb128 .LVU130
	.uleb128 .LVU139
.LLST26:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS28:
	.uleb128 .LVU141
	.uleb128 .LVU147
.LLST28:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU141
	.uleb128 .LVU147
.LLST30:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU141
	.uleb128 .LVU147
.LLST32:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS33:
	.uleb128 .LVU143
	.uleb128 .LVU147
.LLST33:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS35:
	.uleb128 .LVU149
	.uleb128 .LVU154
.LLST35:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU149
	.uleb128 .LVU154
.LLST36:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS37:
	.uleb128 .LVU149
	.uleb128 .LVU154
.LLST37:
	.byte	0x8
	.4byte	.LVL54
	.uleb128 .LVL54-.LVL54
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS38:
	.uleb128 .LVU204
	.uleb128 .LVU206
.LLST38:
	.byte	0x8
	.4byte	.LVL72
	.uleb128 .LVL73-.LVL72
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 .LVU204
	.uleb128 .LVU206
.LLST39:
	.byte	0x8
	.4byte	.LVL72
	.uleb128 .LVL73-.LVL72
	.uleb128 0x3
	.byte	0x8
	.byte	0xff
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU204
	.uleb128 .LVU206
.LLST40:
	.byte	0x8
	.4byte	.LVL72
	.uleb128 .LVL73-.LVL72
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU204
	.uleb128 .LVU206
.LLST41:
	.byte	0x8
	.4byte	.LVL72
	.uleb128 .LVL73-1-.LVL72
	.uleb128 0x5
	.byte	0x3
	.4byte	lowerScreen
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU15
	.uleb128 .LVU15
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
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE224-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LVL31-.LVL0
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL31-.LVL0
	.uleb128 .LFE224-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE224-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE224-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
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
	.4byte	.LBB48
	.byte	0x4
	.uleb128 .LBB48-.LBB48
	.uleb128 .LBE48-.LBB48
	.byte	0x4
	.uleb128 .LBB52-.LBB48
	.uleb128 .LBE52-.LBB48
	.byte	0x4
	.uleb128 .LBB53-.LBB48
	.uleb128 .LBE53-.LBB48
	.byte	0
.LLRL6:
	.byte	0x5
	.4byte	.LBB54
	.byte	0x4
	.uleb128 .LBB54-.LBB54
	.uleb128 .LBE54-.LBB54
	.byte	0x4
	.uleb128 .LBB99-.LBB54
	.uleb128 .LBE99-.LBB54
	.byte	0x4
	.uleb128 .LBB100-.LBB54
	.uleb128 .LBE100-.LBB54
	.byte	0
.LLRL8:
	.byte	0x5
	.4byte	.LBB55
	.byte	0x4
	.uleb128 .LBB55-.LBB55
	.uleb128 .LBE55-.LBB55
	.byte	0x4
	.uleb128 .LBB96-.LBB55
	.uleb128 .LBE96-.LBB55
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB56
	.byte	0x4
	.uleb128 .LBB56-.LBB56
	.uleb128 .LBE56-.LBB56
	.byte	0x4
	.uleb128 .LBB95-.LBB56
	.uleb128 .LBE95-.LBB56
	.byte	0
.LLRL11:
	.byte	0x5
	.4byte	.LBB57
	.byte	0x4
	.uleb128 .LBB57-.LBB57
	.uleb128 .LBE57-.LBB57
	.byte	0x4
	.uleb128 .LBB70-.LBB57
	.uleb128 .LBE70-.LBB57
	.byte	0x4
	.uleb128 .LBB71-.LBB57
	.uleb128 .LBE71-.LBB57
	.byte	0x4
	.uleb128 .LBB72-.LBB57
	.uleb128 .LBE72-.LBB57
	.byte	0
.LLRL18:
	.byte	0x5
	.4byte	.LBB60
	.byte	0x4
	.uleb128 .LBB60-.LBB60
	.uleb128 .LBE60-.LBB60
	.byte	0x4
	.uleb128 .LBB63-.LBB60
	.uleb128 .LBE63-.LBB60
	.byte	0
.LLRL20:
	.byte	0x5
	.4byte	.LBB73
	.byte	0x4
	.uleb128 .LBB73-.LBB73
	.uleb128 .LBE73-.LBB73
	.byte	0x4
	.uleb128 .LBB76-.LBB73
	.uleb128 .LBE76-.LBB73
	.byte	0
.LLRL25:
	.byte	0x5
	.4byte	.LBB77
	.byte	0x4
	.uleb128 .LBB77-.LBB77
	.uleb128 .LBE77-.LBB77
	.byte	0x4
	.uleb128 .LBB91-.LBB77
	.uleb128 .LBE91-.LBB77
	.byte	0x4
	.uleb128 .LBB92-.LBB77
	.uleb128 .LBE92-.LBB77
	.byte	0
.LLRL27:
	.byte	0x5
	.4byte	.LBB81
	.byte	0x4
	.uleb128 .LBB81-.LBB81
	.uleb128 .LBE81-.LBB81
	.byte	0x4
	.uleb128 .LBB89-.LBB81
	.uleb128 .LBE89-.LBB81
	.byte	0x4
	.uleb128 .LBB93-.LBB81
	.uleb128 .LBE93-.LBB81
	.byte	0
.LLRL34:
	.byte	0x5
	.4byte	.LBB85
	.byte	0x4
	.uleb128 .LBB85-.LBB85
	.uleb128 .LBE85-.LBB85
	.byte	0x4
	.uleb128 .LBB90-.LBB85
	.uleb128 .LBE90-.LBB85
	.byte	0x4
	.uleb128 .LBB94-.LBB85
	.uleb128 .LBE94-.LBB85
	.byte	0
.LLRL42:
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
.LASF543:
	.ascii	"clearColor\000"
.LASF558:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/rendering/"
	.ascii	"Renderer.c\000"
.LASF418:
	.ascii	"colorMask\000"
.LASF33:
	.ascii	"Direction\000"
.LASF540:
	.ascii	"gamestate_\000"
.LASF301:
	.ascii	"chunk\000"
.LASF40:
	.ascii	"Block_Sand\000"
.LASF57:
	.ascii	"Block_Sandstone\000"
.LASF77:
	.ascii	"size_t\000"
.LASF419:
	.ascii	"depthMask\000"
.LASF353:
	.ascii	"autoJumpEnabled\000"
.LASF224:
	.ascii	"GPU_TEVSCALE_1\000"
.LASF225:
	.ascii	"GPU_TEVSCALE_2\000"
.LASF43:
	.ascii	"Block_Leaves\000"
.LASF226:
	.ascii	"GPU_TEVSCALE_4\000"
.LASF258:
	.ascii	"endmainOffset\000"
.LASF429:
	.ascii	"used\000"
.LASF527:
	.ascii	"AttrInfo_Init\000"
.LASF306:
	.ascii	"itemAddedEvent\000"
.LASF330:
	.ascii	"Item_Totem\000"
.LASF349:
	.ascii	"flying\000"
.LASF517:
	.ascii	"Item_Deinit\000"
.LASF155:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF237:
	.ascii	"codeData\000"
.LASF400:
	.ascii	"C3D_Both\000"
.LASF233:
	.ascii	"GSH_VARIABLE_PRIM\000"
.LASF93:
	.ascii	"forceVBOUpdate\000"
.LASF139:
	.ascii	"LightLock\000"
.LASF488:
	.ascii	"WorldSelect_Render\000"
.LASF288:
	.ascii	"shaderProgram_s\000"
.LASF308:
	.ascii	"WorkQueue\000"
.LASF357:
	.ascii	"hungertimer\000"
.LASF106:
	.ascii	"heightmapRevision\000"
.LASF290:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF190:
	.ascii	"GPU_RB_DEPTH16\000"
.LASF393:
	.ascii	"funcAlpha\000"
.LASF185:
	.ascii	"GPU_RB_RGB8\000"
.LASF451:
	.ascii	"FrustumPlanes_Count\000"
.LASF188:
	.ascii	"GPU_RB_RGBA4\000"
.LASF184:
	.ascii	"GPU_RB_RGBA8\000"
.LASF420:
	.ascii	"C3D_FrameBuf\000"
.LASF562:
	.ascii	"Renderer_Init\000"
.LASF171:
	.ascii	"GPU_RGBA5551\000"
.LASF41:
	.ascii	"Block_Log\000"
.LASF140:
	.ascii	"state\000"
.LASF436:
	.ascii	"C3D_FRAME_SYNCDRAW\000"
.LASF496:
	.ascii	"Mtx_Translate\000"
.LASF533:
	.ascii	"C3D_RenderTargetCreate\000"
.LASF364:
	.ascii	"spawny\000"
.LASF339:
	.ascii	"direction\000"
.LASF325:
	.ascii	"freeChunks\000"
.LASF386:
	.ascii	"C3D_AttrInfo\000"
.LASF367:
	.ascii	"gamemode\000"
.LASF191:
	.ascii	"GPU_RB_DEPTH24\000"
.LASF413:
	.ascii	"colorBuf\000"
.LASF241:
	.ascii	"type\000"
.LASF541:
	.ascii	"target\000"
.LASF291:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF361:
	.ascii	"difficulty\000"
.LASF130:
	.ascii	"led_battery\000"
.LASF100:
	.ascii	"tasksRunning\000"
.LASF372:
	.ascii	"quickSelectBar\000"
.LASF158:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF192:
	.ascii	"GPU_RB_DEPTH24_STENCIL8\000"
.LASF526:
	.ascii	"AttrInfo_AddLoader\000"
.LASF162:
	.ascii	"GX_TRANSFER_FMT_RGB8\000"
.LASF351:
	.ascii	"world\000"
.LASF254:
	.ascii	"gshVariableVtxNum\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF54:
	.ascii	"Block_Snow\000"
.LASF216:
	.ascii	"GPU_ADD\000"
.LASF487:
	.ascii	"Inventory_DrawQuickSelect\000"
.LASF49:
	.ascii	"Block_Bedrock\000"
.LASF494:
	.ascii	"Mtx_Multiply\000"
.LASF137:
	.ascii	"headset_connected\000"
.LASF457:
	.ascii	"Frustum_NearTopRight\000"
.LASF317:
	.ascii	"GeneratorSettings\000"
.LASF203:
	.ascii	"GPU_PRIMARY_COLOR\000"
.LASF428:
	.ascii	"frameBuf\000"
.LASF234:
	.ascii	"GSH_FIXED_PRIM\000"
.LASF10:
	.ascii	"long int\000"
.LASF295:
	.ascii	"WorkerItemType_Save\000"
.LASF479:
	.ascii	"gamestate\000"
.LASF76:
	.ascii	"Xorshift32\000"
.LASF510:
	.ascii	"DVLB_Free\000"
.LASF564:
	.ascii	"__builtin_memset\000"
.LASF514:
	.ascii	"WorldRenderer_Deinit\000"
.LASF125:
	.ascii	"wifi_strength\000"
.LASF92:
	.ascii	"vboRevision\000"
.LASF326:
	.ascii	"workqueue\000"
.LASF96:
	.ascii	"ChunkGen_Empty\000"
.LASF373:
	.ascii	"viewRayCast\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF499:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF327:
	.ascii	"randomTickGen\000"
.LASF255:
	.ascii	"gshFixedVtxNum\000"
.LASF97:
	.ascii	"ChunkGen_Terrain\000"
.LASF37:
	.ascii	"Block_Dirt\000"
.LASF414:
	.ascii	"depthBuf\000"
.LASF355:
	.ascii	"simStepAccum\000"
.LASF113:
	.ascii	"Result\000"
.LASF315:
	.ascii	"seed\000"
.LASF202:
	.ascii	"GPU_CULLMODE\000"
.LASF146:
	.ascii	"GFX_LEFT\000"
.LASF448:
	.ascii	"Frustum_Top\000"
.LASF445:
	.ascii	"Frustum_Near\000"
.LASF434:
	.ascii	"side\000"
.LASF333:
	.ascii	"meta\000"
.LASF263:
	.ascii	"uniformTableSize\000"
.LASF1:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"uint8_t\000"
.LASF505:
	.ascii	"C3D_GetTexEnv\000"
.LASF72:
	.ascii	"Block_Emerald_Block\000"
.LASF47:
	.ascii	"Block_Planks\000"
.LASF55:
	.ascii	"Block_Obsidian\000"
.LASF466:
	.ascii	"world_shbin_size\000"
.LASF206:
	.ascii	"GPU_TEXTURE0\000"
.LASF486:
	.ascii	"Inventory_Draw\000"
.LASF208:
	.ascii	"GPU_TEXTURE2\000"
.LASF114:
	.ascii	"value_ms\000"
.LASF439:
	.ascii	"GuiTexture_Blank\000"
.LASF348:
	.ascii	"sprinting\000"
.LASF157:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF552:
	.ascii	"Mtx_Zeros\000"
.LASF213:
	.ascii	"GPU_TEVSRC\000"
.LASF178:
	.ascii	"GPU_LA4\000"
.LASF440:
	.ascii	"GuiTexture_Font\000"
.LASF174:
	.ascii	"GPU_LA8\000"
.LASF221:
	.ascii	"GPU_MULTIPLY_ADD\000"
.LASF230:
	.ascii	"GEOMETRY_SHDR\000"
.LASF39:
	.ascii	"Block_Cobblestone\000"
.LASF160:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF284:
	.ascii	"vertexShader\000"
.LASF186:
	.ascii	"GPU_RB_RGBA5551\000"
.LASF94:
	.ascii	"_Bool\000"
.LASF122:
	.ascii	"unk_0x06\000"
.LASF111:
	.ascii	"vu32\000"
.LASF431:
	.ascii	"ownsDepth\000"
.LASF273:
	.ascii	"DVLE\000"
.LASF300:
	.ascii	"WorkerItemType\000"
.LASF371:
	.ascii	"inventorySite\000"
.LASF272:
	.ascii	"DVLP\000"
.LASF399:
	.ascii	"C3D_Alpha\000"
.LASF201:
	.ascii	"GPU_CULL_BACK_CCW\000"
.LASF474:
	.ascii	"gui_shader_uLocProjection\000"
.LASF257:
	.ascii	"mainOffset\000"
.LASF210:
	.ascii	"GPU_PREVIOUS_BUFFER\000"
.LASF141:
	.ascii	"lock\000"
.LASF246:
	.ascii	"DVLE_outEntry_s\000"
.LASF524:
	.ascii	"WorldRenderer_Init\000"
.LASF338:
	.ascii	"distSqr\000"
.LASF266:
	.ascii	"outmapMask\000"
.LASF84:
	.ascii	"metadataLight\000"
.LASF469:
	.ascii	"world_dvlb\000"
.LASF154:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF32:
	.ascii	"Direction_Invalid\000"
.LASF170:
	.ascii	"GPU_RGB8\000"
.LASF45:
	.ascii	"Block_Stonebrick\000"
.LASF503:
	.ascii	"C3D_SetAttrInfo\000"
.LASF383:
	.ascii	"flags\000"
.LASF292:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF452:
	.ascii	"FrustumPlanes\000"
.LASF167:
	.ascii	"GX_TRANSFER_SCALE_X\000"
.LASF229:
	.ascii	"VERTEX_SHDR\000"
.LASF460:
	.ascii	"Frustum_FarTopLeft\000"
.LASF433:
	.ascii	"screen\000"
.LASF91:
	.ascii	"transparentVertices\000"
.LASF406:
	.ascii	"lodBias\000"
.LASF398:
	.ascii	"C3D_RGB\000"
.LASF232:
	.ascii	"GSH_POINT\000"
.LASF387:
	.ascii	"opRgb\000"
.LASF219:
	.ascii	"GPU_SUBTRACT\000"
.LASF537:
	.ascii	"Renderer_Deinit\000"
.LASF279:
	.ascii	"intUniforms\000"
.LASF557:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF350:
	.ascii	"crouching\000"
.LASF231:
	.ascii	"DVLE_type\000"
.LASF164:
	.ascii	"GX_TRANSFER_FMT_RGB5A1\000"
.LASF243:
	.ascii	"DVLE_constEntry_s\000"
.LASF36:
	.ascii	"Block_Stone\000"
.LASF180:
	.ascii	"GPU_A4\000"
.LASF177:
	.ascii	"GPU_A8\000"
.LASF563:
	.ascii	"osGet3DSliderState\000"
.LASF470:
	.ascii	"gui_dvlb\000"
.LASF289:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF539:
	.ascii	"player_\000"
.LASF214:
	.ascii	"GPU_REPLACE\000"
.LASF447:
	.ascii	"Frustum_Left\000"
.LASF148:
	.ascii	"gfx3dSide_t\000"
.LASF402:
	.ascii	"C3D_TexCube\000"
.LASF506:
	.ascii	"SpriteBatch_StartFrame\000"
.LASF182:
	.ascii	"GPU_ETC1A4\000"
.LASF112:
	.ascii	"vu64\000"
.LASF81:
	.ascii	"memory\000"
.LASF152:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF388:
	.ascii	"opAlpha\000"
.LASF551:
	.ascii	"Mtx_Diagonal\000"
.LASF66:
	.ascii	"Block_Gold_Ore\000"
.LASF26:
	.ascii	"Direction_West\000"
.LASF51:
	.ascii	"Block_Door_Top\000"
.LASF183:
	.ascii	"GPU_TEXCOLOR\000"
.LASF149:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF181:
	.ascii	"GPU_ETC1\000"
.LASF468:
	.ascii	"lowerScreen\000"
.LASF381:
	.ascii	"C3D_FVec\000"
.LASF432:
	.ascii	"linked\000"
.LASF461:
	.ascii	"Frustum_FarTopRight\000"
.LASF538:
	.ascii	"world_\000"
.LASF302:
	.ascii	"WorkerItem\000"
.LASF277:
	.ascii	"boolUniforms\000"
.LASF46:
	.ascii	"Block_Brick\000"
.LASF456:
	.ascii	"Frustum_NearTopLeft\000"
.LASF554:
	.ascii	"slots\000"
.LASF196:
	.ascii	"GPU_SHORT\000"
.LASF549:
	.ascii	"C3D_TexEnvInit\000"
.LASF328:
	.ascii	"weather\000"
.LASF260:
	.ascii	"constTableData\000"
.LASF343:
	.ascii	"bobbing\000"
.LASF318:
	.ascii	"HighestBlock\000"
.LASF205:
	.ascii	"GPU_FRAGMENT_SECONDARY_COLOR\000"
.LASF480:
	.ascii	"showDebugInfo\000"
.LASF282:
	.ascii	"numFloat24Uniforms\000"
.LASF316:
	.ascii	"settings\000"
.LASF74:
	.ascii	"Blocks_Count\000"
.LASF471:
	.ascii	"world_shader\000"
.LASF142:
	.ascii	"LightEvent\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF69:
	.ascii	"Block_Diamond_Block\000"
.LASF235:
	.ascii	"DVLE_geoShaderMode\000"
.LASF63:
	.ascii	"Block_Iron_Ore\000"
.LASF87:
	.ascii	"empty\000"
.LASF363:
	.ascii	"spawnx\000"
.LASF297:
	.ascii	"WorkerItemType_Decorate\000"
.LASF365:
	.ascii	"spawnz\000"
.LASF390:
	.ascii	"srcRgb\000"
.LASF520:
	.ascii	"Block_Init\000"
.LASF410:
	.ascii	"param\000"
.LASF453:
	.ascii	"FrustumCorners\000"
.LASF99:
	.ascii	"ChunkGenProgress\000"
.LASF425:
	.ascii	"C3D_RenderTarget\000"
.LASF236:
	.ascii	"codeSize\000"
.LASF244:
	.ascii	"regID\000"
.LASF422:
	.ascii	"C3D_CLEAR_DEPTH\000"
.LASF542:
	.ascii	"clearBits\000"
.LASF378:
	.ascii	"GameState_SelectWorld\000"
.LASF482:
	.ascii	"C3D_FrameEnd\000"
.LASF296:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF250:
	.ascii	"DVLE_uniformEntry_s\000"
.LASF153:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF194:
	.ascii	"GPU_BYTE\000"
.LASF336:
	.ascii	"superflat\000"
.LASF401:
	.ascii	"C3D_TexEnvMode\000"
.LASF127:
	.ascii	"unk_0x68\000"
.LASF546:
	.ascii	"C3D_TexEnvFunc\000"
.LASF105:
	.ascii	"heightmap\000"
.LASF31:
	.ascii	"Direction_South\000"
.LASF465:
	.ascii	"world_shbin\000"
.LASF89:
	.ascii	"transparentVBO\000"
.LASF507:
	.ascii	"C3D_FrameDrawOn\000"
.LASF270:
	.ascii	"DVLE_s\000"
.LASF27:
	.ascii	"Direction_East\000"
.LASF550:
	.ascii	"Mtx_Identity\000"
.LASF337:
	.ascii	"float3\000"
.LASF362:
	.ascii	"rndy\000"
.LASF90:
	.ascii	"vertices\000"
.LASF347:
	.ascii	"jumped\000"
.LASF391:
	.ascii	"srcAlpha\000"
.LASF556:
	.ascii	"screenwidth\000"
.LASF320:
	.ascii	"genSettings\000"
.LASF424:
	.ascii	"C3D_ClearBits\000"
.LASF299:
	.ascii	"WorkerItemTypes_Count\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF275:
	.ascii	"float24Uniform_s\000"
.LASF223:
	.ascii	"GPU_COMBINEFUNC\000"
.LASF407:
	.ascii	"maxLevel\000"
.LASF14:
	.ascii	"long long int\000"
.LASF518:
	.ascii	"C3D_TexDelete\000"
.LASF477:
	.ascii	"logoTex\000"
.LASF121:
	.ascii	"mcu_hwinfo\000"
.LASF376:
	.ascii	"inventory\000"
.LASF405:
	.ascii	"width\000"
.LASF430:
	.ascii	"ownsColor\000"
.LASF28:
	.ascii	"Direction_Bottom\000"
.LASF53:
	.ascii	"Block_Snow_Grass\000"
.LASF44:
	.ascii	"Block_Glass\000"
.LASF52:
	.ascii	"Block_Door_Bottom\000"
.LASF110:
	.ascii	"double\000"
.LASF561:
	.ascii	"C3D_Fini\000"
.LASF132:
	.ascii	"unk_0x87\000"
.LASF133:
	.ascii	"unk_0x88\000"
.LASF64:
	.ascii	"Block_Coal_Ore\000"
.LASF352:
	.ascii	"view\000"
.LASF168:
	.ascii	"GX_TRANSFER_SCALE_XY\000"
.LASF408:
	.ascii	"minLevel\000"
.LASF521:
	.ascii	"C3D_CullFace\000"
.LASF245:
	.ascii	"mask\000"
.LASF334:
	.ascii	"amount\000"
.LASF307:
	.ascii	"listInUse\000"
.LASF553:
	.ascii	"Inventory_QuickSelectCalcWidth\000"
.LASF38:
	.ascii	"Block_Grass\000"
.LASF513:
	.ascii	"Gui_Deinit\000"
.LASF0:
	.ascii	"float\000"
.LASF384:
	.ascii	"permutation\000"
.LASF238:
	.ascii	"opdescSize\000"
.LASF417:
	.ascii	"block32\000"
.LASF462:
	.ascii	"FrustumCorners_Count\000"
.LASF374:
	.ascii	"blockInSight\000"
.LASF102:
	.ascii	"uuid\000"
.LASF217:
	.ascii	"GPU_ADD_SIGNED\000"
.LASF17:
	.ascii	"unsigned int\000"
.LASF504:
	.ascii	"C3D_BindProgram\000"
.LASF88:
	.ascii	"emptyRevision\000"
.LASF249:
	.ascii	"endReg\000"
.LASF34:
	.ascii	"Block\000"
.LASF341:
	.ascii	"position\000"
.LASF251:
	.ascii	"mergeOutmaps\000"
.LASF278:
	.ascii	"boolUniformMask\000"
.LASF304:
	.ascii	"capacity\000"
.LASF313:
	.ascii	"WorldGenTypes_Count\000"
.LASF312:
	.ascii	"WorldGen_Default\000"
.LASF159:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF118:
	.ascii	"osTimeRef_s\000"
.LASF377:
	.ascii	"Player\000"
.LASF147:
	.ascii	"GFX_RIGHT\000"
.LASF354:
	.ascii	"velocity\000"
.LASF528:
	.ascii	"shaderInstanceGetUniformLocation\000"
.LASF166:
	.ascii	"GX_TRANSFER_SCALE_NO\000"
.LASF42:
	.ascii	"Block_Gravel\000"
.LASF176:
	.ascii	"GPU_L8\000"
.LASF50:
	.ascii	"Block_Coarse\000"
.LASF511:
	.ascii	"shaderProgramFree\000"
.LASF187:
	.ascii	"GPU_RB_RGB565\000"
.LASF59:
	.ascii	"Block_Crafting_Table\000"
.LASF204:
	.ascii	"GPU_FRAGMENT_PRIMARY_COLOR\000"
.LASF128:
	.ascii	"slider_3d\000"
.LASF285:
	.ascii	"geometryShader\000"
.LASF332:
	.ascii	"block\000"
.LASF123:
	.ascii	"timeref\000"
.LASF172:
	.ascii	"GPU_RGB565\000"
.LASF379:
	.ascii	"GameState_Playing\000"
.LASF311:
	.ascii	"WorldGen_FlatBedrock\000"
.LASF481:
	.ascii	"C3D_FrameBufClear\000"
.LASF265:
	.ascii	"symbolTableData\000"
.LASF536:
	.ascii	"Renderer_Render\000"
.LASF443:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF30:
	.ascii	"Direction_North\000"
.LASF218:
	.ascii	"GPU_INTERPOLATE\000"
.LASF75:
	.ascii	"char\000"
.LASF228:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF415:
	.ascii	"colorFmt\000"
.LASF483:
	.ascii	"Gui_Frame\000"
.LASF198:
	.ascii	"GPU_FORMATS\000"
.LASF389:
	.ascii	"opAll\000"
.LASF78:
	.ascii	"long double\000"
.LASF207:
	.ascii	"GPU_TEXTURE1\000"
.LASF61:
	.ascii	"Block_Water\000"
.LASF209:
	.ascii	"GPU_TEXTURE3\000"
.LASF80:
	.ascii	"size\000"
.LASF449:
	.ascii	"Frustum_Bottom\000"
.LASF346:
	.ascii	"grounded\000"
.LASF523:
	.ascii	"SpriteBatch_Init\000"
.LASF253:
	.ascii	"gshFixedVtxStart\000"
.LASF435:
	.ascii	"transferFlags\000"
.LASF303:
	.ascii	"length\000"
.LASF495:
	.ascii	"Mtx_RotateX\000"
.LASF35:
	.ascii	"Block_Air\000"
.LASF134:
	.ascii	"menu_tid\000"
.LASF280:
	.ascii	"float24Uniforms\000"
.LASF161:
	.ascii	"GX_TRANSFER_FMT_RGBA8\000"
.LASF135:
	.ascii	"cur_menu_tid\000"
.LASF248:
	.ascii	"startReg\000"
.LASF18:
	.ascii	"int8_t\000"
.LASF323:
	.ascii	"chunkPool\000"
.LASF421:
	.ascii	"C3D_CLEAR_COLOR\000"
.LASF309:
	.ascii	"WorldGen_Smea\000"
.LASF525:
	.ascii	"PolyGen_Init\000"
.LASF522:
	.ascii	"Gui_Init\000"
.LASF165:
	.ascii	"GX_TRANSFER_FMT_RGBA4\000"
.LASF283:
	.ascii	"shaderInstance_s\000"
.LASF459:
	.ascii	"Frustum_FarBottomRight\000"
.LASF2:
	.ascii	"__int8_t\000"
.LASF126:
	.ascii	"network_state\000"
.LASF545:
	.ascii	"C3D_RenderTargetClear\000"
.LASF60:
	.ascii	"Block_Grass_Path\000"
.LASF85:
	.ascii	"revision\000"
.LASF531:
	.ascii	"DVLB_ParseFile\000"
.LASF16:
	.ascii	"long long unsigned int\000"
.LASF240:
	.ascii	"DVLP_s\000"
.LASF512:
	.ascii	"SpriteBatch_Deinit\000"
.LASF200:
	.ascii	"GPU_CULL_FRONT_CCW\000"
.LASF15:
	.ascii	"__uint64_t\000"
.LASF117:
	.ascii	"drift_ms\000"
.LASF21:
	.ascii	"uint16_t\000"
.LASF489:
	.ascii	"SpriteBatch_Render\000"
.LASF82:
	.ascii	"VBO_Block\000"
.LASF179:
	.ascii	"GPU_L4\000"
.LASF369:
	.ascii	"quickSelectBarSlots\000"
.LASF222:
	.ascii	"GPU_ADD_MULTIPLY\000"
.LASF380:
	.ascii	"GameState\000"
.LASF227:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF286:
	.ascii	"geoShaderInputPermutation\000"
.LASF437:
	.ascii	"C3D_FRAME_NONBLOCK\000"
.LASF392:
	.ascii	"funcRgb\000"
.LASF298:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF98:
	.ascii	"ChunkGen_Finished\000"
.LASF305:
	.ascii	"queue\000"
.LASF329:
	.ascii	"World\000"
.LASF143:
	.ascii	"GFX_TOP\000"
.LASF548:
	.ascii	"C3D_TexEnvSrc\000"
.LASF412:
	.ascii	"C3D_Tex\000"
.LASF62:
	.ascii	"Block_Lava\000"
.LASF416:
	.ascii	"depthFmt\000"
.LASF22:
	.ascii	"int32_t\000"
.LASF397:
	.ascii	"C3D_TexEnv\000"
.LASF485:
	.ascii	"memset\000"
.LASF345:
	.ascii	"crouchAdd\000"
.LASF293:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF294:
	.ascii	"WorkerItemType_Load\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF131:
	.ascii	"unk_flag\000"
.LASF68:
	.ascii	"Block_Gold_Block\000"
.LASF515:
	.ascii	"PolyGen_Deinit\000"
.LASF544:
	.ascii	"clearDepth\000"
.LASF195:
	.ascii	"GPU_UNSIGNED_BYTE\000"
.LASF281:
	.ascii	"intUniformMask\000"
.LASF358:
	.ascii	"armour\000"
.LASF509:
	.ascii	"C3D_FrameBegin\000"
.LASF394:
	.ascii	"color\000"
.LASF463:
	.ascii	"gui_shbin\000"
.LASF344:
	.ascii	"fovAdd\000"
.LASF331:
	.ascii	"Items_Count\000"
.LASF220:
	.ascii	"GPU_DOT3_RGB\000"
.LASF150:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF500:
	.ascii	"WorldRenderer_Render\000"
.LASF529:
	.ascii	"shaderProgramSetVsh\000"
.LASF438:
	.ascii	"C3D_DEPTHTYPE\000"
.LASF340:
	.ascii	"Raycast_Result\000"
.LASF497:
	.ascii	"Mtx_PerspStereoTilt\000"
.LASF144:
	.ascii	"GFX_BOTTOM\000"
.LASF535:
	.ascii	"projection\000"
.LASF71:
	.ascii	"Block_Iron_Block\000"
.LASF252:
	.ascii	"gshMode\000"
.LASF73:
	.ascii	"Block_Furnace\000"
.LASF199:
	.ascii	"GPU_CULL_NONE\000"
.LASF269:
	.ascii	"outmapClock\000"
.LASF262:
	.ascii	"outTableData\000"
.LASF259:
	.ascii	"constTableSize\000"
.LASF65:
	.ascii	"Block_Diamond_Ore\000"
.LASF467:
	.ascii	"renderTargets\000"
.LASF319:
	.ascii	"name\000"
.LASF115:
	.ascii	"value_tick\000"
.LASF409:
	.ascii	"lodParam\000"
.LASF104:
	.ascii	"clusters\000"
.LASF56:
	.ascii	"Block_Netherrack\000"
.LASF156:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF215:
	.ascii	"GPU_MODULATE\000"
.LASF458:
	.ascii	"Frustum_FarBottomLeft\000"
.LASF151:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF138:
	.ascii	"osSharedConfig_s\000"
.LASF502:
	.ascii	"Block_GetTextureMap\000"
.LASF264:
	.ascii	"uniformTableData\000"
.LASF382:
	.ascii	"C3D_Mtx\000"
.LASF6:
	.ascii	"short int\000"
.LASF116:
	.ascii	"sysclock_hz\000"
.LASF239:
	.ascii	"opcdescData\000"
.LASF25:
	.ascii	"uint64_t\000"
.LASF547:
	.ascii	"mode\000"
.LASF444:
	.ascii	"GuiTexture\000"
.LASF484:
	.ascii	"DebugUI_Draw\000"
.LASF501:
	.ascii	"C3D_TexBind\000"
.LASF335:
	.ascii	"ItemStack\000"
.LASF20:
	.ascii	"int16_t\000"
.LASF454:
	.ascii	"Frustum_NearBottomLeft\000"
.LASF324:
	.ascii	"chunkCache\000"
.LASF519:
	.ascii	"Texture_Load\000"
.LASF370:
	.ascii	"quickSelectBarSlot\000"
.LASF366:
	.ascii	"spawnset\000"
.LASF136:
	.ascii	"unk_0xB0\000"
.LASF271:
	.ascii	"numDVLE\000"
.LASF530:
	.ascii	"shaderProgramInit\000"
.LASF108:
	.ascii	"references\000"
.LASF58:
	.ascii	"Block_Smooth_Stone\000"
.LASF498:
	.ascii	"SpriteBatch_PushQuad\000"
.LASF455:
	.ascii	"Frustum_NearBottomRight\000"
.LASF173:
	.ascii	"GPU_RGBA4\000"
.LASF169:
	.ascii	"GPU_RGBA8\000"
.LASF423:
	.ascii	"C3D_CLEAR_ALL\000"
.LASF314:
	.ascii	"WorldGenType\000"
.LASF67:
	.ascii	"Block_Emerald_Ore\000"
.LASF396:
	.ascii	"scaleAlpha\000"
.LASF274:
	.ascii	"DVLB_s\000"
.LASF70:
	.ascii	"Block_Coal_Block\000"
.LASF13:
	.ascii	"__int64_t\000"
.LASF197:
	.ascii	"GPU_FLOAT\000"
.LASF79:
	.ascii	"_LOCK_T\000"
.LASF534:
	.ascii	"C3D_Init\000"
.LASF559:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF476:
	.ascii	"gui_vertexAttribs\000"
.LASF95:
	.ascii	"Cluster\000"
.LASF555:
	.ascii	"Inventory_QuickSelectCalcSlots\000"
.LASF48:
	.ascii	"Block_Wool\000"
.LASF473:
	.ascii	"world_shader_uLocProjection\000"
.LASF189:
	.ascii	"GPU_COLORBUF\000"
.LASF492:
	.ascii	"SpriteBatch_BindTexture\000"
.LASF83:
	.ascii	"blocks\000"
.LASF247:
	.ascii	"symbolOffset\000"
.LASF175:
	.ascii	"GPU_HILO8\000"
.LASF129:
	.ascii	"led_3d\000"
.LASF321:
	.ascii	"cacheTranslationX\000"
.LASF322:
	.ascii	"cacheTranslationZ\000"
.LASF287:
	.ascii	"geoShaderInputStride\000"
.LASF212:
	.ascii	"GPU_PREVIOUS\000"
.LASF23:
	.ascii	"uint32_t\000"
.LASF145:
	.ascii	"gfxScreen_t\000"
.LASF464:
	.ascii	"gui_shbin_size\000"
.LASF475:
	.ascii	"world_vertexAttribs\000"
.LASF472:
	.ascii	"gui_shader\000"
.LASF107:
	.ascii	"displayRevision\000"
.LASF490:
	.ascii	"SpriteBatch_PushText\000"
.LASF395:
	.ascii	"scaleRgb\000"
.LASF267:
	.ascii	"outmapData\000"
.LASF403:
	.ascii	"cube\000"
.LASF356:
	.ascii	"breakPlaceTimeout\000"
.LASF450:
	.ascii	"Frustum_Far\000"
.LASF120:
	.ascii	"running_hw\000"
.LASF119:
	.ascii	"timeref_cnt\000"
.LASF211:
	.ascii	"GPU_CONSTANT\000"
.LASF446:
	.ascii	"Frustum_Right\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF342:
	.ascii	"pitch\000"
.LASF268:
	.ascii	"outmapMode\000"
.LASF493:
	.ascii	"Clouds_Render\000"
.LASF491:
	.ascii	"SpriteBatch_SetScale\000"
.LASF560:
	.ascii	"C3D_RenderTarget_tag\000"
.LASF360:
	.ascii	"hunger\000"
.LASF124:
	.ascii	"wifi_macaddr\000"
.LASF411:
	.ascii	"border\000"
.LASF532:
	.ascii	"C3D_RenderTargetSetOutput\000"
.LASF276:
	.ascii	"dvle\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF24:
	.ascii	"int64_t\000"
.LASF256:
	.ascii	"dvlp\000"
.LASF103:
	.ascii	"genProgress\000"
.LASF441:
	.ascii	"GuiTexture_Icons\000"
.LASF385:
	.ascii	"attrCount\000"
.LASF109:
	.ascii	"Chunk\000"
.LASF368:
	.ascii	"cheats\000"
.LASF86:
	.ascii	"seeThrough\000"
.LASF478:
	.ascii	"player\000"
.LASF426:
	.ascii	"next\000"
.LASF242:
	.ascii	"data\000"
.LASF163:
	.ascii	"GX_TRANSFER_FMT_RGB565\000"
.LASF508:
	.ascii	"PolyGen_Harvest\000"
.LASF442:
	.ascii	"GuiTexture_Widgets\000"
.LASF427:
	.ascii	"prev\000"
.LASF375:
	.ascii	"blockInActionRange\000"
.LASF193:
	.ascii	"GPU_DEPTHBUF\000"
.LASF101:
	.ascii	"graphicalTasksRunning\000"
.LASF29:
	.ascii	"Direction_Top\000"
.LASF359:
	.ascii	"oxygen\000"
.LASF261:
	.ascii	"outTableSize\000"
.LASF310:
	.ascii	"WorldGen_SuperFlat\000"
.LASF404:
	.ascii	"height\000"
.LASF516:
	.ascii	"Block_Deinit\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
