# An appointment has a doctor and a patient

class Appointment

	attr_accessor :patient, :doctor

	def initialize(date, doctor)
		@date = date
		@doctor = doctor
		doctor.add_appointment(self)
	end
end
