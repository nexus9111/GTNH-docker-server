<div align="center" style="margin-top: 20px;">
  <img src="https://www.gtnewhorizons.com/images/big_gnd.webp" alt="Logo" width="auto" height="200">
</div>

# Installation

## Requirements

- Docker
- Docker-compose

## Installation

1. Clone the repository
2. Install the server:
    - ➡️ **Command line** : `wget https://downloads.gtnewhorizons.com/ServerPacks/GT_New_Horizons_2.7.2_Server_Java_17-21.zip` (you can replace the version with the one you want).
    - ➡️ **Manually** : Go to the server install at [GT New Horizons Server Pack](https://downloads.gtnewhorizons.com/ServerPacks/). Install the latest version of the server pack for java 17-21 (⚠️ latest version tested is 2.7.2, if you have a newer version, you can try to use it, but I don't guarantee that it will work).
4. Unzip the downloaded file in the same folder as the docker-compose.yml file and rename the folder to `config`
5. Update the `config/server.properties` file with your server settings (see below)
6. Update the `config/eula.txt` to set the EULA to `true`

The folder structure should look like this:

The folder structure should look like this:

```
/GT-NEW-HORIZON-MC
├── /config
│   ├── eula.txt
│   └── server.properties
├── docker-compose.yml
└── Dockerfile
```

## Configuration

### server.properties

All the settings can be found in the `config/server.properties` file.

You can set all the properties as the default value, but I recommend you to change `white-list` to `true` to be able to join the server and play with your friends.

### play with your friends

To play with your friends, you set the `white-list` to `true` and add your friends in `config/whitelist.json` file.

Set content like this:

```json
[
    {
        "uuid": "UUID_PLAYER1",
        "name": "Player1"
    },
    {
        "uuid": "UUID_PLAYER2",
        "name": "Player2"
    }
]
```

UUID is the player uuid, can be found [here](https://mcuuid.net/)

The folder structure should look like this:

```
/GT-NEW-HORIZON-MC
├── /config
│   ├── eula.txt
│   ├── server.properties
│   ├── [...] other files
│   └── whitelist.json
├── docker-compose.yml
└── Dockerfile
```

## Run

1. Open a terminal and go to the folder where the docker-compose.yml file is located
2. Run `docker-compose up -d` (this can take a while, for me it took about 10 minutes with 15GB of RAM)
3. Go to your minecraft gt new horizons client and join the server ("YOUR_SERVER_IP:25565") (if the client says that the server is still starting, wait a few minutes and try again)

## Troubleshooting

If you have any problems, please open an issue, I will try to help you.

## Credits

- Joss C. ([GitHub](https://github.com/nexus9111))