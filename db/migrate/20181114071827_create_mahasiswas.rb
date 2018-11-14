class CreateMahasiswas < ActiveRecord::Migration[5.2]
  def change
    create_table :mahasiswas do |t|
      t.string :nama
      t.string :alamat
      t.date :tanggal

      t.timestamps
    end
  end
end
