class TranslateAuthor < ActiveRecord::Migration[5.0]
  def self.up
    I18n.with_locale("ru".to_sym) do
      Author.create_translation_table!({
        :name => :string
      }, {
        :migrate_data => true,
        :remove_source_columns => true
      })
    end
  end

  def self.down
    Author.drop_translation_table! :migrate_data => true
  end
end
