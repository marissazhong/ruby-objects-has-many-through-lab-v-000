class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    new_appt = Appointment.new(date, patient, self)
    new_appt.doctor = self
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    patients = []
    appointments.each {|appt| patients << appt.patient}
