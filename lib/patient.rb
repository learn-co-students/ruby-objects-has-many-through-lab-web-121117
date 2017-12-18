require_relative "appointment"
require_relative "doctor"

class Patient

  attr_accessor :name, :date, :doctor
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
  end
  def appointments
    @appointments
  end
  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
