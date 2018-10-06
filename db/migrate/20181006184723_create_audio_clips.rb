class CreateAudioClips < ActiveRecord::Migration[5.2]
  def change
    create_table :audio_clips do |t|
      t.string :title

      t.timestamps
    end
  end
end
