require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  it 'exists' do
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", ["meredith", "alex"])
    meredith = Doctor.new("Meredith Gray", "General Surgery", "Harvard", 100_000)
    alex = Doctor.new("Alex Karev", "Pediatric Surgery", "John Hopkins", 90_000)
    expect(seattle_grace).to be_a(Hospital)
  end

  it 'has many attributes' do
    seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", ["meredith, alex"])
    meredith = Doctor.new("Meredith Gray", "General Surgery", "Harvard", 100_000)
    alex = Doctor.new("Alex Karev", "Pediatric Surgery", "John Hopkins", 90_000)
    expect(seattle_grace.name).to eq("Seattle Grace")
    expect(seattle_grace.chief_of_surgery).to eq("Richard Webber")
    expect(seattle_grace.doctors).to eq(["meredith", "alex"])
  end

  
end
