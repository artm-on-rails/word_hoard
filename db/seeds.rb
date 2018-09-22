require "csv"

Card.destroy_all

CSV.foreach(Hoard::Exchange::CARD_FILE, Hoard::Exchange::CSV_OPTIONS) do |row|
  anki_note = AnkiNote.new(row.to_h)
  Card.create(anki_note.to_card_attributes)
end
