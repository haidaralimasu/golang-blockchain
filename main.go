package main

import (
	"os"

	"github.com/Haidar1528/golang_blockchain/cli"
)

func main() {
	defer os.Exit(0)
	cmd := cli.CommandLine{}
	cmd.Run()
}
