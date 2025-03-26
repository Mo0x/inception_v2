#!/bin/bash

sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl restart docker
