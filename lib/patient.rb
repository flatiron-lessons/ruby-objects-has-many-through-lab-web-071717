class Patient

	attr_accessor :name, :appointments

	def initialize(name)
		@name = name
		@appointments = []
	end

	# when a patient makes an appointment, a doctor knows about it
	def add_appointment(appointment)
		self.appointments << appointment
		appointment.patient = self
	end

	def doctors
		self.appointments.map do |appointment|
			appointment.doctor
		end.uniq
	end
end