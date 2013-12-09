namespace :admin do

  desc "List all admin users"
  task list: :environment do
    admins = User.all
    puts "#{admins.length} user(s) with administrator access found"
    admins.each do |admin|
      puts "* #{admin.username}"
    end
  end

  desc "Create a new admin user"
  task create: :environment do
    require_env :username, :password

    if User.where(username: @username).any?
      puts "Admin user '#{@username}' already exist"
      exit 1
    end

    admin = User.new(username: @username, password: @password)

    if admin.save
      puts "Admin user '#{admin.username}' created"
    else
      puts "Cannot create the admin user '#{admin.username}'"
    end
  end

  desc "Delete an admin user"
  task delete: :environment do
    require_env :username

    admin = User.find_by(username: @username)

    if admin
      admin.destroy
      puts "Admin user '#{admin.username}' deleted"
    else
      puts "Admin user '#{@username}' does not exist"
    end
  end

  private

  # Require ENV variables before continue
  def require_env(*args)
    args.each do |arg|
      env_var = "#{arg}".upcase
      if ENV[env_var]
        instance_variable_set("@#{env_var.downcase}", ENV[env_var])
      else
        puts "You need to provide the ENV variable '#{env_var}'"
        exit 1
      end
    end
  end
end