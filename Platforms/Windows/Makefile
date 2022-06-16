all:
#---------------------------------------------------------------------------------
	@rm -fr bin
	@mkdir -p bin
	@find . -name "*.dll" ! -path "./bin/*" -exec cp -fv {} bin \;
	@find . -name "Craftus-Next.exe" ! -path "./bin/*" -exec cp -fv {} bin \;