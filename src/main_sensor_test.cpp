#include <cadmium/core/logger/csv.hpp>
#include <cadmium/core/simulation/root_coordinator.hpp>
#include <limits>
#include <cadmium/core/modeling/coupled.hpp>
#include <cadmium/lib/iestream.hpp>
#include "include/proximity_sense.hpp"

using namespace cadmium::example::cleaning_robot;

namespace cadmium::example::cleaning_robot {
	struct iestream_coupled : public Coupled{
		iestream_coupled(const std::string& id): Coupled(id) {
            auto proximity_sensor = addComponent<Proximity_sensor>("proximity_sensor",10);

	}
};
}
int main(int argc, char *argv[]) {

    //auto iestream1 = addComponent<lib::IEStream<int>>("iestream", filePath);
	std::cout << "Proximity sensor test " << std::endl;
	auto proximity_sensor_model = std::make_shared<iestream_coupled>("IEStreamCoupled");
	auto rootCoordinator = cadmium::RootCoordinator(proximity_sensor_model);
	auto logger = std::make_shared<cadmium::CSVLogger>("log_proximity_sensor_test.csv", ";");
	rootCoordinator.setLogger(logger);
	rootCoordinator.start();
	rootCoordinator.simulate(double(100));
	rootCoordinator.stop();
	return 0;
}