# Desktop in Docker

Desktop environment in docker.

## Usage

```bash
docker run -d -p 3389:3389 onichandame/ide
```

Connect to `rdp://localhost:3389`

## Configuration

All configurations are passed as environment variables.

| Name             | Default | Description                                                              |
| ---------------- | ------- | ------------------------------------------------------------------------ |
| USERNAME         | user    | The username of the main user                                            |
| PASSWORD         | pass    | the password of the main user                                            |
| PRE_START_SCRIPT |         | The path to the script to be run before the remote desktop daemon starts |
