class CreateComputers < ActiveRecord::Migration[6.0]
  enable_extension 'hstore' unless extension_enabled?('hstore')
  def change
    create_table :computers do |t|
      t.string :connector_guid
      t.string :hostname
      t.boolean :active
      t.hstore :links
      t.string :connector_version
      t.string :operating_system
      t.string :internal_ips, array: true 
      t.string :external_ip
      t.string :group_guid
      t.datetime :install_date
      t.string :network_addresses, array: true
      t.hstore :policy
      t.datetime :last_seen
      t.string :faults, array: true

      t.timestamps
    end
  end
end
