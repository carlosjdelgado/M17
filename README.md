# Upgrades and fixes for M17 console

### Technical specs (From octathorp repository)

- **CPU**: Rockchip RK3126C
- **RAM**: 256MB DDR3
- **Screen**: 4.3 inches 480x272
- **Ports**: USB-C power/data, headphone jack 3.5mm, microSD slot
- **Buttons**: volume +/-, power, gamepad buttons
- **Speaker**: 1 speaker

### Headphones sound fix
When headphones are connected with stock firmware the sound is really bad, this is because sound of alsa is configured as mono with same sofware volume in both speakers (M17 have only one speaker). 

With headphones connected the sound of both speakers come out through both at once having L and R sound in left and right sides.

Copy the content of Sound folder in root folder of sdcard (em_ui is modified) and the R sound will be muted, fixing the sound problem.