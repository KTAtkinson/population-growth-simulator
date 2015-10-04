require "simulator/simulator.rb"
require "simulator/person.rb"
require "simulator/consants.rb"

module DigestEmail
  def self.parse(digest_hash)
    DigestParser.parse digest_hash
  end
end
