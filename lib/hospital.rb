class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors
  def initialize(doctors = [])
    @doctors = []
  end
end
