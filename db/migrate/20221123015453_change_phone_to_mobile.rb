class ChangePhoneToMobile < ActiveRecord::Migration[7.0]
  def change
                  # table    old col new col
    rename_column :contacts, :phone, :mobile
  end
end
