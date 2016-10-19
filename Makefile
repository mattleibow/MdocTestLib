

build:
	msbuild MdocTestLib.sln /v:minimal

update: build
	mdoc update --debug MdocTestLib/bin/Debug/MdocTestLib.dll -o MdocTestLibDocs

clean: 
	rm -rf MdocTestLib/bin
	rm -rf MdocTestLibDocs
