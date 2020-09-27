#A script for adding districts to database

dist = ['Białołęka', 'Targówek', 'Praga Północ', 'Praga Południe', 'Rembertów', 'Wesoła', 'Wawer', 'Wilanów', 'Ursynów', 'Mokotów',
         'Włochy', 'Ochota', 'Ursus', 'Śródmieście', 'Wola', 'Żoliborz', 'Bemowo', 'Bielany']

dist.each { |i| City.first.districts.create(name: i) }

dist2 = ['Wzgórza Krzesławickie', 'Nowa Huta', 'Mistrzejowice', 'Bieńczyce', 'Prądnik Biały', 
        'Prądnik Czerwony', 'Czyżyny', 'Grzegórzki', 'Stare Miasto', 'Krowodrza', 'Bronowice', 
        'Zwierzyniec', 'Dębniki', 'Podgórze', 'Bieżanów-Prokocim', 'Podgórze Duchackie', 
        'Łagiewniki-Borek Fałęcki', 'Swoszowice']

dist2.each { |i| City.find(2).districts.create(name: i) }
