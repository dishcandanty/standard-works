require 'standard_works/version'
require 'standard_works/file_helper'
require 'standard_works/abbreviations'
require 'oj'

# Main Module
module StandardWorks
  @references = nil

  def self.clear
    @references = nil
  end

  def self.all
    references
  end

  def self.verse(term)
    lookup(term)[:verse]
  end

  def self.lookup(term)
    term = expand(term)
    verse = references.dig(term)
    verse = 'Unable to find Scripture' if verse.nil?
    { reference: term, verse: verse }
  end

  def self.references
    load_books if @references.nil?
    @references
  end
end
