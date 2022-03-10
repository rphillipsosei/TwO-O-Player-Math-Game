class Player
    attr_reader :lives, :name
    def initialize(name)
        @lives=3
        @name=name
 end

def wrongAnswer
    @lives -= 1

end
def isAlive?
@lives > 0

end
end

