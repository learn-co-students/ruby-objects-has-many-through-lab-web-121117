

class Patient

  attr_accessor :name, :appointments, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_object)
    appointment_object.patient = self
    @appointments << appointment_object
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.map do |appointment_object|
      appointment_object.doctor
    end
  end

end
