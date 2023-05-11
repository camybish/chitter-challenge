require_relative 'peep'

class PeepRepository
  def all
    peeps = []
    sql = 'SELECT id, time, content, user_id FROM peeps;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |record|
      peep = Peep.new
      peep.id = record['id'].to_i
      peep.time = record['time']
      peep.content = record['content']
      peep.user_id = record['user_id']

      peeps << peep
    end

    return peeps
  end
    
  def find(id)
    sql = 'SELECT id, time, content FROM peeps WHERE id = $1;'
    result_set = DatabaseConnection.exec_params(sql, [id])

    peep = Peep.new
    peep.id = result_set[0]['id'].to_i
    peep.time = result_set[0]['time']
    peep.content = result_set[0]['content']
    peep.user_id = result_set[0]['user_id']

    return peep
  end
    
  def create(peep)
    sql = 'INSERT INTO peeps (time, content, user_id) VALUES ($1, $2, $3, $4);'
    sql_params = peep.time, peep.content, peep.user_id
    result_set = DatabaseConnection.exec_params(sql, sql_params)

    return peep
  end
end
