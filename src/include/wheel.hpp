#ifndef CADMIUM_WHEEL_HPP_
#define CADMIUM_WHEEL_HPP_

#include <cadmium/core/modeling/atomic.hpp>
#include <iostream>

namespace cadmium::example::cleaning_robot {
	//! Class for representing the Transducer DEVS model state.
	struct wheel_state {
		double clock;        //!< Current simulation time.
		double sigma;        //!< Time to wait before triggering the next internal transition function.
		bool start_stop_input;
		/**
		 * Transducer model state constructor function.
		 * @param obsTime total observation time before asking the Generator to stop creating new Job objects.
		 */
		wheel_state() : clock(), sigma(std::numeric_limits<double>::infinity()) {}
	};

	/**
	 * Insertion operator for TransducerState objects.
	 * @param out output stream.
	 * @param s state to be represented in the output stream.
	 * @return output stream with the state already inserted.
	 */
	std::ostream& operator<<(std::ostream &out, const wheel_state& s) {
		out << s.start_stop_input;
		std::cout << " wheel " << std::endl;
		return out;
	}

	//! Atomic DEVS model of a Job transducer.
	class Wheel : public Atomic<wheel_state> {
	 private:
		double DrivePeriod;
	 public:
		Port<bool> In1;  //!< Input Port for receiving new Job objects.

		/**
		 * Constructor function for Transducer atomic DEVS models.
		 * @param id ID of the new model.
		 * @param obsTime Time to wait before asking the Generator to stop sending new Job objects to Processor.
		 */
		Wheel(const std::string& id, double DrivePeriod): Atomic<wheel_state>(id, wheel_state()), DrivePeriod(DrivePeriod) {
			In1 = addInPort<bool>("In1");
		}

		/**
		 * It updates TransducerState::clock and TransducerState::sigma.
		 * As the internal transition is only triggered at the end, TransducerState::sigma is set to infinity.
		 * It also prints some simulation statistics.
		 * @param s reference to the current state of the model.
		 */
		void internalTransition(wheel_state& s) const override {
			s.clock += s.sigma;
			s.sigma = std::numeric_limits<double>::infinity();

		}

		/**
		 * It updates TransducerState::clock and TransducerState::sigma.
		 * It also keeps track of the Job objects generated by the Generator and processed by the Processor.
		 * @param s reference to the current model state.
		 * @param e time elapsed since the last state transition function was triggered.
		 * @param x reference to the model input port set.
		 */
		void externalTransition(wheel_state& s, double e) const override {
			s.clock += e;
			s.sigma -= e;
			if (!In1->empty() && In1->getBag().back()) {
				s.start_stop_input = In1->getBag().back();
				s.sigma = DrivePeriod;
			}
			else 
			{
				s.start_stop_input = 0;
			}
		}

		/**
		 * It sends a message to the Generator to stop generating new Job objects.
		 * @param s reference to the current model state.
		 * @param y reference to the atomic model output port set.
		 */
		void output(const wheel_state& s) const override {
			// outStop->addMessage(true);
		}

		/**
		 * It returns the value of TransducerState::sigma.
		 * @param s reference to the current model state.
		 * @return the sigma value.
		 */
		[[nodiscard]] double timeAdvance(const wheel_state& s) const override {
			return s.sigma;
		}
	};
}  //namespace cadmium::example::cleaning_robot

#endif //CADMIUM_WHEEL_HPP_
