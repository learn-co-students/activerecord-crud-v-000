
class CreateMovie <ActiveRecord::Migration

  def change
    create_table :movies |m|
    m.string :title
  end
end
end
