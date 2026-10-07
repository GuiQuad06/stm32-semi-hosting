# Add sources to executable/library
target_sources(${PROJECT_NAME} PRIVATE
    "${CMAKE_CURRENT_SOURCE_DIR}/startup_stm32f302x8.s"
    "${CMAKE_CURRENT_SOURCE_DIR}/readme.txt"
    "${CMAKE_CURRENT_SOURCE_DIR}/Src/system_stm32f3xx.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Drivers/STM32F3xx_HAL_Driver/Src/stm32f3xx_ll_utils.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Src/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/Src/stm32f3xx_it.c"
)

configure_file("${CMAKE_CURRENT_SOURCE_DIR}/STM32F302R8Tx_FLASH.ld" "${CMAKE_CURRENT_BINARY_DIR}" COPYONLY)

set_target_properties(${PROJECT_NAME} PROPERTIES LINK_DEPENDS "${CMAKE_CURRENT_BINARY_DIR}/STM32F302R8Tx_FLASH.ld")
