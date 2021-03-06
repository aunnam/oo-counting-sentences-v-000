require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    end
    false
  end

  def question?
    if self.end_with?("?")
      return true
    end
    false
  end

  def exclamation?
    if self.end_with?("!")
      return true
    end
    false
  end

  def count_sentences
    sentsplit = self.split(/\.|\?|\!/)
    count=0
    sentsplit.each do |i|
      if i != nil and i != ""
        count = count +1
      end
    end
    return count
  end
end
