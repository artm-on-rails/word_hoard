class AnkiNote
  include ActiveAttr::Model
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
end
