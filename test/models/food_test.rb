# frozen_string_literal: true

require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save food without title" do
    food = Food.new
    assert_not food.save
  end

  test "should report error" do
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
