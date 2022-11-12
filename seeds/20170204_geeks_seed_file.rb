Sequel.seed(:development, :test) do
  def run
    dataset = DB[:geeks]
    dataset.insert( :name => 'Mike', :stack => 'Sinatra, React', :resume => true)
    dataset.insert( :name => 'Alex', :stack => 'Ruby, React', :resume => true)
    dataset.insert( :name => 'Martha', :stack => 'Rails', :resume => false)
    dataset.insert( :name => 'Juri', :stack => 'Java', :resume => true)
    dataset.insert( :name => 'Andrew', :stack => 'PHP', :resume => false)
    dataset.insert( :name => 'Nina', :stack => 'Node', :resume => true)
    dataset.insert( :name => 'Bob', :stack => 'Front end', :resume => true)
    dataset.insert( :name => 'Kate', :stack => 'PHP', :resume => false)
    dataset.insert( :name => 'Boris', :stack => 'Full stack', :resume => true)
  end
end