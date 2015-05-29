class Entity

  attr_reader(:str, :dex, :vit, :int, :hp, :mp, :def, :attack, :name, :description)

  define_method(:initialize) do |attributes|
    @str = attributes[:str]
    @dex = attributes[:dex]
    @vit = attributes[:vit]
    @int = attributes[:int]

    @hp, @max_hp = @vit * 16
    @mp ,@max_mp = @int * 16

    @attack = @str * 4;
    @def = 0

    @name = attributes[:name]
    @description = attributes[:description]
    @mood = attributes[:mood]

  end

end
