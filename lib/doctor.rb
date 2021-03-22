class Doctor

    attr_accessor :name

    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|apointments| apointments.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.select {|appointments|
        appointments.doctor == self}.map {|instance| instance.patient}
    end
end
