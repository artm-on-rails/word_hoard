module Hoard
  module Exchange
    CARD_FILE = Rails.root.join("tmp", "exchange", "cards.tsv")
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
