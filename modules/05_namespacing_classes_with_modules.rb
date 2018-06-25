module Google
  class User
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end

    def full_name
      "#{@first_name} #{@last_name}"
    end
  end
end

module Facebook
  class User
    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name = last_name
    end

    def full_name
      "#{@last_name.upcase}, #{@first_name.upcase}"
    end
  end
end

class Application
  def initialize(source, first_name, last_name)
    @source = source
    @first_name = first_name
    @last_name = last_name
  end

  def greeting
    if @source == 'google'
      Google::User.new(@first_name, @last_name).full_name
    else
      Facebook::User.new(@first_name, @last_name).full_name
    end
  end
end

app = Application.new('fb', 'Kristine', 'Hudgens')
app.greeting
