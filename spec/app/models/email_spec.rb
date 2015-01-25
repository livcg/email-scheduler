require 'email'

describe Email do
  it 'is not yet sent' do
    e = Email.new
    expect(e.sent?).to be false
  end

  it 'requires non-empty email address' do
    e = Email.new(subject: 'blah', body: 'blah', send_date_time: '2015-01-25 23:59')
    expect(e.save).to be false
    expect(e.errors.messages[:to]).to include 'can\'t be blank'
  end

  it 'requires non-empty subject' do
    e = Email.new(to: 'livcg1@yahoo.com', body: 'blah', send_date_time: '2015-01-25 23:59')
    expect(e.save).to be false
    expect(e.errors.messages[:subject]).to include 'can\'t be blank'
  end

  it 'requires non-empty body' do
    e = Email.new(to: 'livcg1@yahoo.com', subject: 'blah', send_date_time: '2015-01-25 23:59')
    expect(e.save).to be false
    expect(e.errors.messages[:body]).to include 'can\'t be blank'
  end

  it 'requires non-empty send_date_time' do
    e = Email.new(to: 'livcg1@yahoo.com', subject: 'blah', body: 'blah')
    expect(e.save).to be false
    expect(e.errors.messages[:send_date_time]).to include 'can\'t be blank'
  end

  it 'requires valid email address' do
    e = Email.new(to: 'blah', subject: 'blah', body: 'blah', send_date_time: '2015-01-25 23:59')
    expect(e.save).to be false
    expect(e.errors.messages[:to]).to include 'Invalid email address'
  end

  it 'is successfully sent' do
    e = Email.new(to: 'livcg1@yahoo.com', subject: 'blah', body: 'blah', send_date_time: '2015-01-25 23:59')
    expect(e.save).to be true
  end    
end
