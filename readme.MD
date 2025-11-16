<br />
<div align="center">
  <a href="https://github.com/MriKNG">
    <img src="https://i.imgur.com/bMDO1fN.gif" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Emergency Alert System</h3>
  <p align="center">
    <a href="https://github.com/MriKNG/vl_eas">Original Creator</a>
    |
    <a href="https://discord.gg/BQRdM5u7dK">Discord</a>
  </p>
</div>
<div align="center">

## Information
A immersive FiveM resource for triggering alerts when your server is about to restart. Using the email / phone system.

## Dependencies
[tx-admin](https://github.com/citizenfx/txAdmin)

[qb-core](https://github.com/qbcore-framework/qb-core) or [qbx_core](https://github.com/Qbox-project/qbx_core)

[qb-phone](https://github.com/qbcore-framework/qb-phone) or [lb-phone](https://lbscripts.com/phone) or [roadphone](https://fivem.roadshop.org/package/4885785)

[interact-sound](https://github.com/plunkettscott/interact-sound)

## Features
- Automatic 15min, 5min and 1min alerts compatible with [txAdmin](https://github.com/citizenfx/txAdmin)
- Custom alert with command /eascustom
- Test alert with command /eastest
- Ragdoll and weather effects enabled / disabled through config
- Change alert messages, titles, sounds, volumes through config
- Compatible with multiple phones
- In depth debug messages

## Showcase
### Configuration File
![config](https://i.imgur.com/5LAGpLr.png)
### Alerts using [lb-phone](https://lbscripts.com/phone)
![15min](https://i.imgur.com/kNrvmHq.png)

![custom](https://i.imgur.com/52oKaAP.png)

![custompopup](https://i.imgur.com/YXszsbX.png)

![test](https://i.imgur.com/CPaVoxT.png)

![testpopup](https://i.imgur.com/O9K7IAm.png)

## Instructions
### 1. Upload the sound files in vl_eas/sound to interact-sound/client/html/sounds
### 2. Configure the vl_eas/shared/sh_config.lua to your liking
### 3. Configure the dependencies in vl_eas/fxmanifest.lua
### 4. Ensure the script in your server.cfg after the phone resource
</div>