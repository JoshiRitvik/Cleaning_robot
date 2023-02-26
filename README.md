# Cleaning_robot
 Assignment1 SYSC5104: DEVS simulation with CadmiumV2. 

Download this project folder.
make sure you have this project folder inside example folder in cadmium v2
run the following commands
$ cmake .
$ make all
the go to bin folder
$ ./bin

Execute the following commands to run respective files
to test wheel atomic model
$ ./main_wheel_test.exe ../input_data/wheel_input.txt

to test motion controller atomic model
$ ./main_motion_Controller_test.exe ../input_data/motion_controller_input_test_proximity.txt ../input_data/motion_controller_input_test_Remote_Control.txt

to test sensor atomic model
$ ./main_sensor_test.exe

to test main 
$ ./main_vaccume_robot.exe 2 4 10

output log files will be generated.
