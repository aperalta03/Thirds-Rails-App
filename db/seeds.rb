# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.

more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021'},

    # My Added Movies
  {:title => 'Wicked', :rating => 'PG-13',
    :release_date => '15-Oct-2024'},
  {:title => 'Interstellar', :rating => 'PG-13',
    :release_date => '07-Jul-2016'},
  {:title => 'Oppenheimer', :rating => 'R',
    :release_date => '13-Jun-2023'},
  {:title => 'Wall-E', :rating => 'PG-13',
    :release_date => '09-Nov-2008'},
  {:title => 'The Godfather', :rating => 'R',
    :release_date => '07-Mar-2021'},

    # Additional Movies - AI
  {:title => 'Inception', :rating => 'PG-13',
    :release_date => '16-Jul-2010'},
  {:title => 'The Shawshank Redemption', :rating => 'R',
    :release_date => '14-Oct-1994'},
  {:title => 'Forrest Gump', :rating => 'PG-13',
    :release_date => '06-Jul-1994'},
  {:title => 'The Matrix', :rating => 'R',
    :release_date => '31-Mar-1999'},
  {:title => 'The Lion King', :rating => 'G',
    :release_date => '15-Jun-1994'},
  {:title => 'Spirited Away', :rating => 'PG',
    :release_date => '20-Jul-2001'},
  {:title => 'The Dark Knight', :rating => 'PG-13',
    :release_date => '18-Jul-2008'},
  {:title => 'Gladiator', :rating => 'R',
    :release_date => '05-May-2000'},
  {:title => 'Pulp Fiction', :rating => 'R',
    :release_date => '14-Oct-1994'},
  {:title => 'Avatar', :rating => 'PG-13',
    :release_date => '18-Dec-2009'},
  {:title => 'Titanic', :rating => 'PG-13',
    :release_date => '19-Dec-1997'},
  {:title => 'Jurassic Park', :rating => 'PG-13',
    :release_date => '11-Jun-1993'},
  {:title => 'The Avengers', :rating => 'PG-13',
    :release_date => '04-May-2012'},
  {:title => 'Finding Nemo', :rating => 'G',
    :release_date => '30-May-2003'},
  {:title => 'Up', :rating => 'PG',
    :release_date => '29-May-2009'},
  {:title => 'Shrek', :rating => 'PG',
    :release_date => '18-May-2001'},
  {:title => 'Deadpool', :rating => 'R',
    :release_date => '12-Feb-2016'},
  {:title => 'Mad Max: Fury Road', :rating => 'R',
    :release_date => '15-May-2015'},
  {:title => 'The Social Network', :rating => 'PG-13',
    :release_date => '01-Oct-2010'},
  {:title => 'The Grand Budapest Hotel', :rating => 'R',
    :release_date => '28-Mar-2014'}
]

Movie.delete_all

more_movies.each do |movie|
  Movie.create!(movie)
end