#include <cadmium/core/logger/csv.hpp>
#include <cadmium/core/simulation/root_coordinator.hpp>
#include <iostream>
#include <limits>
#include <string>
#include "include/Vacuume_robot.hpp"

using namespace cadmium::example::cleaning_robot;

int main(int argc, char *argv[]) {
    
    // First, we parse the arguments
    if (argc < 4) {
        std::cerr << "ERROR: not enough arguments" << std::endl;
        std::cerr << "    Usage:" << std::endl;
        std::cerr << "    > main_vacuume_robot DRIVE_PERIOD SAMPLING_TIME OBSERVATION_TIME " << std::endl;
        std::cerr << "        (DRIVE_PERIOD, SAMPLING_TIME, and OBSERVATION_TIME must be greater than or equal to 0)" << std::endl;
        return -1;
    }
    int DrivePeriod = std::stoi(argv[1]);
    if (DrivePeriod < 0) {
        std::cerr << "ERROR: DRIVE_PERIOD is less than 0 (" << DrivePeriod << ")" << std::endl;
        return -1;
    }
    int samplingTime = std::stoi(argv[2]);
    if (samplingTime < 0) {
        std::cerr << "ERROR: SAMPLING_TIME is less than 0 (" << samplingTime << ")." << std::endl;
        return -1;
    }
    double cmdTime = std::stod(argv[3]);
    if (cmdTime < 0) {
        std::cerr << "ERROR: OBSERVATION_TIME is less than 0 (" << cmdTime << ")." << std::endl;
        return -1;
    }
    std::cout << "Task started " << samplingTime << cmdTime << DrivePeriod << std::endl;
    auto model = std::make_shared<Vacuume_robot>("vacuume_robot", DrivePeriod, samplingTime, cmdTime);

    // Next, we create the coordinator and the logger
    std::cout << " rootCoordinator " << samplingTime << std::endl;
    auto rootCoordinator = cadmium::RootCoordinator(model);
    std::cout << " logger " << samplingTime << std::endl;
    auto logger = std::make_shared<cadmium::CSVLogger>("log__vacuume_robot.csv", ";");
    rootCoordinator.setLogger(logger);
    std::cout << " Simulation " << samplingTime << std::endl;
    // And finally, we run the simulation
    rootCoordinator.start();
    rootCoordinator.simulate(double(1000)); // std::numeric_limits<double>::infinity() double(1000)
    rootCoordinator.stop();

    return 0;
}
