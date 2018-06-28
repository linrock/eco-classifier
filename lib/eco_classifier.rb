require "eco_classifier/eco_data_file_parser"
require "eco_classifier/opening_tree"
require "eco_classifier/version"

module EcoClassifier
  def self.opening_tree
    return @@opening_tree if defined? @@opening_tree
    @@opening_tree = OpeningTree.new
    @@opening_tree.generate!
    @@opening_tree
  end

  def self.classify_moves(moves)
    opening_tree.get_opening moves
  end

  def self.classify_pgn(pgn)
    opening_tree.get_opening_from_pgn pgn
  end
end
