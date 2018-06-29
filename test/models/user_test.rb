require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'create a user' do
    assert false unless User.create(name: 'test', email: 'test@test', password: 'test', wins: 0, losses: 0)
  end

end
