require 'test_helper'

class EcoClassifierTest < Minitest::Test

  def setup
		@klass = EcoClassifier
  end

  def test_classifier_detects_queens_pawn_game
    opening = @klass.classify_moves %w( d4 d5 )
    assert opening.name == "Queen's Pawn Game"
  end

  def test_classifier_detects_kings_gambit
    opening = @klass.classify_moves %w( e4 e5 f4)
    assert opening.name == "King's Gambit"
  end

  def test_classifier_detects_queens_gambit
    opening = @klass.classify_moves %w( d4 d5 c4)
    assert opening.name == "Queen's Gambit"
  end

  def test_classifier_detects_ruy_lopez
    opening = @klass.classify_moves %w( e4 e5 Nf3 Nc6 Bb5 )
    assert opening.name == "Spanish (Ruy Lopez)"
  end
end
