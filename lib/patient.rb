class Patient
  attr_accessor :name, :appointments

  @@all =[]

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def doctors
    @appointments.collect do |appt|
      appt.doctor
    end
  end
end