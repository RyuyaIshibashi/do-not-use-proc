require 'minitest/autorun'
require_relative '../lib/effect'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effect.new(:reverse)
    assert_equal "ybuR si !nuf", effect.reverse("Ruby is fun!")
  end

  def test_echo
    effect = Effect.new(:echo, 2)
    assert_equal "RRuubbyy iiss ffuunn!!", effect.echo('Ruby is fun!')

    effect = Effect.new(:echo, 3)
    assert_equal "RRRuuubbbyyy iiisss fffuuunnn!!!", effect.echo('Ruby is fun!')
  end

  def test_loud
    effect = Effect.new(:loud, 2)
    assert_equal "RUBY!! IS!! FUN!!!", effect.loud('Ruby is fun!')

    effect = Effect.new(:loud, 3)
    assert_equal "RUBY!!! IS!!! FUN!!!!", effect.loud('Ruby is fun!')
  end

  def test_play
    effect = Effect.new(:reverse)
    assert_equal "ybuR si !nuf", effect.play("Ruby is fun!")

    effect = Effect.new(:echo, 2)
    assert_equal "RRuubbyy iiss ffuunn!!", effect.play('Ruby is fun!')

    effect = Effect.new(:loud, 2)
    assert_equal "RUBY!! IS!! FUN!!!", effect.loud('Ruby is fun!')
  end
end
