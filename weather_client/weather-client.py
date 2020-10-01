from requests import get
from json import loads

api_key = '1a0df3cadaab566d37bac2da0abcd6cc'
url = f'https://api.openweathermap.org/data/2.5/weather?id=2172797&appid={api_key}'

data = loads(get(url).text)

#{"coord":{"lon":145.77,"lat":-16.92},"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"base":"stations","main":{"temp":300.15,"pressure":1007,"humidity":74,"temp_min":300.15,"temp_max":300.15},"visibility":10000,"wind":{"speed":3.6,"deg":160},"clouds":{"all":40},"dt":1485790200,"sys":{"type":1,"id":8166,"message":0.2064,"country":"AU","sunrise":1485720272,"sunset":1485766550},"id":2172797,"name":"Cairns","cod":200}

weather_type = data['weather'][0]['main']
temp = round((float(data['main']['feels_like']) - 273.15), 2)
humidty = data['main']['humidity']
wind = round(float(data['wind']['speed']) * 2.23694, 2) 

print(f'| {weather_type} |  {temp}°C | {humidty}% Humidity | {wind} mph |')
