cmake_minimum_required(VERSION 3.0)
project (list-fonts-json)

add_executable(list-fonts-json src/main.cc)

if(CMAKE_HOST_WIN32)
	target_sources(list-fonts-json PUBLIC ${list-fonts-json_SOURCE_DIR}/src/FontManagerWindows.cc)
  target_link_libraries(list-fonts-json Dwrite)
	target_compile_definitions(list-fonts-json PRIVATE -D_CRT_SECURE_NO_WARNINGS)

elseif(CMAKE_HOST_APPLE)
  target_sources(list-fonts-json PUBLIC ${list-fonts-json_SOURCE_DIR}/src/FontManagerMac.mm)
  target_link_libraries(list-fonts-json
    "-framework CoreText"
    "-framework Foundation"
  )
endif()
