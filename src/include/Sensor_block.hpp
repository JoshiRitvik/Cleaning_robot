#ifndef CADMIUM_SENSOR_BLOCK_HPP_
#define CADMIUM_SENSOR_BLOCK_HPP_

#include <cadmium/core/modeling/coupled.hpp>
#include "proximity_sense.hpp"

namespace cadmium::example::cleaning_robot {
	//! Coupled DEVS model of the experimental frame.
	struct Sensor_block: public Coupled {
//		BigPort<Job> inProcessed;   //!< Input Port for processed Job objects.
		Port<int> Proximity_data;  //!< Output Port for sending new Job objects to be processed.

		/**
		 * Constructor function for the experimental frame model.
		 * @param id ID of the experimental frame model.
		 * @param jobPeriod Job generation period for the Generator model.
		 * @param obsTime time to wait by the Transducer before asking the Generator to stop creating Job objects.
		 */
		Sensor_block(const std::string& id, double samplingTime): Coupled(id) {
			std::cout << " Sensor_block " << std::endl;
			//inProcessed = addInPort<Job>("inProcessed");
			Proximity_data = addOutPort<int>("Proximity_data");

			auto proximity_sensor = addComponent<Proximity_sensor>("proximity_sensor", samplingTime);

			addCoupling(proximity_sensor->Proximity_data, Proximity_data);
		}
	};
}  //namespace cadmium::example::gpt

#endif //CADMIUM_SENSOR_BLOCK_HPP_
