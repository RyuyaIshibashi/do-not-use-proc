class Effect

  def initialize(method, opt = nil)
    @method = method
    @opt = opt
  end

  def play(words)
    self.send(@method, words)
  end

  def reverse(words)
    words.split(' ').map(&:reverse).join(' ')
  end

  def echo(words)
    rate = @opt
    words.each_char.map { |c| c == ' ' ? c : c * rate }.join
  end

  def loud(words)
    level = @opt
    words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
  end
end
