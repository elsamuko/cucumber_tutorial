# Cucumber tutorial

Cucumber is a BDD testing framework, which uses a DSL to describe wanted behaviour and can use ruby to implement the tests.

## Installation

```bash
sudo apt install ruby-dev # to build cucumber
sudo gem install cucumber
sudo gem install rspec-expectations # makes expect() available
```

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
