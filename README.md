# Ruby-Weather

Ruby script designed to provide the las
# Usage
1. Clone repo
2. Run `gem install launchy dotenv`
3. Create `.env` file in project root
4. Create account or login to Geocode.xyz and get auth key provided on the "Account Home" page
5. Paste env file template provided below into `.env` file(be sure to replace placeholders with actual values)
6. Run `ruby main.rb`

# Command arguments
Day range - Amount of days to fetch weather for(1, 10) **defaults to 7 days if none given*
- `ruby main.rb <amount of days>`


# Env File
```
GEOCODE_API_KEY=<your geocode api key>
```
