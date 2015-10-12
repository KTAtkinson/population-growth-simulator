require "simulator/simulator.rb"
require "simulator/person.rb"
require "simulator/constants.rb"
require "simulator/modifier.rb"

module DigestEmail
  def self.parse(digest_hash)
    DigestParser.parse digest_hash
  end
end
