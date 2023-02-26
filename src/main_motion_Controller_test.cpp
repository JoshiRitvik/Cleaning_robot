#include <cadmium/core/logger/csv.hpp>
#include <cadmium/core/simulation/root_coordinator.hpp>
#include <limits>
#include <cadmium/core/modeling/coupled.hpp>
#include <cadmium/lib/iestream.hpp>
#include "include/motion_controller.hpp"

using namespace cadmium::example::cleaning_robot;

namespace cadmium::example::cleaning_robot {
	struct iestream_coupled : public Coupled{
		iestream_coupled(const std::string& id, const char* filePath, const char* filePath2): Coupled(id) {
			auto iestream1 = addComponent<lib::IEStream<int>>("iestream", filePath);
			auto iestream2 = addComponent<lib::IEStream<bool>>("iestream2", filePath2);
            auto motion_controller = addComponent<Motion_controller>("motion_controller",10);
			
            addCoupling(iestream1->out, motion_controller->Proximity_data);
			addCoupling(iestream2->out, motion_controller->Remote_control);
	}
};
}
int main(int argc, char *argv[]) {
	// First, we parse the arguments
	std::ifstream file,file2;
	double obsTime;

	if (argc < 3) { // Check that file is included
        std::cerr << "ERROR: not enough arguments" << std::endl;
        std::cerr << "    Usage:" << std::endl;
        std::cerr << "    > main_motion_controller INPUTFILE1 INPUTFILE2" << std::endl;
        return -1;
    }

	const char* filePath = argv[1];
	const char* filePath2 = argv[2];
    
	file.open(filePath);
    if(!file.is_open()) { // Check file can be opened
        std::cerr << "ERROR: file can not be opened. Check file path1." << std::endl;
        return -1;
    }
	file2.open(filePath2);
    if(!file2.is_open()) { // Check file can be opened
        std::cerr << "ERROR: file can not be opened. Check file path2." << std::endl;
        return -1;
    }

    //auto iestream1 = addComponent<lib::IEStream<int>>("iestream", filePath);
	std::cout << "motion controller test " << std::endl;
	auto motion_controller_model = std::make_shared<iestream_coupled>("IEStreamCoupled", filePath, filePath2);
	auto rootCoordinator = cadmium::RootCoordinator(motion_controller_model);
	auto logger = std::make_shared<cadmium::CSVLogger>("log_motion_controller_test.csv", ";");
	rootCoordinator.setLogger(logger);
	rootCoordinator.start();
	rootCoordinator.simulate(std::numeric_limits<double>::infinity());
	rootCoordinator.stop();
	return 0;
}