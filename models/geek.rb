class Geek < Sequel::Model

  def to_api
    {
      id: id,
      name: name,
      stack: stack,
      resume: resume,
    }
  end

end