# Cucumber tutorial

Cucumber is a BDD testing framework, which uses a DSL to describe wanted behaviour and can use ruby to implement the tests.

## Installation

### Linux

```bash
sudo apt install ruby-dev # to build cucumber
sudo gem install cucumber # apt's cucumber is v2.4, gem's is v5.2
sudo gem install rspec-expectations # makes expect() available
```

### macOS

```bash
brew install ruby-build rbenv
rbenv install 2.7.2 # ruby 3.0 does not build cucumber yet
~/.rbenv/versions/2.7.2/bin/gem install cucumber
~/.rbenv/versions/2.7.2/bin/gem install rspec-expectations
```

### Windows

```bash
scoop install ruby
gem install cucumber
gem install rspec-expectations
```
When cucumber complains about missing ANSICON, put `export ANSICON=1` into your .bashrc.

## Dir structure

```bash
.
├── cucumber.yml
├── features
│   ├── step_definitions
│   │   └── definitions.rb
│   └── tests.feature
├── README.md
└── .vscode
    └── launch.json
```

## Running

After you have installed cucumber, you can add a test description into the features folder and run `cucumber` from the command line.

## VS Code

### Debugging

To debug the tests with VSCode, install `ruby-debug-ide`
```bash
sudo gem install ruby-debug-ide
```

Then put this launch.json into the .vscode folder of your working directory
```json
{
    "configurations": [
        {
            "name": "Cucumber",
            "type": "Ruby",
            "request": "launch",
            "program": "/usr/local/bin/cucumber"
        }
    ]
}
```

Now you can set breakpoints in the definitions.rb and VS Code stops there if run from it.

### Formatting

To auto-format the definitions.rb, install `rufo` and the [rufo plugin for VS Code](https://github.com/jnbt/vscode-rufo)
```bash
sudo gem install rufo
```
## Silenting cucumber
To remove the *ad* in the footer, add a cucumber.yml with
```yml
default: --publish-quiet
```
