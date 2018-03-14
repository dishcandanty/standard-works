require 'standard_works/version'
require 'oj'

# Main Module
module StandardWorks
  OPTIONS = { symbol_keys: true, mode: :compat }.freeze
  LOCATION = 'lib/standard_works/source/'.freeze

  def self.load_books
    @references = {}
    books.each do |book|
      power = read book

      chapter_verses(power) if power.key? :books
      sections(power) if power.key? :sections
    end
  end

  def self.sections(power)
    power[:sections].each do |section|
      section[:verses].each { |verse| add_reference(verse) }
    end
  end

  def self.add_reference(verse)
    @references[verse[:reference]] = verse[:text]
  end

  def self.chapter_verses(power)
    # Get down to Verses
    power[:books].each do |sub_book|
      sub_book[:chapters].each do |chapter|
        chapter[:verses].each { |verse| add_reference(verse) }
      end
    end
    # And turn it into the main reference
  end

  def self.books
    [
      'book-of-mormon',
      'doctrine-and-covenants',
      'new-testament',
      'old-testament',
      'pearl-of-great-price'
    ]
  end

  def self.read(file)
    location = __dir__
    Oj.load_file("#{location}/source/#{file}.json", OPTIONS)
  end
end
