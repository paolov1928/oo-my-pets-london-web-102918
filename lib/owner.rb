require "pry"

class Owner
  attr_reader :species
  attr_writer
  attr_accessor :name, :pets

@@owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self
  end


  def self.all
    @@owners
  end


  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.size
  end


  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end
  # code goes here

  # #buy_fish
  #       can buy a fish that is an instance of the Fish class (FAILED - 1)
  #       knows about its fishes (FAILED - 2)
  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  #     #buy_cat
  #       can buy a cat that is an instance of the Cat class (FAILED - 3)
  #       knows about its cats (FAILED - 4)
  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat

  end

  #     #buy_dog
  #       can buy a dog that is an instance of the Dog class (FAILED - 5)
  #       knows about its dogs (FAILED - 6)
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  #     #walk_dogs
  #       walks the dogs which makes the dogs' moods happy (FAILED - 7)
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  #     #play_with_cats
  #       plays with the cats which makes the cats moods happy (FAILED - 8)
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  #     #feed_fish
  #       feeds the fishes which makes the fishes' moods happy (FAILED - 9)
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  #     #sell_pets
  #       can sell all its pets, which make them nervous (FAILED - 10)
  def sell_pets
    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    self.pets[:fishes] = []
    self.pets[:dogs] = []
    self.pets[:cats] = []
  end

  #     #list_pets
  #       can list off its pets (FAILED - 11)
  def list_pets
    dog_n = self.pets[:dogs].size
    cat_n = self.pets[:cats].size
    fish_n = self.pets[:fishes].size

    "I have #{fish_n} fish, #{dog_n} dog(s), and #{cat_n} cat(s)."
    #self.pets.each do |key,value|
    
  end


end
