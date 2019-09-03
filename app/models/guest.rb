class Guest
attr_accessor
@@ll = []

def initialize()

    @@all << self
end

def self.all
@@all
end


end