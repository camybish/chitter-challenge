require_relative 'user'

class UserRepository
  def all
    users = []
    sql = 'SELECT id, username, name, email, password FROM users;'
    result_set = DatabaseConnection.exec_params(sql, [])
    
    result_set.each do |record|
      user = User.new
      user.id = record['id'].to_i
      user.username = record['username']
      user.name = record['name']
      user.email = record['email']
      user.password = record['password']
      users << user
    end
    p users
    return users
  end

  def find(id)
    sql = 'SELECT id, username, name, email, password FROM users WHERE id = $1;'
    result_set = DatabaseConnection.exec_params(sql, [id])

    user = User.new
    user.username = result_set[0]['username']
    user.name = result_set[0]['name']
    user.email = result_set[0]['email']
    user.password = result_set[0]['password']

    return user
  end

  def create(user)
    sql = 'INSERT INTO users (username, name, email, password) VALUES ($1, $2, $3, $4);' #re add 'id' if there's an issue
    sql_params = user.username, user.name, user.email, user.password
    result_set = DatabaseConnection.exec_params(sql, sql_params)

    return user
  end
end
