require 'pry'
class Doctor

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment #the appointments class adds that appointment to the appointments array
    appointment.doctor = self #self #appointment it belongs to the instance of Doctor
  end

  def patients
     @appointments.collect do |appointment|
      appointment.patient
    end
  end


end
