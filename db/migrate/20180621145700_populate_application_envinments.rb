class PopulateApplicationEnvinments < ActiveRecord::Migration[4.2]
  def change
    ApplicationEnvironment.find_or_create_by name: 'Production'
    ApplicationEnvironment.find_or_create_by name: 'Test'
    ApplicationEnvironment.find_or_create_by name: 'Development'
    ApplicationEnvironment.find_or_create_by name: 'Staging'
    ApplicationEnvironment.find_or_create_by name: 'Unknown'
  end
end
