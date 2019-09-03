# imports always at top of script
import urllib.request
import json
from math import sin, cos, sqrt, atan2, radians

# In all seriousness it's good practice to name functions well
# Also if you took an idea or code from somewhere. Leave a link
# to it in the comments or docstring - super useful for other users
def lat_lon_haversine(lat1, lon1, lat2, lon2):
    """
    Calculates haversine distance between lat lon coords.
    Code copied from: https://stackoverflow.com/a/19412565
    """
    # approximate radius of earth in km
    R = 6373.0

    lat1 = radians(lat1)
    lon1 = radians(lon1)
    lat2 = radians(lat2)
    lon2 = radians(lon2)

    dlon = lon2 - lon1
    dlat = lat2 - lat1

    a = sin(dlat / 2)**2 + cos(lat1) * cos(lat2) * sin(dlon / 2)**2
    c = 2 * atan2(sqrt(a), sqrt(1 - a))

    return R * c

def get_request(http_address):
    """
    Gets a http request and returns it as a json
    """
    req = urllib.request.Request(http_address)
    with urllib.request.urlopen(req) as response:
        result = json.loads(response.read())
    
    return result

def postcode_dist(postcode1, postcode2):
    """
    Returns the distance between two postcodes in (km)
    """
    
    # Validate postcodes
    for postcode in [postcode1, postcode2]:
        
        addr = f"https://api.postcodes.io/postcodes/{postcode}/validate"
        result = get_request(addr)
        if not result['result']:
            raise ValueError(f"postcode ({postcode}) did not pass validation")
        
    # Get responses
    res1 = get_request(f"https://api.postcodes.io/postcodes/{postcode1}")
    res2 = get_request(f"https://api.postcodes.io/postcodes/{postcode2}")
    
    lat1 = res1["result"]["latitude"]
    lon1 = res1["result"]["longitude"]
    
    lat2 = res2["result"]["latitude"]
    lon2 = res2["result"]["longitude"]
    
    return lat_lon_haversine(lat1, lon1, lat2, lon2)
    
    
        