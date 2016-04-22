require './test/test_helper'
require './lib/invoice'

class InvoiceTest < Minitest::Test
  def setup
    @invoice = Invoice.new({
      :id          => 6,
      :customer_id => 7,
      :merchant_id => 8,
      :status      => "pending",
      :created_at  => Time.now,
      :updated_at  => Time.now,
      })
  end

  def test_it_has_an_id
    assert_equal 6, @invoice.id
  end

  def test_it_has_a_customer_id
    assert_equal 7, @invoice.customer_id
  end

  def test_it_has_a_merchant_id
    assert_equal 8, @invoice.merchant_id
  end

  def test_it_has_a_status
    assert_equal "pending", @invoice.status
  end

  def test_it_has_a_created_at
    assert @invoice.created_at
  end

  def test_it_has_a_updated_at
    assert @invoice.updated_at
  end
end
