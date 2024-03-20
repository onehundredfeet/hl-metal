package metal;


typedef Native = haxe.macro.MacroType<[
	idl.Module.build({
		idlFile: "metal.idl",
		target: #if hl "hl" #elseif (java || jvm) "jvm" #else "Unsupported target host" #end,
		packageName: "metal",
		autoGC: true,
		nativeLib: "metal"
	})
]>;

