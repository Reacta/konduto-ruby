require 'minitest/autorun'
require 'factory_girl'

class TestKondutoNavigation < Minitest::Test
  include FactoryGirl::Syntax::Methods

  def test_serialization
    navigation_info = build(:konduto_navigation)
    navigation_infoJSON = load_resource('navigation.json')

    assert_equal navigation_info.to_hash, navigation_infoJSON, 'serialization falied'
  end
end
