require 'minitest/autorun'
require 'factory_bot'

class KondutoPaymentTest < MiniTest::Test
  include FactoryBot::Syntax::Methods

  def test_serialization
    payment = build_list(:konduto_payment, 1, :credit_card)
    payment_json = load_resource('payments.json')

    assert_equal payment_json, payment.map { |value| value.to_hash }, 'serialization failed'
  end
end
