# Extension for Abbreviations
module StandardWorks
  def self.expand(term)
    key = abrv.keys.find { |x| term.include? x }
    return term unless key
    term.gsub(key, abrv[key])
  end

  # rubocop:disable Metrics/MethodLength
  def self.abrv
    {
      # This one Is Opposite due to how the references are stored
      'Doctrine and Covenants' => 'D&C',

      # POG
      'Abr.' => 'Abraham',
      'JS-M' => 'Joseph Smith—Matthew',
      'JS-H' => 'Joseph Smith—History',
      'A of F' => 'Articles of Faith',

      # Others
      'Gen.' => 'Genesis',
      'Ex.' => 'Exodus',
      'Lev.' => 'Leviticus',
      'Num.' => 'Numbers',
      'Deut.' => 'Deuteronomy',
      'Josh.' => 'Joshua',
      'Judg.' => 'Judges',
      '1 Sam.' => '1 Samuel',
      '2 Sam.' => '2 Samuel',
      '1 Kgs.' => '1 Kings',
      '2 Kgs.' => '2 Kings',
      '1 Chr.' => '1 Chronicles',
      '2 Chr.' => '2 Chronicles',
      'Neh.' => 'Nehemiah',
      'Esth.' => 'Esther',
      'Ps.' => 'Psalms',
      'Prov.' => 'Proverbs',
      'Eccl.' => 'Ecclesiastes',
      'Song.' => 'Song of Solomon',
      'Isa.' => 'Isaiah',
      'Jer.' => 'Jeremiah',
      'Lam.' => 'Lamentations',
      'Ezek.' => 'Ezekiel',
      'Dan.' => 'Daniel',
      'Obad.' => 'Obadiah',
      'Hab.' => 'Habakkuk',
      'Zeph.' => 'Zephaniah',
      'Hag.' => 'Haggai',
      'Zech.' => 'Zechariah',
      'Mal.' => 'Malachi',
      'Matt.' => 'Matthew',
      'Rom.' => 'Romans',
      '1 Cor.' => '1 Corinthians',
      '2 Cor.' => '2 Corinthians',
      'Gal.' => 'Galatians',
      'Eph.' => 'Ephesians',
      'Philip.' => 'Philippians',
      'Col.' => 'Colossians',
      '1 Thes.' => '1 Thessalonians',
      '2 Thes.' => '2 Thessalonians',
      '1 Tim.' => '1 Timothy',
      '2 Tim.' => '2 Timothy',
      'Philem.' => 'Philemon',
      'Heb.' => 'Hebrews',
      '1 Pet.' => '1 Peter',
      '2 Pet.' => '2 Peter',
      '1 Jn.' => '1 John',
      '2 Jn.' => '2 John',
      '3 Jn.' => '3 John',
      'Rev.' => 'Revelation',
      '1 Ne.' => '1 Nephi',
      '2 Ne.' => '2 Nephi',
      'W of M' => 'Words of Mormon',
      'Hel.' => 'Helaman',
      '3 Ne.' => '3 Nephi',
      '4 Ne.' => '4 Nephi',
      'Morm.' => 'Mormon',
      'Moro.' => 'Moroni'
    }
  end
  # rubocop:enable Metrics/MethodLength
end
