#include <cadmium/core/logger/csv.hpp>
#include <cadmium/core/simulation/root_coordinator.hpp>
#include <limits>
#include <cadmium/core/modeling/coupled.hpp>
#include <cadmium/lib/iestream.hpp>
#include "include/wheel.hpp"

using namespace cadmium::example::cleaning_robot;

namespace cadmium::example::cleaning_robot {
	struct iestream_coupled : public Coupled{
		iestream_coupled(const std::string& id,  const char* filePath): Coupled(id) {
			auto iestream = addComponent<lib::IEStream<bool>>("iestream", filePath);
            auto wheel = addComponent<Wheel>("wheel",10);			
			addCoupling(iestream->out, wheel->In1);
	    }
    };
}
int main(int argc, char *argv[]) {
	// First, we parse the arguments
	std::ifstream file;

	if (argc < 2) { // Check that file is included
        std::cerr << "ERROR: not enough arguments" << std::endl;
        std::cerr << "    Usage:" << std::endl;
        std::cerr << "    > wheel_test INPUTFILE " << std::endl;
        return -1;
    }

	const char* filePath = argv[1];
    
	file.open(filePath);
    if(!file.is_open()) { // Check file can be opened
        std::cerr << "ERROR: file can not be opened. Check file path1." << std::endl;
        return -1;
    }
 	std::cout << "wheel test " << std::endl;
	auto wheel_model = std::make_shared<iestream_coupled>("IEStreamCoupled", filePath);
	auto rootCoordinator = cadmium::RootCoordinator(wheel_model);
	auto logger = std::make_shared<cadmium::CSVLogger>("log_wheel_test.csv", ";");
	rootCoordinator.setLogger(logger);
	rootCoordinator.start();
	rootCoordinator.simulate(std::numeric_limits<double>::infinity());
	rootCoordinator.stop();
	return 0;
}