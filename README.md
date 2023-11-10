# Python UGS Metadata Server
An [Unreal Game Sync(UGS)](https://docs.unrealengine.com/5.1/en-US/unreal-game-sync-ugs-for-unreal-engine) metadata server written in python.

## Dev Note
This has been modified from the upstream source to remove the need for a MySQL container in favor of a external MySQL database. 
Check the upstream [readme](https://github.com/thejinchao/py-ugs-server) for in-depth details.

## Setup
- Create a MySQL database. I used DigitalOcean as a host for example.
- Copy `devops/example_config.py` and rename to `devops/db_config.py`
- Important: Ensure your MySQL database is setup to match the variables in `devops/my.cnf` and `devops/sever_params.png`
- Connect to your database and run `devops/setup.sql`
- Create a user and give full rights to the databse you created
- Input your database credentials in `devops/db_config.py`
- Build and run the `Dockerfile`