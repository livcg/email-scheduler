require "email"

describe Email do
  it 'is not yet sent' do
    e = Email.new    
    e.sent?.should be false
    expect(e.sent?).to be false
  end
end
