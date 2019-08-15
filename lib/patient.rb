class Patient

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.map { |appt| appt.doctor }
  end

end
