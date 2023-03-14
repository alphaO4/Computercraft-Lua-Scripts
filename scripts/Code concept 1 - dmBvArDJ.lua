import json
import requests
#api_token = 'your_api_token'
api_url_base = 'https://www.berlin.de/lageso/gesundheit/infektionsepidemiologie-infektionsschutz/corona/tabelle-indikatoren-gesamtuebersicht/index.php/index/all.json'
#headers = {'Content-Type': 'application/json',
           #'Authorization': 'Bearer {0}'}
def get_7_tage_inzidenz():

    api_url = '{0}id'.format(api_url_base)

    response = requests.get(api_url)

    if response.status_code == 200:
        return json.loads(response.content.decode('utf-8'))
    else:
        return None
account_info = get_7_tage_inzidenz()

if account_info is not None:
    print("Here's your info: ")
    for k, v in account_info['account'].items():
        print('{0}:{1}'.format(k, v))

else:
    print('[!] Request Failed') 
