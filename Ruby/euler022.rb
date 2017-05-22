require 'open-uri'

def get_names_http
  url = "https://projecteuler.net/project/resources/p022_names.txt"
  # Bad developer! No!
  disable_certificate_warnings = {ssl_verify_mode: 0}
  open(url, disable_certificate_warnings).read.scan(/[A-Z]+/)
end

def get_names_filesystem
  File.read("euler022_input.txt").scan(/[A-Z]+/)
end

module Enumerable
  def sum
    inject :+
  end
end

class String
  @@ascii_offset = "A".ord - 1
  def char_score
    self.chars.map{ |c| c.ord - @@ascii_offset }.sum
  end
end

def euler022
  get_names_filesystem
    .sort
    .each_with_index
    .map{ |name, index| name.char_score * (index + 1) }
    .sum
end