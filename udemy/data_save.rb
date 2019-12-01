require 'yaml'

$cd_arr = Array.new

$fn = 'cd_db.yml'

class CD
  def initialize(arr)
    @name = arr[0]
    @artist = arr[1]
    @numtracks = arr[2]
  end

  def getdetails
    [@name, @artist, @numtracks]
  end
end

class Pop_cd < CD
  def initialize(arr)
    super(arr)
    @genre = arr[3]
  end

  def get_details
    super << @genre
  end
end

class Classical_cd < CD
  def initialize(arr)
    super(arr)
    @conductor = arr[3]
    @composer = arr[4]

    def get_details
      super << @conductor << @composer
    end
end

def add_cd(CD)
  $cd_arr << CD
end

def save_db
  File.open($fn, 'w') {
    |f|
    f.write($cd_arr.to_yaml)
  }
end

def load_db
  input_data = File.read($fn)
  $cd_arr = YAML.load(input_data)
end

def show_data
  puts $cd_arr.to_yaml
end

if File.exist?($fn) then
  load_db
  show_data
else
  puts "The file #{$fn} cannot be found."
end

ans = ''
until ans == 'q' do
  puts "Create (P)op CD (C)lassical CD, (O)ther CD - (S)ave or (Q)uit?"
  print "> "
  ans = gets[0].chr().downcase()
  case ans
  when 'p' then add_cd(Pop_cd.new(pop_cd()))
  when 'c' then add_cd(Classical_cd.new(classical_cd()))
  when 'o' then add_cd(Cd.new(other_cd()))
  when 's' then save_db
  end
  show_data
end

