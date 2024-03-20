package;

import idl.Options;

class Build extends idl.BuildBase {
	// Put any necessary includes in this string and they will be added to the generated files
	inline static final packageName = "metal";

	var options = {
		idlFile: 'lib/${packageName}.idl',
		target: null,
		packageName: '${packageName}',
		nativeLib: '${packageName}',
		outputDir: "src",
		includeCode: null,
		autoGC: true,
		defaultConfig: "Release",
		architecture: ArchAll
	};

	function new() {
		super(options);
	}

	override function getJVMInclude()
		return "";

	override function getHLInclude()
		return "
	#include \"h-metal.h\"
#define NS_PRIVATE_IMPLEMENTATION
#define CA_PRIVATE_IMPLEMENTATION
#define MTL_PRIVATE_IMPLEMENTATION
#include <Metal.hpp>
	";

	public static function main() {
		var b = new Build();

		b.parseArgs();
	}
}
