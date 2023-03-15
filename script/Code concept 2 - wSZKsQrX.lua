import json
import requests
from datetime import date, timedelta
yesterday = date.today() - timedelta(days=1)
spl_word = yesterday
print("Corona zahlen vom: " + str(spl_word))
r = requests.get('https://www.berlin.de/lageso/gesundheit/infektionsepidemiologie-infektionsschutz/corona/tabelle-indikatoren-gesamtuebersicht/index.php/index/all.json')
y = json.loads(r.content)
print(y["index"])




#def get_datum():
#if r == 200:
#return json.loads(response.content.decode('utf-8'))
#else:
# return None
#account_info = get_datum()

#if account_info is not None:
#    print("Here's your info: ")
#    for r in account_info['datum'].items():
#        print('{0}:{1}'.format(datum))
#else:
#    print("There was a !ERROR!. Here is the Response:")
#    print(r)

#x = r.text
#x = r.text.split(",")
#Daten = []
#print ("das sind die daten")
#print(Daten)
#Daten.append(x[-8])
#print("das sind die daten plus")
#print (Daten)
#3x = re.search('7_tage_inzidenz (\d+)', r.text[-270:], re.IGNORECASE)
#meine_mama = None
#print(Daten)
#print(x)
#if Daten.index("7_tage_inzidenz") >=30
#       print (ROT)
#elif Daten.index("7_tage_inzidenz") <=30 
#       print(GELB)
#       else 
#               print(grün)
#{"id":"877","datum":"2021-01-02","fallzahl":"98109","neue_faelle":"460","genesene":"79050","todesfaelle":"1285","7_tage_inzidenz":"130.7","rel_veraenderung_der_7_tage_inzidenz":"-21","its_belegung":"33.8","4_tage_r_wert_berlin_rki":"0"}],"item":[]}