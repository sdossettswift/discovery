class DropLawOfficeComments2 < ActiveRecord::Migration[5.0]
  def change
    drop_table :law_office_comments
  end
end
