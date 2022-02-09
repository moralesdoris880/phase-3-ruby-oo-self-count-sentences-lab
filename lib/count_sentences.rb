require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    puts self
    sentence=self.split(/[\S]+[(\?)||(\!)||(\.$)]/)
    puts sentence
    sentence=sentence.count 
  end
end

#[(\?)||(\!)||(\.$)]
#[(?<!\.)+\.+(?!\.)+]
#([(\.)||(\?)||(\!)]\s\.?)
#/([(\.)||(\?)||(\!)]\s\.?)/