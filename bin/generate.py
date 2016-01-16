import psycopg2
from geopy.geocoders import Nominatim
import random
import sys
import math
from loremipsum import get_sentence

con = psycopg2.connect(database='recycling')
cur = con.cursor()

radius = 10000                         #Choose your own radius
radiusInDegrees=radius/111300.0
r = radiusInDegrees
x0 = 30.25
y0 = -97.75


for num in range(1,100):
    geolocator = Nominatim()
    u = float(random.uniform(0.0,1.0))
    v = float(random.uniform(0.0,1.0))
    w = r * math.sqrt(u)
    t = 2 * math.pi * v
    x = w * math.cos(t)
    y = w * math.sin(t)
    xLat  = x + x0
    yLong = y + y0
    coordinates = str(xLat) + ", " + str(yLong)
    location = geolocator.reverse(coordinates)
    address = location.address
    reports = []
    num_reports = random.randint(1,5)
    for y in range(1, num_reports):
        reports.append(get_sentence())

    query =  "INSERT INTO locations (name, coordinates, address, reports  ) VALUES (%s, %s, %s, %s) RETURNING id;"
    data = (address, coordinates, address, reports)
    cur.execute(query, data)
    con.commit()
