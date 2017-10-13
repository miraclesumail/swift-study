#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
    import Darwin
#else
    import Glibc
#endif

system("touch script.swift")
let stream = fopen("script.swift", "r+")
let program = "#!/usr/bin/swift \n print(\"CommandLine.arguments gave args:\")\n" +
    "for s in CommandLine.arguments {print(s)}"
fwrite(program, 1, program.characters.count, stream)

fclose(stream)
system("chmod +x script.swift")
system("./script.swift - first second qwww")

