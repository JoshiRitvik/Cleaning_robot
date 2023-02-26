#ifndef CADMIUM_ACTUATORS_HPP_
#define CADMIUM_ACTUATORS_HPP_

#include <cadmium/core/modeling/coupled.hpp>
#include "wheel.hpp"
#include "motion_controller.hpp"

namespace cadmium::example::cleaning_robot {
	//! Coupled DEVS model of the experimental frame-processor.
	struct Actuators : public Coupled {
		Port<bool> wheel_start_stop;
		/**
		 * Constructor function for the GPT model.
		 * @param id ID of the gpt model.
		 * @param jobPeriod Job generation period for the Generator model.
		 * @param processingTime Job processing time for the Processor model.
		 * @param obsTime time to wait by the Transducer before asking the Generator to stop creating Job objects.
		 */
		Actuators(const std::string& id, double DrivePeriod) : Coupled(id) {
			auto wheel = addComponent<Wheel>("wheel", DrivePeriod);
			auto wheel2 = addComponent<Wheel>("wheel2", DrivePeriod);
			wheel_start_stop = addInPort<bool>("wheel_start_stop");
			addCoupling(wheel_start_stop, wheel->In1); // motion_controller->
			addCoupling(wheel_start_stop, wheel2->In1);
		}
	};
}  //namespace cadmium::example::cleaning_robot

#endif //CADMIUM_ACTUATORS_HPP_
