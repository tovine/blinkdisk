# blinkdisk
Simple bash script to flash the activity LED of a specific disk

## Usage:
`blinkdisk.sh <device> [<interval>]`

`<device>` is the device name of the disk - either short form (e.g `sda`) or full path (`/dev/sda`). Supplying the short form will default to `/dev/<device>`

`<interval>` (optional) can be used to override the interval (on/off time), and must be specified as an integer number of seconds (default is 1)
