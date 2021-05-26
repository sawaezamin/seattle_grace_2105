require './lib/doctor'

RSpec.describe Doctor do
  it 'exists' do
    meredith = Doctor.new(:name, :specialty, :education, :salary)
    expect(meredith).to be_a(Doctor)
  end

  it 'has a name' do
    meredith = Doctor.new("Meredith Gray", "General Surgery", "Harvard", 100_000)

    expect(meredith.name).to eq("Meredith Gray")
  end

  it 'has a specialty' do
    meredith = Doctor.new("Meredith Gray", "General Surgery", "Harvard", 100_000)

    expect(meredith.specialty).to eq("General Surgery")
  end

  it 'has an education' do
    meredith = Doctor.new("Meredith Gray", "General Surgery", "Harvard", 100_000)

    expect(meredith.education).to eq("Harvard")
  end

  it 'has a salary' do
    meredith = Doctor.new("Meredith Gray", "General Surgery", "Harvard", 100_000)

    expect(meredith.salary).to eq(100_000)
  end
end
