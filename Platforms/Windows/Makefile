all:
#---------------------------------------------------------------------------------
	@rm -fr bin
	@mkdir -p bin
	@find . -name "*.dll" ! -path "./bin/*" -exec cp -fv {} bin \;
	@find . -name "Craftus-Next.exe" ! -path "./bin/*" -exec cp -fv {} bin \;
	@find res -name "icon.png" ! -path "./bin/*" -exec cp -fv {} bin \;
	"C:\Program Files\7-Zip\7z.exe" a  -r build.zip -w build/ -mem=AES256