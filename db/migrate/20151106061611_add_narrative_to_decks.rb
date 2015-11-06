class AddNarrativeToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :narrative, :string
  end
end
