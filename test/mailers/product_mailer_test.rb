require 'test_helper'

class ProductMailerTest < ActionMailer::TestCase
  test "target_price_reached" do
    mail = ProductMailer.target_price_reached
    assert_equal "Target price reached", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
