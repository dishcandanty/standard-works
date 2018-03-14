require 'test_helper'

class StandardWorksLookup < Minitest::Test
  def test_abrv_book_of_mormon
    ref = 'Hel. 10:2'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], 'Helaman 10:2'
    # rubocop:disable Metrics/LineLength
    assert_equal result[:verse], 'And it came to pass that Nephi went his way towards his own house, pondering upon the things which the Lord had shown unto him.'
    # rubocop:enable Metrics/LineLength
  end

  def test_abrv_pearl_of_great_price
    ref = 'JS-M 1:24'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], 'Joseph Smith—Matthew 1:24'
    assert_equal result[:verse], 'Behold, I have told you before;'
  end

  def test_abrv_doctrine_and_covenants
    ref = 'Doctrine and Covenants 88:36'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal 'Doctrine and Covenants 88:36', ref
    assert_equal result[:verse], 'All kingdoms have a law given;'
  end

  def test_abrv_new_testament
    ref = 'Matt. 6:3'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], 'Matthew 6:3'

    # rubocop:disable Metrics/LineLength
    assert_equal result[:verse], 'But when thou doest alms, let not thy left hand know what thy right hand doeth:'
    # rubocop:enable Metrics/LineLength
  end

  def test_abrv_old_testament
    ref = '1 Chr. 1:25'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], '1 Chronicles 1:25'
    assert_equal result[:verse], 'Eber, Peleg, Reu,'
  end
end
