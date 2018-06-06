# MyWay-CLI: The must-have tool for MyWay

The MyWay CLI allows users to create, modify, run and test projects using the MyWay Sinatra framework (see here: https://github.com/J-Mo63/myway-sinatra) using the simple `myway` command.

## Installation

Simply run the following in console to install:

```bash
$ gem install myway-cli
```

## Usage

To create a new project:

```bash
$ myway generate project project-name
```

To run the server:

```bash
$ myway run server
```

To run test:

```bash
$ myway run tests
```

To introduce a new controller, api or model:

```bash
$ myway generate controller example_controller
$ myway generate api example_api
$ myway generate model example_model
```

*Note: command segments can be run with just the first letter of their name (e.g. running the server can be accomplished with  `myway r s`)*

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/myway.

Feel free to fork it and help out on this project!

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
