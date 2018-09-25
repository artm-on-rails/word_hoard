require "csv"

Card.destroy_all

CSV.foreach(Hoard::Exchange::CARDS_FILE, Hoard::Exchange::CSV_OPTIONS) do |row|
  anki_note = AnkiNote.new(row.to_h)
  card = Card.create(anki_note.to_card_attributes)
  card.audio.attach(
    io: File.open(anki_note.audio_path),
    filename: anki_note.audio_basename,
    content_type: Hoard::Exchange::AUDIO_CONTENT_TYPE
  ) if anki_note.has_audio?
end
