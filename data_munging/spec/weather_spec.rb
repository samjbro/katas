require 'weather'

RSpec.describe 'weather' do
  let(:weather_data) { File.open('spec/support/weather_data.dat') }
  let(:football_data) { File.open('spec/support/football_data.dat') }

  it "returns the day with the smallest temperature range" do
    expect(find_smallest_temp_range(weather_data)).to eq('14')
  end
  it "returns the team with the smallest goal difference" do
    expect(find_smallest_goal_difference(football_data)).to eq('Aston_Villa')
  end

end
