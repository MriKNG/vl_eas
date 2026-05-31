<br />
<div align="center">
  <a href="https://github.com/MriKNG">
    <img src="https://i.imgur.com/GtgbPwN.gif" alt="Logo" width="895" height="197">
  </a>

<h3 align="center">Emergency Alert System</h3>
  <p align="center">An immersive FiveM resource for triggering alerts when your server is about to restart. Using the email / phone system.</p>
  <p align="center">
    <a href="https://docs.velorianrp.com/vl_eas">Documentation</a>
    |
    <a href="https://discord.gg/K3t7rEa2WH">Discord</a>
  </p>
</div>

<p align="center">
  <img src="https://img.shields.io/github/v/release/MriKNG/vl_eas?style=for-the-badge">
  <img src="https://img.shields.io/badge/FiveM-%23F40552?style=for-the-badge&logo=fivem">
</p>

## Features
- Automatic 1min, 5min and 15min alerts compatible with txAdmin
- Custom alert with command `/eascustom`
- Test alert with command `/eastest`
- Ragdoll and weather effects enabled / disabled through `sh_config.lua`
- Change alert messages, titles, sounds and volumes through `sh_config.lua`
- Comnpatible with multiple phone resources
- In-depth debug messages

## Dependencies
- [txAdmin](https://github.com/citizenfx/txAdmin)
- [qb-core](https://github.com/qbcore-framework/qb-core) or [qbx_core](https://github.com/Qbox-project/qbx_core)
- [qb-phone](https://github.com/qbcore-framework/qb-phone) or [lb-phone](https://lbscripts.com/package/phone) or [roadphone](https://fivem.roadshop.org/package/4885785)
- [interact-sound](github.com/plunkettscott/interact-sound)

## Preview
### Alerts using lb-phone
<p align="center">

![15min](https://i.imgur.com/kNrvmHq.png) ![custom](https://i.imgur.com/52oKaAP.png) ![testpopup](https://i.imgur.com/O9K7IAm.png) ![custompopup](https://i.imgur.com/YXszsbX.png)

</p>

### Configuration File
![Config](https://i.imgur.com/5LAGpLr.png)

## Installation
1. Download the resource.
2. Ensure all dependencies are installed and started before this resource.
3. Add the resource to your server.
4. Configure `sh_config.lua` to your liking.
5. Restart your server.