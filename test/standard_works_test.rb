require 'test_helper'

class StandardWorksLookup < Minitest::Test
  def test_all
    assert_kind_of Hash, StandardWorks.all
    assert_equal 41_995, StandardWorks.all.keys.count
  end

  def test_verse_only
    ref = 'Alma 18:27'
    result = StandardWorks.verse ref
    assert_kind_of String, result
    assert_equal result, 'And he said, Yea.'
  end

  def test_that_it_has_a_version_number
    refute_nil ::StandardWorks::VERSION
  end

  def test_bad_lookup
    ref = 'Term'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:verse], 'Unable to find Scripture'
    assert_equal result[:reference], ref
  end

  def test_book_of_mormon
    ref = 'Alma 18:27'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], ref
    assert_equal result[:verse], 'And he said, Yea.'
  end

  def test_pearl_of_great_price
    ref = 'Joseph Smith—Matthew 1:24'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], ref
    assert_equal result[:verse], 'Behold, I have told you before;'
  end

  def test_doctrine_and_covenants
    ref = 'D&C 88:36'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], ref
    assert_equal result[:verse], 'All kingdoms have a law given;'
  end

  def test_new_testament
    ref = 'John 11:35'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], ref
    assert_equal result[:verse], 'Jesus wept.'
  end

  def test_old_testament
    ref = '1 Chronicles 1:25'
    result = StandardWorks.lookup ref
    assert_kind_of Hash, result
    assert_equal result[:reference], ref
    assert_equal result[:verse], 'Eber, Peleg, Reu,'
  end
end
