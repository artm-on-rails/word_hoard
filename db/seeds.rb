require "csv"

=begin
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
=end

AudioClip.destroy_all

Dir[Hoard::Exchange::AUDIO_CLIPS_DIR.join("*.mp3")].each do |path|
  title = Pathname.new(path).basename(".mp3")
  filename = Pathname.new(path).basename
  clip = AudioClip.create(title: title)
  clip.audio.attach(
    io: File.open(path),
    filename: filename,
    content_type: Hoard::Exchange::AUDIO_CONTENT_TYPE
  )
end
