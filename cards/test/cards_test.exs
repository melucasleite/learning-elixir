defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create deck returns 20 cards" do
    deck = Cards.create_deck()
    assert length(deck) == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    assert deck != Cards.shuffle(deck)
  end
end
