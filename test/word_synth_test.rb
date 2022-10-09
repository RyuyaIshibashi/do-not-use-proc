require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effect'

class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end

  def test_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effect.new(:reverse))
    assert_equal "ybuR si !nuf", synth.play("Ruby is fun!")
  end

  def test_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Effect.new(:echo, 2))
    synth.add_effect(Effect.new(:loud, 3))
    synth.add_effect(Effect.new(:reverse))
    assert_equal "!!!YYBBUURR !!!SSII !!!!!NNUUFF", synth.play("Ruby is fun!")
  end
end
