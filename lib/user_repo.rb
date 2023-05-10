require_relative 'user'

class UserRepository
  def all
    users = []
    sql = 'SELECT username, name, email, password FROM users;'
    result_set = DatabaseConnection.exec_params(sql, [])
    
    result_set.each do |record|

      user = User.new
      user.id = record['id'].to_i
      user.name = record['name']
      user.email = record['email']
      user.password = record['password']

      users << user
    end

    return users
  end

  def find(id)
    sql = 'SELECT id, name, email, password FROM users WHERE id = $1;'
    result_set = DatabaseConnection.exec_params(sql, [id])

    user = User.new
    user.id = result_set[0]['id'].to_i
    user.name = result_set[0]['name']
    user.email = result_set[0]['email']
    user.password = result_set[0]['password'].to_i

    return user
  end

  def create(user)
    sql = 'INSERT INTO users (name, email, password) VALUES ($1, $2, $3);'
    result_set = DatabaseConnection.exec_params(sql, [user.name, user.email, user.password])

    return user
  end
end
