require_relative "doctor"
require_relative "patient"

class Appointment

  attr_accessor :patient, :appointments, :doctor

  def initialize(date,doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
end
