require './lib/rspec_method_grouping'
Dir[File.expand_path("#{__dir__}/supports/**/*.rb", __dir__),].each { |f| require f }

describe RSpecMethodGrouping do
  it do
    expect(GroupA.call_grouped_method).to eq('yay!')
  end

  it do
    expect(GroupB.call_grouped_method).to eq('yap!')
  end
end
