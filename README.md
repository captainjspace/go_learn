# Greeting

Greetings in a go module for generating random greetings.

## Installation

Use the script to run inside docker so there is no need for a local installation of go

install [docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac/) 

```bash
# if docker is running
# this will run the run the docker build and then run container entrypoint
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

## Build script explanation
```bash

>build.sh  # will build the container
>run.sh    # will run the container
>run.sh -b # will build the container,  and if successful, run the container

# inside container (dockerfile helper script)
> in_docker_build.sh # will scan subdirectories for package main(s) and build them 

# will scan subdirectories for tests and run them, and if successful, 
# run the assemblies in $GOBIN
> exec.sh # the entrypoint 

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)