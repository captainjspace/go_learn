# Greeting

Greetings in a go module for generating random greetings.

## Installation

Use the script to run inside docker so there is no need for a local installation of go

install [docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) 

```bash
run.sh -b
```

## Usage

```go
import (
    "example.com/greetings"
)

...

message, err:=greetings.Hello(name)

...

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)