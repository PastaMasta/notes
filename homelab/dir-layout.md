Data dir layout
======================================


NAS server layout, this layout will also be the same on other machines mounting from the NAS

```
data # bulk storage zfs array
├── backup
│   ├── local # backups of local things
│   │   ├── nas
│   │   │   ├── docker
│   │   │   │   └── plex
│   │   │   └── kvm
│   │   │       └── vm1
│   │   ├── pc1
│   │   └── phone1
│   └── remote # backups of remmote things
│       ├── github
│       └── googledrive
└── repo
    ├── media
    │   ├── games
    │   ├── movies
    │   ├── music
    │   ├── pictures
    │   ├── podcasts
    │   └── shows
    ├── os
    │   └── isos
    └── software

data-fast # SSD for running things, backed up as it's a single drive
├── docker
│   └── plex
└── kvm
    └── vm1
```
