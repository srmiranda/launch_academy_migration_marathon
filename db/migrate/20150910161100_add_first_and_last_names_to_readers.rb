class AddFirstAndLastNamesToReaders < ActiveRecord::Migration
  class Reader < ActiveRecord::Base
  end

  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    readers = Reader.all
    readers.each do |reader|
      reader.first_name = reader.name.split.first
      reader.last_name = reader.name.split.last
      reader.save
    end

    remove_column :readers, :name
  end

  def down
    add_column :readers, :name, :string

    readers = Reader.all
    readers.each do |reader|
      reader.name = "#{reader.first_name} #{reader.last_name}"
      reader.save
    end

    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end
end
