


class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment_object)
    @appointments << appointment_object
    appointment_object.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.map do |appointment_object|
      appointment_object.patient
    end
  end
end
