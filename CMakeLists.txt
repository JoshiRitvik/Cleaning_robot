cmake_minimum_required(VERSION 3.1)
project(cadmium)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin)

add_library(cadmium INTERFACE)
target_include_directories(cadmium INTERFACE include/ ../../include/ json/include)

execute_process(COMMAND git submodule update --init)

FILE(GLOB Examples RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} src/*.cpp)
foreach(exampleSrc ${Examples})
    get_filename_component(exampleName ${exampleSrc} NAME_WE)
    get_filename_component(dirname ${exampleSrc} DIRECTORY)
    file(GLOB directorySrc CONFIGURE_DEPENDS "${dirname}/src/*.cpp")
    add_executable(${exampleName} ${exampleSrc} ${directorySrc})
    target_include_directories(${exampleName} PUBLIC "${dirname}/include/")
    target_link_libraries(${exampleName} cadmium)
endforeach(exampleSrc)

add_custom_target(run
    COMMAND ./bin/main_vaccume_robot $(DrivePeriod) $(samplingTime) $(cmdTime)
    DEPENDS ./bin/main_vaccume_robot
    WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
)

add_custom_target(run_test
    COMMAND ./bin/main_motion_Controller_test input_data/motion_controller_input_test_proximity.txt input_data/motion_controller_input_test_Remote_Control.txt
    COMMAND ./bin/main_wheel_test input_data/wheel_input.txt 
    COMMAND ./bin/main_sensor_test input_data/motion_controller_input_test_proximity.txt > /dev/null
    COMMAND echo "Done. Visit the log files."
    WORKING_DIRECTORY ${CMAKE_PROJECT_DIR}
)