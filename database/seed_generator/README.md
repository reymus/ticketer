# ticketer Seed Generator

A simple script to generate seed data to work with a prepulated database with an arbitrarily large amount of data.

## Running the script

In order to run the script, edit the `config.json` file to specify how many tickets and comments. Once the config file has the desired settings, just run:

```
node index.js
```

That's it, find the resulting script in the `seed_db_output.sql` or whatever output file you specified in the `config.json` file.