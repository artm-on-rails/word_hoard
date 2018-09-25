module Hoard
  module Exchange
    ROOT = Rails.root.join("tmp", "exchange")
    CARDS_FILE = ROOT.join("cards.tsv")
    MEDIA_DIR = ROOT.join("media")
    AUDIO_CONTENT_TYPE = "audio/mpeg"
    CSV_OPTIONS = {
      col_sep: "\t",
      headers: %w[
        anki_card_id
        term
        anki_context
        anki_context_deleted
        term_translation
        anki_context_translation
        anki_audio
        anki_tags
      ]
    }
  end
end
