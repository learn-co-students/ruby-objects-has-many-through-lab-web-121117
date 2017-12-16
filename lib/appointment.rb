class Appointment
  attr_accessor :doctor, :patient
  attr_reader :name

  def initialize(date, doctor)
    doctor.add_appointment(self)
  end

end
