class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def doctors
    @appointments.map do |appointments|
      appointments.doctor
    end
  end

def add_appointment(appointment)
  self.appointments << appointment
  appointment.patient = self
end



end
