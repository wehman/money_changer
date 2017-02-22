
require "minitest/autorun"

require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_make_change_is_one_cent

		in_amount = 1

		results = make_change(in_amount)

		assert_equal({:quarter => 0, :dime => 0, :nickel => 0, :penny => 1}, results)

	end

  def test_make_change_is_one_nickel_and_three_cents

    in_amount = 8

    results = make_change(in_amount)

    assert_equal({:quarter => 0, :dime => 0, :nickel => 1, :penny => 3}, results)

  end

  def test_make_change_is_one_of_each_coin

    in_amount = 41

    results = make_change(in_amount)

    assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 1}, results)

  end

end
