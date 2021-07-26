# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "D:/K210Project/standalone/LCD/src/lcd.c" "D:/K210Project/standalone/LCD/build/CMakeFiles/LCD_Project.dir/src/lcd.c.obj"
  "D:/K210Project/standalone/LCD/src/main.c" "D:/K210Project/standalone/LCD/build/CMakeFiles/LCD_Project.dir/src/main.c.obj"
  "D:/K210Project/standalone/LCD/src/nt35310.c" "D:/K210Project/standalone/LCD/build/CMakeFiles/LCD_Project.dir/src/nt35310.c.obj"
  )
set(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS_C
  "CONFIG_LOG_ENABLE"
  "CONFIG_LOG_LEVEL=LOG_INFO"
  "DCX_GPIONUM=2"
  "DEBUG=1"
  "KENDRYTE_SDK_RELEASE_DATE=20190906195432"
  "KENDRYTE_SDK_TYPE=1"
  "KENDRYTE_SDK_TYPE_FREERTOS=2"
  "KENDRYTE_SDK_TYPE_STANDALONE=1"
  "NNCASE_TARGET=k210"
  "PROJECT_PATH=D:/K210Project/standalone/LCD/"
  "RST_GPIONUM=3"
  "SPI_CHANNEL=0"
  "SPI_SLAVE_SELECT=3"
  "TCB_SPAN_NO_CONTRACT_CHECKING"
  "TCB_SPAN_NO_EXCEPTIONS"
  "__riscv64"
  )

# The include file search paths:
set(CMAKE_C_TARGET_INCLUDE_PATH
  "../config"
  "../kendryte_libraries/kendryte_lcd-nt35310-standalone-driver/include"
  "../kendryte_libraries/kendryte_standalone-sdk/lib/bsp/include"
  "../kendryte_libraries/kendryte_standalone-sdk/lib/drivers/include"
  "../kendryte_libraries/kendryte_standalone-sdk/lib/utils/include"
  "../kendryte_libraries/kendryte_standalone-sdk/third_party/xtl/include"
  "../kendryte_libraries/kendryte_standalone-sdk/lib/nncase/include"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  "D:/K210Project/standalone/LCD/build/kendryte_lcd-nt35310-standalone-driver/CMakeFiles/kendryte_lcd-nt35310-standalone-driver.dir/DependInfo.cmake"
  "D:/K210Project/standalone/LCD/build/kendryte_standalone-sdk/CMakeFiles/kendryte_standalone-sdk.dir/DependInfo.cmake"
  )

# Fortran module output directory.
set(CMAKE_Fortran_TARGET_MODULE_DIR "")
