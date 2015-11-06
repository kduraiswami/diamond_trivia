class CreateSiteMetrics < ActiveRecord::Migration
  def change
    create_table :site_metrics do |t|
      t.integer :sign_ups
      t.integer :tests_started
      t.integer :scores_generated
      t.integer :fb_shares

      t.timestamps null: false
    end
  end
end
