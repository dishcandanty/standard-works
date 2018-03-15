# StandardWorks

Simple gem that turns scripture references into text. Uses the [LDS StandardWorks](https://www.lds.org/topics/standard-works)

The source text is included in the gem (No API Calls), and source is from (thanks mr Ben Crowder!): https://github.com/bcbooks/scriptures-json


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'standard_works'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install standard_works

## Usage

The two primary methods are `lookup` and `verse`.
Lookup will include the expanded Reference (if abbreviated)
Verse will return text only

```
require 'standard_works'

# Examples
StandardWorks.lookup  'JS-M 1:24'
#=> {:reference=>"Joseph Smith—Matthew 1:24", :verse=>"Behold, I have told you before;"}
StandardWorks.lookup  'Doctrine and Covenants 88:36'
#=> {:reference=>"D&C 88:36", :verse=>"All kingdoms have a law given;"}
StandardWorks.lookup  'Alma 18:27'
#=> {:reference=>"Alma 18:27", :verse=>"And he said, Yea."}
StandardWorks.lookup 'D&C 88:36'
#=> {:reference=>"D&C 88:36", :verse=>"All kingdoms have a law given;"}

# Verse Only
StandardWorks.verse 'D&C 88:36'
#=> "All kingdoms have a law given;"
```

## Abbreviations

I had a few copy paste failures trying to turn scripture references into text. So I added a bunch of the common abbreviations as well as the list from lds.org.

Check out lib/standard_works/abbreviations.rb for the source. Here's a list though

| Turn This        | Into That  |
| ------------- |:-------------:|
| Doctrine and Covenants | D&C |
| Abr. | Abraham |
| JS-M | Joseph Smith—Matthew |
| JS-H | Joseph Smith—History |
| A of F | Articles of Faith |
| Gen. | Genesis |
| Ex. | Exodus |
| Lev. | Leviticus |
| Num. | Numbers |
| Deut. | Deuteronomy |
| Josh. | Joshua |
| Judg. | Judges |
| 1 Sam. | 1 Samuel |
| 2 Sam. | 2 Samuel |
| 1 Kgs. | 1 Kings |
| 2 Kgs. | 2 Kings |
| 1 Chr. | 1 Chronicles |
| 2 Chr. | 2 Chronicles |
| Neh. | Nehemiah |
| Esth. | Esther |
| Ps. | Psalms |
| Prov. | Proverbs |
| Eccl. | Ecclesiastes |
| Song. | Song of Solomon |
| Isa. | Isaiah |
| Jer. | Jeremiah |
| Lam. | Lamentations |
| Ezek. | Ezekiel |
| Dan. | Daniel |
| Obad. | Obadiah |
| Hab. | Habakkuk |
| Zeph. | Zephaniah |
| Hag. | Haggai |
| Zech. | Zechariah |
| Mal. | Malachi |
| Matt. | Matthew |
| Rom. | Romans |
| 1 Cor. | 1 Corinthians |
| 2 Cor. | 2 Corinthians |
| Gal. | Galatians |
| Eph. | Ephesians |
| Philip. | Philippians |
| Col. | Colossians |
| 1 Thes. | 1 Thessalonians |
| 2 Thes. | 2 Thessalonians |
| 1 Tim. | 1 Timothy |
| 2 Tim. | 2 Timothy |
| Philem. | Philemon |
| Heb. | Hebrews |
| 1 Pet. | 1 Peter |
| 2 Pet. | 2 Peter |
| 1 Jn. | 1 John |
| 2 Jn. | 2 John |
| 3 Jn. | 3 John |
| Rev. | Revelation |
| 1 Ne. | 1 Nephi |
| 2 Ne. | 2 Nephi |
| W of M | Words of Mormon |
| Hel. | Helaman |
| 3 Ne. | 3 Nephi |
| 4 Ne. | 4 Nephi |
| Morm. | Mormon |
| Moro. | Moroni |



## Other

This wasn't exactly built for speed. So it will load all of the scriptures build a hash in memory. The first load can take some time, subsequent lookups go out in haste

```
user     system      total        real
start:    0.100000   0.010000   0.110000 (  0.109682)
next:     0.000000   0.000000   0.000000 (  0.000079)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[dishcandanty]/standard_works. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the StandardWorks project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/standard_works/blob/master/CODE_OF_CONDUCT.md).
