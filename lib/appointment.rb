

class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor_object)
      @date = date
      doctor_object.add_appointment(self)
  end
end
