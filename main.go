package main

import (
	"fmt"
)

var (
	msg = "This is the basic template"
)

// connect the bot and start the webpanel. bam.
// gammahub.io?

func main() {
	fmt.Println(msg)
	go startBot()
	go startWeb()
}

// Database will be hosted externall via GCP instance

func startBot() {
	// Start the bot, and any services related to discord
}

func startWeb() {
	// Start the web server, and any services related to the web server
}
