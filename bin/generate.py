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

    query =  "INSERT INTO locations (coordinates, address) VALUES (%s, %s) RETURNING id;"
    data = (coordinates, address)
    cur.execute(query, data)
    id = cur.fetchall()[0][0]
    con.commit()
    num_reports = random.randint(1,5)
    for y in range(1, num_reports):
        sentence = get_sentence()
        query2 = "INSERT INTO reports (location_id, report) VALUES (%s, %s)"
        data = (id, sentence)
        cur.execute(query2, data)
        con.commit()
