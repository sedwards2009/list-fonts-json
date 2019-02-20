# list-fonts-json

This is a tiny cross-platform utility which simply lists the available installed fonts in a JSON format to stdout.

This code is derived from the [font-manager](https://github.com/foliojs/font-manager) NodeJS module, but makes it a separate executable and not a node module which needs to be rebuilt all the time. It is quite simple and only implements font-manager's `getAvailableFonts()` method. 

## Platforms

* Mac OS X 10.5 and later supported via [CoreText](https://developer.apple.com/library/mac/documentation/Carbon/reference/CoreText_Framework_Ref/_index.html)
* Windows 7 and later supported via [DirectWrite](http://msdn.microsoft.com/en-us/library/windows/desktop/dd368038(v=vs.85).aspx)
* Linux supported via [fontconfig](http://www.freedesktop.org/software/fontconfig)

## Build

The build system is based on [CMake](https://cmake.org/).

### Linux


### macOS

Make sure you have Xcode's C/C++ compiler installed, and then from the root of this git repository run:

```
  mkdir build
  cd build
  cmake -DCMAKE_BUILD_TYPE=Release ..
  make
```
The executable is left in the build folder.


### Windows

Make sure you have CMake installed and a "Visual Studio Visual C/C++ Build Tools 2015" or similar installed.

From PowerShell run:

```
  mkdir build
  cd build
  cmake ..
```

Now open up a suitable "Visual C/C++ 2015 x64 Native Build Tools Command Promp", go to the build directory and run:

```
    msbuild ALL_BUILD.vcxproj /p:Configuration=Release
```
The exe should now be in the `Release/` directory.


## License

MIT
