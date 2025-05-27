# Ruby on Rails tutorial sample application

This is a sample application created using the following materials:   
[*Ruby on Rails Tutorial*](https://railstutorial.jp/)
Written by [Michael Hartl](http://www.michaelhartl.com/)

## License

In the [Ruby on Rails Tutorial](https://railstutorial.jp/)
The source code is released under the MIT and Beerware licenses.
For details, please see [LICENSE.md](LICENSE.md).

## How to use

To run this application, first clone the repository locally.
After that, install the required RubyGems with the following command:

```
$ bundle install --without production
```

Then run the migrations to the database.

```
$ rails db:migrate
```

Finally, run the test to make sure it's working.

```
$ rails test
```

If the tests pass, you should be ready to start the Rails server.

```
$ rails server
```

For more information, see the Ruby on Rails tutorial.
Please refer to the following.
