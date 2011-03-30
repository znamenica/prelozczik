# encoding: utf-8

require File.expand_path('../../lib/priehlazx', __FILE__)

RSpec.configure do |c|
  c.mock_with :rspec
end

def прѣхлажь(tgt, src, ins)
    $stderr.puts "#{src} -> #{tgt}"
    $pl.истокъ = src
    $pl.цѣль = tgt
    $stderr.puts "<<< #{ins.inspect}"
    o = $pl.go( ins )
    $stderr.puts ">>> #{o.inspect}"
    o
end

