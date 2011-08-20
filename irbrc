require 'irb/completion'
IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:USE_READLINE] = true
IRB.conf[:AUTO_INDENT] = true

require 'pp'
alias p pp
alias quit exit

# wirble
begin
  # load wirble
  require 'wirble'

  # start wirble (with color)
  Wirble.init
  Wirble.colorize
rescue LoadError => err
  warn "Couldn't load Wirble: #{err}"
end

# Quick benchmarking
# Based on rue's irbrc => http://pastie.org/179534
def quick(repetitions=100, &block)
  require 'benchmark'

  Benchmark.bmbm do |b|
    b.report {repetitions.times &block}
  end
  nil
end

# nontrivial_methods
class Object
  # Return only the methods not present on basic object
  def my_methods
    (self.methods - Object.new.methods).sort
  end
end

# irb/ri hack
# r = fri
# FIXME: setup fastri gem.
module Kernel
  def r(arg)
    puts `fri "#{arg}"`
  end
  private :r
end

# shell commands
def ls
  %x(ls).split("\n")
end

def cd(dir)
  Dir.chdir(dir)
  Dir.pwd
end

def pwd
  Dir.pwd
end
