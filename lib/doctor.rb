require 'Pry'
class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
    # binding.pry
  end

  def patients
    patients = []
    @appointments.each do |appoint|
      patients << appoint.patient
    end
    patients
    # binding.pry
  end
end

# pry.Start
