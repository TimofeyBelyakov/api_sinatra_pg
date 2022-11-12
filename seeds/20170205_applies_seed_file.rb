Sequel.seed(:development, :test) do
  def run
    dataset = DB[:applies]
    dataset.insert( :read => true, :invited => true, :job_id => 1, :geek_id => 1)
    dataset.insert( :read => false, :invited => false, :job_id => 1, :geek_id => 2)
    dataset.insert( :read => true, :invited => false, :job_id => 5, :geek_id => 5)
    dataset.insert( :read => false, :invited => false, :job_id => 6, :geek_id => 8)
  end
end