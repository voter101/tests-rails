class CreateWeirdEnterpriseStuffs < ActiveRecord::Migration
  def change
    create_table :weird_enterprise_stuffs do |t|
      t.string :priority

      t.timestamps
    end
  end
end
