require 'test_helper'

class EmailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "send" do
    # Test that the email message was created correctly
    email = Email.create(to: 'bob@example.com', subject: 'Yo', body: 'Wassup??')
    msg = Emailer.schedule_email(email).deliver_now
    assert_not ActionMailer::Base.deliveries.empty?
    assert_equal ['livcg@example.com'], msg.from
    assert_equal ['bob@example.com'], msg.to
    assert_equal 'Yo', msg.subject
#    assert_equal 'Wassup??', msg.body
  end
end
