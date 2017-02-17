#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: filetype=ruby

module Tubuyaki

def version
require 'tubuyaki/version'
print "Tubuyaki_Version : "
puts Tubuyaki::VERSION
end

def start
puts "取扱説明書".center(60,'-')
puts ""
puts "

>tubuyaki
　∟tubuyakiを起動します

>tubuyaki -v
　∟tubuyakiのバージョンを表示します

>tubuyaki -h
　∟tubuyakiのヘルプを表示します

tubuyakiはMITライセンスです

"
puts""
puts "取扱説明書".center(60,'-')
end

def soft
#  Copyright © 2015 Takayuki, Kamiyama

require 'tk'

window = TkRoot.new{
title 'tubuyaki'
resizable [0,0]
}

window1 = TkToplevel.new{
title 'boyaki is shout!'
}
    
TkLabel.new(nil,
:text => "ひとりごと...顔だけキン肉マン...かおだけきん...",
:fg => "blue").pack
#家族、曰く私が眠くなるという独り言らしい

entry = TkEntry.new.pack('side'=>'left')

c = TkButton.new{
  image TkPhotoImage.new("file" => "tweet_icon.gif")
  pack('fill'=>'x',"padx"=>2.5,"pady"=>2.5)
}

c.command proc {

 saikoro = Random.rand(6)

 case saikoro

 when 4 then
 File.open("backup.txt", "a:utf-8") do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => "black",
        :bg => "yellow").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
    end
    
 when 3 then   
 File.open("backup.txt", "a:utf-8") do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => "black",
        :bg => "white").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
    end
    
 when 2 then
 File.open("backup.txt", "a:utf-8") do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "black").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
end	
	
 when 1 then
 File.open("backup.txt", "a:utf-8") do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => "black",
        :bg => "green").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
end	
	
when 0 then
File.open("backup.txt", "a:utf-8") do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "red").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
    end
    
else
   File.open("backup.txt", "a:utf-8") do |f|
   TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => "white",
        :bg => "blue").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)
    end
    
end
}

Tk.mainloop
end

module_function :soft, :version, :start
end

v = /\Aversion\z/
ve = /\A[-][v]\z/
h = /\Ahelp\z/
he = /\A[-][h]\z/

one = ARGV[0]

case
when one.nil?
Tubuyaki.soft
when one.match(v)
Tubuyaki.version
when one.match(ve)
Tubuyaki.version
when one.match(h)
Tubuyaki.start
when one.match(he)
Tubuyaki.start
else
puts ''
puts "Please choose an option."
puts "Dear my wife."
puts ''
end

# require "bundler/setup"
# You can add fixtures and/or initialization code here to make experimenting
# with your gem easier. You can also use a different console, if you like.

# (If you use this, don't forget to add pry to your Gemfile!)
# require "pry"
# Pry.start

# require "irb"
# IRB.start