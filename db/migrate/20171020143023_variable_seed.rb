class VariableSeed < ActiveRecord::Migration[4.2]
  def up
    time=(Date.today - 1.day).to_time.to_i
    Variable.create name: 'latest_puppet_sync', data: time.to_s
  end
end
