require "simulator/simulator.rb"

module DigestEmail
  def self.parse(digest_hash)
    DigestParser.parse digest_hash
  end
end
