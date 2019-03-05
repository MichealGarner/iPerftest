# iPerftest
A simple bash script to simplify iperf testing to udp-small-server services running on Cisco devices.

The objective was to send multiple udp packets over internet links to check available bandwidth.

This example creates a 10M udp stream, which in my case will be measured using another tool in my network.
This stream is sent on UDP port 7 so the end Cisco device will echo the packets back to iperf.

# Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

This project is based on iperf.
You will need a working copy of iperf to use these files.

### Installing

First make a local copy of the files in this repository

```
$ git clone https://github.com/MichealGarner/iPerftest
```

## Running the iPerf tests

Once you have a local copy of the files, you can use the script as follows:

Usage:
```
./iPerftest.sh
```
## Authors

* **Micheal Garner** - https://github.com/MichealGarner
