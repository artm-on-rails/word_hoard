class AnkiNote
  include ActiveAttr::Model

  ANKI_PATH_PATTERN = /(?<=\[sound:).*(?=\])/
  AUDIO_ROOT = Hoard::Exchange::MEDIA_DIR

  attribute :anki_card_id
  attribute :term
  attribute :anki_context
  attribute :anki_context_deleted
  attribute :term_translation
  attribute :anki_context_translation
  attribute :anki_audio
  attribute :anki_tags

  def to_card_attributes
    {
      term: term,
      context: anki_context,
      term_translation: term_translation,
      context_translation: anki_context_translation
    }
  end

  def has_audio?
    File.exist?(audio_path)
  end

  def audio_basename
    anki_audio[ANKI_PATH_PATTERN].to_s
  end

  def audio_path
    AUDIO_ROOT.join(audio_basename)
  end
end
