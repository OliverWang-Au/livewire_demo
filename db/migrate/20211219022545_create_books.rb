class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :avatar_
      t.string :m_fund_
      t.string :fund_name_
      t.string :shares_
      t.string :mi_
      t.string :mf_
      t.string :gsi_
      t.string :year_
      t.string :month_1_
      t.string :year_1_
      t.string :years_3_
      t.string :years_5_
      t.string :si_
      t.string :mf_2_
      t.string :ap_
      t.string :tcr_
      t.string :da_te_

      t.timestamps
    end
  end
end
