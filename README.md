# At the Races with ActiveRecord

## Learning Goals

This challenge will give you the chance to practice advanced AR techniques including:

* modeling a many-to-many relationship using a join model
* using more meaningful (non-conventional) names for associations.
* seeding records in a complex schema


## Helpful Materials

If AR isn't your strong suit yet, the following material will prove helpful. You might want to read through these links before starting:

* [belongs_to](http://apidock.com/rails/ActiveRecord/Associations/ClassMethods/belongs_to)
* [has_many](http://apidock.com/rails/ActiveRecord/Associations/ClassMethods/has_many)

For this challenge it's critical that you become familiar with the association options `:class_name` and `:source`. Refer to the API doc links above (under the section 'Options') for details on these options.


## Horse Racing
You'll be modeling a simple application for horse racing. This challenge is all about ActiveRecord, it doesn't include an interface.

Your challenge is to create migrations, AR classes and seed data for the following models:

1. Horse
2. Jockey
3. Race
4. Appearance

## Requirements
* A race will have many appearances
* An appearance includes the jockey, the horse, the race and the uniform color of the jockey.
* A jockey has a `name`, `height_in_inches` and `weight`
* A race tracks a winner, which is an appearance record (it's important we give both the jockey and horse credit!)

Run the tests to see the full set of requirements.

## Logistics
This challenge uses AR in a way you're probably not used to. It uses an in-memory SQLite database. So you won't ever need to run `rake db:migrate` or `rake db:drop`. The entire database is created then dropped each time you run the tests.

Why do it this way? By doing all the work in an in-memory database you'll get faster feedback on your work. Those tedious `rake` tasks take time and only serve as a distraction.

### Seed
Follow the directions in `seeds.rb` to create your data!

### Migrations
Create your migrations in the `migrations.rb` file.

### Models
Create your models in the `models.rb` file.

## Running the Challenge
There are five specs in this challenge. Run them in order:

```
└── spec
    ├── 01_horses_spec.rb
    ├── 02_jockeys_spec.rb
    ├── 03_stakes_spec.rb
    ├── 04_derby_spec.rb
    └── 05_race_history_spec.rb
```

There's a lot of failing tests, but don't be overwhelmed. Work through them one at a time.
