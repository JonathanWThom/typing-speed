class AddStringsTable < ActiveRecord::Migration[5.0]
  def change
    create_table(:sentences) do |t|
      t.column(:sentence, :string)
    end
  end
end
