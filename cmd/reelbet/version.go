package main

import (
	log "github.com/sirupsen/logrus"
)

const unset = "unset"

var ( // build info
	version = unset
	date    = unset
	commit  = unset
)

func printVersion() {
	log.WithFields(log.Fields{
		"version": version,
		"date":    date,
		"commit":  commit,
	}).Info("Build info")
}
