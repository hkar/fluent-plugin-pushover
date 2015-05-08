require 'helper'

class TwilioOutputTest < Test::Unit::TestCase
  def setup
    Fluent::Test.setup
  end

  CONFIG = %[
    account_token  PUSHOVER_ACCOUNT_ID
    user_key   USER_KEY
  ]

  def create_driver(conf=CONFIG, tag='test')
    Fluent::Test::OutputTestDriver.new(Fluent::PushoverOutput, tag).configure(conf)
  end

  def test_configure
    assert_raise(Fluent::ConfigError) {
      d = create_driver('')
    }
    d = create_driver CONFIG

    assert_equal 'PUSHOVER_ACCOUNT_ID', d.instance.account_token
    assert_equal 'USER_KEY', d.instance.user_key
  end

  def test_emit
    d1 = create_driver(CONFIG, 'notify.call')
    d1.run do
      d1.emit({'message' => 'hello world.'})
    end
    emits = d1.emits
    assert_equal 0, emits.length
  end
end

