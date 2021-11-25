# frozen_string_literal: true

require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save food without title" do
    food = Food.new
    food.body = "Delicious!"
    assert_not food.save, "Saved food without a title"
  end

  test "should report error" do
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
