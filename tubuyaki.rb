#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vim: filetype=ruby

require 'tanraku'
#Needing install
#gem install tanraku

module Tubuyaki

def version
eval ("print 'Tubuyaki_Gui Version : '")
  eval ("puts '0.0.6.1'")
end

def start
eval ("puts '取扱説明書'.center(60,'-')")
eval ("puts '

< 使い方 >

tubuyaki_gui = ruby tubuyaki.rb

>tubuyaki_gui
　∟tubuyakiを起動します

>tubuyaki_gui -v
　∟tubuyakiのバージョンを表示します

>tubuyaki_gui -h
　∟tubuyakiのヘルプを表示します

< フォルダ構成 >

>tubuyaki
 ∟log　―　backup.txt
 ∟tubuyaki.rb
 ∟etc...

 自動でフォルダをなければ作成し、
  テキストファイルを追加します。

< ライセンス >

tubuyaki_guiはMITライセンスです

'")
eval ("puts''")
eval ("puts '取扱説明書'.center(60,'-')")
end

def soft
#  Copyright © 2015 Takayuki, Kamiyama

require 'tk'

Dir.mkdir("log",0666) unless FileTest.exist?("log")

window = TkRoot.new{
title 'tubuyaki_gui'
resizable [0,0]
}

window1 = TkToplevel.new{
title 'boyaki is shout!'
}
    
TkLabel.new(nil,
:text => 'やりたいことやってみよう...1.2.3...',
:fg => 'blue').pack

entry = TkEntry.new.pack('side'=>'left')

c = TkButton.new{
  image TkPhotoImage.new('file' => 'tweet_icon.gif')
  pack('fill'=>'x','padx'=>2.5,'pady'=>2.5)
}

c.command proc {

 saikoro = Random.rand(6)

 case saikoro

 when 4 then
 File.open('log/backup.txt', 'a:sjis', perm=0666) do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => 'black',
        :bg => 'yellow').pack('fill'=>'x','padx' => 2.5,'pady' => 2.5)
    end
    
 when 3 then   
 File.open('log/backup.txt', 'a:sjis', perm=0666) do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => 'black',
        :bg => 'white').pack('fill'=>'x','padx' => 2.5,'pady' => 2.5)
    end
    
 when 2 then
 File.open('log/backup.txt', 'a:sjis') do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => 'white',
        :bg => 'black').pack('fill'=>'x','padx' => 2.5,'pady' => 2.5)
end	
	
 when 1 then
 File.open('log/backup.txt', 'a:sjis', perm=0666) do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => 'black',
        :bg => 'green').pack('fill'=>'x','padx' => 2.5,'pady' => 2.5)
end	
	
when 0 then
File.open('log/backup.txt', 'a:sjis', perm=0666) do |f|
 TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => 'white',
        :bg => 'red').pack('fill'=>'x','padx' => 2.5,'pady' => 2.5)
    end
    
else
   File.open('log/backup.txt', 'a:sjis', perm=0666) do |f|
   TkLabel.new(window1,
        :text => f.puts("#{entry.value}"),
        :text => ("#{entry.value}"),
        :fg => 'white',
        :bg => 'blue').pack('fill'=>'x','padx' => 2.5,'pady' => 2.5)
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
eval ("puts ''")
eval ("puts 'Please choose an option.'")
eval ("puts 'Dear my wife.'")
eval ("puts ''")
end
