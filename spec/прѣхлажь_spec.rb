#!/usr/bin/ruby -KU
# encoding: utf-8

require File.expand_path('../spec_helper', __FILE__)

$pl = Priehlazx.new

describe 'Прехлажь' do
  describe "Прехлажьство" do

    it "UCS8 -> UTF8/HIP" do
      ins = ''
      (32..127).each do |i| ins << [ i ].pack('U*') end
      (164..187).each do |i| ins << [ i ].pack('U*') end
      (1024..0x491).each do |i| ins << [ i ].pack('U*') end
      (0x2013..0x22AC).each do |i| ins << [ i ].pack('U*') end

      outs = " !=='=`~()*\\в,-.о''`=='=`^~\\ъж~:;\\х\\н\\р\\ч`а`jь^\\сд\\се`Fг~w'_I_i`Jа=л\\дV\"_О=_О_ПС_Wр~я`W\\тО_УVW_КСу`Я[~]^\\ъа'\\о\\с\\де'f\\гы'_i_i'jа=л~v\"_о=_о_пс_wр\\ся'w\\то_уvw_ксу'яу^я=`и~'"
      outs += "#х~ч~с~р\\д@jа=`_у"
      outs += "jь`v'А='SI_I=_I='Я=W=Jа='О_У='О_У=_О='АБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬJьЮJаабвгдежзийклмнопрстуфхцчш<щ>ъыьjьюjаjь'v\\га='_еsi_i=_i='я=w=jа='о_у='о_у=_о='А=а=" 
      outs += "а^_i^\\ж_кс~я^_i~v^\\за~т~"

      o = прѣхлажь('UTF8/HIP', 'UCS8', ins)
      File.open('11','w') do |f| f.puts o end
      raise "Стрози до прѣхлаженіи послѣ не суть равны" if o != outs
    end
  end
end

