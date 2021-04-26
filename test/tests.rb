# coding: utf-8

require "test/unit"
require_relative "../lib/thai_romanize"

class RomanizeTest < Test::Unit::TestCase
  def test_simple    
    assert_equal "ka", ThaiRomanize.romanize("กา")
  end

  def test_two_words
    assert_equal "ka ka", ThaiRomanize.romanize("กากา")
  end

  def test_kan
    assert_equal "kan", ThaiRomanize.romanize("การ")
  end

  def test_complex_word
    assert ThaiRomanize.romanize("อานิสงส์").length > 0
  end

  def test_long
    assert ThaiRomanize.romanize("อานิสงส์ของการได้ยินได้ฟังพุทธวจนก่อนตาย เป็นอย่างไร").length > 0
  end

  def test_hum
    assert_equal "ham", ThaiRomanize.romanize("หำ")
  end

  def test_rr_end
    assert_equal "khan", ThaiRomanize.romanize("ขรร")
  end

end
