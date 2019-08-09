class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def patients
    @appointments.collect(&:patient) 
  end
  
end