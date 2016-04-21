require './test/test_helper'

class SalesAnalysisTest < Minitest::Test

  def test_it_exists
    assert_equal SalesAnalysis, @analysis.class
  end

  def test_it_has_sales_engine
    assert_equal SalesEngine, @analysis.engine.class
  end

  def test_average_items_per_merchant
    assert_equal 1.4, @analysis.average_items_per_merchant
  end

  def test_average_items_per_merchant_standard_deviation
    assert_equal 0.89, @analysis.average_items_per_merchant_standard_deviation
  end

  def test_merchants_with_high_item_count
  end

end