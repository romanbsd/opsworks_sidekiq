node[:deploy].each do |application, deploy|
  Chef::Log.debug("Restarting Sidekiq Application: #{application}")
  execute "restart Rails app #{application}" do
    command node[:sidekiq][application][:restart_command]
  end
end

