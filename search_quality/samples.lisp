(defparameter *moscow-viewport*
  (viewport :maxx 38.0314 :maxy 67.7348 :minx 37.1336 :miny 67.1349))
(defparameter *moscow-position*
  (position-lat-lon 55.751633 37.618705))

(defparameter *minsk-viewport*
  (viewport :maxx 27.5653 :maxy 64.2473 :minx 27.5585 :miny 64.242))
(defparameter *minsk-position*
  (position-lat-lon 53.9023339 27.5618798))

(defparameter *skylight-viewport*
  (viewport :maxx 37.5409 :maxy 67.538 :minx 37.533 :miny 67.533))
(defparameter *skylight-position*
  (position-lat-lon 55.7967341 37.5373559))

(defparameter *moscow-airport-station-viewport*
  (viewport :maxx 37.5367 :maxy 67.5442 :minx 37.5316 :miny 67.539))
(defparameter *moscow-airport-station-position*
  (position-lat-lon 55.799996 37.5343679))

(dolist (query '("жуковский" "жуковский "))
  (defsample query "ru"
    (position-lat-lon 55.82483 37.566872)
    (viewport :maxx 37.5704 :maxy 67.5886 :minx 37.5633 :miny 67.5831)
    (list (vital "Жуковский" '("place-city") (position-lat-lon 55.597279 38.119967)))))

(defsample "варшава " "ru"
  (position-lat-lon 55.82483 37.566872)
  (viewport :maxx 37.5704 :maxy 67.5886 :minx 37.5633 :miny 67.5831)
  (list (vital "Варшава" '("place-city-capital-2") (position-lat-lon 52.231918 21.006742))))

(defsample "первомайск " "ru"
  (position-lat-lon 55.82483 37.566872)
  (viewport :maxx 37.5704 :maxy 67.5886 :minx 37.5633 :miny 67.5831)
  (list (vital "Первомайск" '("place-town") (position-lat-lon 54.865758 43.805049))))

(defsample "бежецк" "ru"
  (position-lat-lon 55.662164 37.63057)
  (viewport :maxx 37.6341 :maxy 67.2996 :minx 37.627 :miny 67.2941)
  (list (vital "Бежецк" '("place-town") (position-lat-lon 57.781353 36.692516))))

(defsample "бутово" "ru"
  (position-lat-lon 55.662164 37.63057)
  (viewport :maxx 37.6341 :maxy 67.2996 :minx 37.627 :miny 67.2941)
  (list (vital "Бутово" '("place-hamlet") (position-lat-lon 55.290964 39.446981))))

(dolist (query '("старо" "старок"))
  (defsample query "ru"
    (position-lat-lon 55.662164 37.63057)
    (viewport :maxx 37.6341 :maxy 67.2996 :minx 37.627 :miny 67.2941)
    (list (relevant "Старокаширское шоссе"
                    '("hwtag-lit" "hwtag-oneway" "highway-residential")
                    (position-lat-lon 55.661483 37.626438)))))

(defsample "ленинск" "ru"
  (position-lat-lon 55.662164 37.63057)
  (viewport :maxx 37.6341 :maxy 67.2996 :minx 37.627 :miny 67.2941)
  (list (relevant "Ленинский проспект"
                  '("hwtag-nofoot" "hwtag-oneway" "highway-primary")
                  (position-lat-lon 55.69702 37.561276))))
(defsample "героев панфиловцев 22" "ru"
  (position-lat-lon 55.662164 37.63057)
  (viewport :maxx 37.6341 :maxy 67.2996 :minx 37.627 :miny 67.2941)
  (list (vital "22" '("building")
              (position-lat-lon 55.856544 37.410764))))

(defsample "АЗС" "ru"
  (position-lat-lon 55.658 37.6403)
  (viewport :maxx 37.6438 :maxy 67.2923 :minx 37.6367 :miny 67.2868)
  (list (relevant "Eka" '("amenity-fuel")
                  (position-lat-lon 55.658089 37.640331))))

(defsample "Шереметьево" "ru"
  (position-lat-lon 55.658 37.6403)
  (viewport :maxx 37.6438 :maxy 67.2923 :minx 37.6367 :miny 67.2868)
  (list (vital "Международный аэропорт Шереметьево"
               '("aeroway-aerodrome-international")
               (position-lat-lon 55.972948 37.412647))))

(defsample "kamyshin volga river" "en"
  (position-lat-lon 50.0523 45.44)
  (viewport :maxx 45.6714 :maxy 58.2199 :minx 45.2917 :miny 57.9277)
  (list (relevant "Волга"
                  '("waterway-river" "boundary-administrative-6" "boundary-administrative-8")
                  (position-lat-lon 50.052265 45.439982))
        (relevant "Волга"
                  '("waterway-river" "boundary-administrative-6" "boundary-administrative-8")
                  (position-lat-lon 50.098178 45.485677))))

(defsample "москва балчуг 7" "ru"
  (position-lat-lon 55.74489 37.627992)
  (viewport :maxx 37.6316 :maxy 67.4464 :minx 37.6244 :miny 67.4409)
  (list (vital "" '("building") (position-lat-lon 55.746825 37.626597)
               :house-number "7")))

(defsample "train station podolsk" "en"
  (position-lat-lon 54.192024 37.615781)
  (viewport :maxx 37.6184 :maxy 64.745 :minx 37.607 :miny 64.7345)
  (list (vital "Подольск" '("railway-station")
               (position-lat-lon 55.431798 37.565417))))

(defsample "Байкал" "en"
  (position-lat-lon 55.751624 37.618715)
  (viewport :maxx 37.6215 :maxy 67.4589 :minx 37.616 :miny 67.4525)
  (cons (relevant "Озеро \"Байкал\"" '("natural-water")
                  (position-lat-lon 53.737727 108.290227))
        (loop for (lat lon) in '((53.027245 106.74882)
                                 (53.518324 107.535302)
                                 (53.500603 108.29637))
           collecting (relevant "озеро Байкал" '("natural-water")
                                (position-lat-lon lat lon)))))

(defsample "памятник высоцкому" "ru"
  (position-lat-lon 40.730596 -73.986599)
  (viewport :maxx -73.221 :maxy 45.3735 :minx -74.7522 :miny 43.9673)
  (list (vital "Памятник В.С. Высоцкому" '("historic-memorial")
               (position-lat-lon 55.768153 37.613128))))

(defsample "san francisco golden gate " "en"
  (position-lat-lon 37.806395 -122.475599)
  (viewport :maxx -122.445 :maxy 40.924 :minx -122.505 :miny 40.8735)
  (list (relevant "Golden Gate Bridge" '("tourism-attraction")
                  (position-lat-lon 37.8222 -122.478874))))

(defsample "810 7th street northwest washington" "en"
  (position-lat-lon 38.900353 -77.022134)
  (viewport :maxx -77.0202 :maxy 42.2884 :minx -77.024 :miny 42.2853)
  (list (vital "RFD" '("amenity-pub")
               (position-lat-lon 38.900353 -77.022134)
               :house-number "810")))

(defsample "немига" "ru"
  (position-lat-lon 53.902333 27.56189)
  (viewport :maxx 27.7138 :maxy 64.39 :minx 27.2672 :miny 64.0178)
  (list (relevant "улица Немига" '("hwtag-oneway" "highway-primary")
                  (position-lat-lon 53.897016 27.538982))
        (relevant "улица Немига" '("hwtag-oneway" "highway-primary_link")
                  (position-lat-lon 53.901855 27.548541))
        (relevant "Немига" '("railway-subway_entrance-minsk")
                  (position-lat-lon 53.906155 27.553509))))

(defsample "купавна " "ru"
  *moscow-position*
  (viewport :maxx 37.6253 :maxy 67.4611 :minx 37.6121 :miny 67.4502)
  (list (relevant "Старая Купавна" '("place-town")
                  (position-lat-lon 55.807038 38.17743))
        (relevant "Купавна" '("place-village")
                  (position-lat-lon 55.748353 38.122308))))

(defsample "купавна малая московская" "ru"
  *moscow-position*
  (viewport :maxx 37.6253 :maxy 67.4611 :minx 37.6121 :miny 67.4502)
  (list (relevant "Малая Московская улица" '("highway-secondary")
                  (position-lat-lon 55.805866 38.151669))))

(defsample "riga" "en"
  (position-lat-lon 55.593326 37.653758)
  (viewport :maxx 37.7799 :maxy 67.304 :minx 37.5064 :miny 67.0476)
  (list (vital "Rīga" '("place-city-capital-2")
               (position-lat-lon 56.949391 24.105187))))

(defsample "ленинградский проспект 75" "en"
  (position-lat-lon 55.804683 37.511168)
  (viewport :maxx 37.5145 :maxy 67.552 :minx 37.5094 :miny 67.5472)
  (loop for (house-number lat lon) in '(("75 к1" 55.804945 37.512323)
                                        ("75 к1А" 55.804198 37.513327)
                                        ("75 к1Б" 55.804729 37.510496)
                                        ("75с2" 55.804332 37.511761)
                                        ("75А" 55.803425 37.512232)
                                        ("75Б" 55.804002 37.511482))
     collecting (relevant "" '("building") (position-lat-lon lat lon)
                          :house-number house-number)))

(defsample "минск немига 3" "en"
  (position-lat-lon 53.893297 27.567588)
  (viewport :maxx 27.5728 :maxy 64.2351 :minx 27.561 :miny 64.2241)
  (list (vital "Немига" '("building" "shop-mall")
               (position-lat-lon 53.904068 27.552464)
               :house-number "3")))

(defsample "улица наметкина 16 " "en"
  *moscow-position*
  *moscow-viewport*
  (list (vital "Газпром" '("building")
               (position-lat-lon 55.658734 37.55672)
               :house-number "16")
        (relevant "Газпромбанк" '("building" "amenity-bank")
                  (position-lat-lon 55.659377 37.558571)
                  :house-number "16 к1")
        (relevant "Gazprom" '("building")
                  (position-lat-lon 55.65896 37.557985)
                  :house-number "16 к2")
        (relevant "" '("building")
                  (position-lat-lon 55.658486 37.55745)
                  :house-number "16 к3")
        (relevant "Поликлиника и физкультурно-оздоровительный корпус"
                  '("building" "amenity-clinic")
                  (position-lat-lon 55.658012 37.556947)
                  :house-number "16 к4")
        (relevant "" '("building")
                  (position-lat-lon 55.658722 37.55582)
                  :house-number "16 к7")
        (relevant "" '("building")
                  (position-lat-lon 55.658219 37.555958)
                  :house-number "16 к5")
        (relevant "Газпром-отель" '("building" "tourism-hotel")
                  (position-lat-lon 55.658549 37.555085))))

(defsample "cuba" "en"
  *moscow-position*
  *moscow-viewport*
  (list (relevant "Cuba" '("place-country")
                  (position-lat-lon 23.013134 -80.832884))))

(defsample "540 queen street brisbane" "en"
  (position-lat-lon -27.469546 153.024131)
  (viewport :maxx 153.027 :maxy -28.5833 :minx 153.02 :miny -28.5888)
  (list (vital "Willahra Tower" '("building")
               (position-lat-lon -27.463288 153.030955)
               :house-number "540")))

(defsample "casino" "en"
  (position-lat-lon 33.749495 -117.873221)
  (viewport :maxx 117.308 :maxy 36.5515 :minx -118.718 :miny 35.279)
  (list (relevant "Crystal Casino & Hotel" '("building")
                  (position-lat-lon 33.87517 -118.220612))
        (relevant "The Bicycle Casino" '("landuse-commercial" "amenity-casino")
                  (position-lat-lon 33.966085 -118.166707)
                  :house-number "7301")
        (relevant "The Commerce Casino" '("amenity-casino")
                  (position-lat-lon 33.998295 -118.144928)
                  :house-number "6131")
        (relevant "Commerce Casino" '("amenity-casino")
                  (position-lat-lon 34.000141 -118.143703))
        (relevant "Hollywood Park Casino" '("building" "amenity-casino")
                  (position-lat-lon 33.947588 -118.33938))
        (relevant "San Manuel Indian Bingo and Casino" '("tourism-attraction" "amenity-casino")
                  (position-lat-lon 34.150149 -117.227594))))

(scoped-samples ("en"
                 (position-lat-lon 55.688087 37.590087)
                 (viewport :maxx 37.592 :maxy 67.3444 :minx 37.5883 :miny 67.3416))

                (def "bank "
                    (list (relevant "" '("building" "amenity-bank")
                                    (position-lat-lon 55.688664 37.59321)
                                    :house-number "20А")))
                (def "химки "
                    (list (vital "Химки" '("place-city")
                                 (position-lat-lon 55.889289 37.444994))))
                (def "Коломенское "
                    (list (vital "Музей-заповедник \"Коломенское\"" '("leisure-park")
                                 (position-lat-lon 55.660829 37.669019))))
                (def "новаторов 14 "
                    (list (relevant "" '("building")
                                   (position-lat-lon 55.667576 37.523191)
                                   :house-number "14 к1")
                          (relevant "" '("building")
                                    (position-lat-lon 55.667156 37.523081)
                                    :house-number "14 к2")))
                (def "пушкин "
                    (list (vital "Пушкин" '("place-city")
                                 (position-lat-lon 59.722262 30.415717))
                          (relevant "Пушкин" '("historic-memorial")
                                    (position-lat-lon 55.749956 37.587827))
                          (relevant "A. C. Пушкин" '("historic-memorial")
                                    (position-lat-lon 55.755464 37.612809))))

                ; A strange museum in Smolensk (near shop centre
                ; "Пушкинский") is reported here.
                (def "пушкинский музей "
                    (list (irrelevant "Музей-заповедник, отдел истории" '("tourism-museum")
                                      (position-lat-lon 54.782396 32.049999))))
                (def "калуга "
                    (list (vital "Калуга" '("place-city-capital-4")
                                 (position-lat-lon 54.510112 36.259801))))
                (def "ленинский "
                    (list (relevant "Ленинский проспект" '("hwtag-nofoot" "hwtag-oneway" "highway-primary")
                                    (position-lat-lon 55.700622 37.567642))
                          (relevant "Ленинский проспект" '("hwtag-lit" "hwtag-nofoot" "hwtag-oneway" "highway-secondary")
                                    (position-lat-lon 55.697408 37.562625)))))


(scoped-samples ("en" (position-lat-lon 55.643109 37.58908)
                      (viewport :maxx 32.0534 :maxy 65.757 :minx 32.0466 :miny 65.7518))
                (def "рио "
                    (list (vital "ТЦ РИО" '("building" "shop-mall")
                                 (position-lat-lon 55.689754 37.602154)
                                 :house-number "1")
                          (vital "Рио" '("building" "shop-mall")
                                 (position-lat-lon 55.663783 37.51131)
                                 :house-number "109")
                          (relevant "Рио де Пиво" '("amenity-cafe")
                                    (position-lat-lon 55.68316 37.625142)))))

(scoped-samples ("ru" *moscow-position* *moscow-viewport*)
                (def "Россия "
                    (list (vital "Россия" '("place-country")
                                 (position-lat-lon 64.6863141 97.7453086))))
                (def "Lesotho"
                    (list (vital "Lesotho" '("place-country")
                                 (position-lat-lon -29.6039311 28.3350096))))
                (def "San Marino"
                    (list (vital "San Marino" '("place-country")
                                 (position-lat-lon 43.9458555 12.4583045))
                          (vital "Città di San Marino" '("place-town")
                                 (position-lat-lon 43.9363997 12.4467173))))
                (def "Republic of Cyprus"
                    (list (vital "Κύπρος" '("place-country")
                                 (position-lat-lon 34.9823169 33.1451336))))
                (def "Korea, North"
                    (list (vital "조선민주주의인민공화국" '("place-country")
                                 (position-lat-lon 40.3124091 127.3999867))))
                (def "Винзавод "
                    (list (vital "Винзавод" '("amenity" "landuse-commercial")
                                 (position-lat-lon 55.7560979 37.6661864))))
                (def "Камышин спортивная 6"
                    (list (vital "" '("building")
                                 (position-lat-lon 50.0895369 45.3833644)
                                 :house-number "6")
                          (relevant "МОУ СОШ No 6" '("amenity-school")
                                    (position-lat-lon 50.0884958 45.3850127))))
                (def "Санкт-Петербург"
                    (list (vital "Санкт-Петербург" '("place-city-capital-3")
                                 (position-lat-lon 59.9393579 30.3153813)))))

(dolist (query (list "restaurant пушкинъ " "restaurant пушкин" "cafe пушкинъ"))
  (defsample query "en"
    *skylight-position*
    *skylight-viewport*
    (list (vital "Пушкинъ" '("building" "amenity-restaurant")
                 (position-lat-lon 55.7637177 37.6050293)
                 :house-number "26А"))))

(defsample "restaurant" "en"
  *moscow-airport-station-position*
  *moscow-airport-station-viewport*
  (list (vital "Кофе Хауз" '("internet_access-wlan" "amenity-cafe")
               (position-lat-lon 55.8004875 37.5333406))
        (vital "IL Патио" '("amenity-restaurant")
               (position-lat-lon 55.7994352 37.5327398))
        (vital "Амиго Мигель" '("amenity-restaurant")
               (position-lat-lon 55.7994925 37.5326057))
        (vital "Марукамэ" '("amenity-restaurant")
               (position-lat-lon 55.799595 37.5323589))
        (vital "Пироговая Штолле" '("internet_access-wlan" "amenity-cafe")
               (position-lat-lon 55.8007996 37.5326942))))

(scoped-samples ("en" *moscow-airport-station-position* *moscow-airport-station-viewport*)
                ; A group of buildings with complex numbers.
                (def "Ореховый бульвар 10к2"
                    (list (vital "" '("building")
                                 (position-lat-lon 55.6080474 37.7078451)
                                 :house-number "10 к2 с2")
                          (vital "" '("building")
                                 (position-lat-lon 55.6075383 37.707082)
                                 :house-number "10 к2")))
                (def "Ореховый бульвар 10к2 с2"
                    (list (vital "" '("building")
                                 (position-lat-lon 55.6080474 37.7078451)
                                 :house-number "10 к2 с2")))
                (def "садовая-кудринская 26/40 с2"
                    (list (vital "" '("building")
                                 (position-lat-lon 55.7633065 37.5886129)
                                 :house-number "26/40 с2")))
                (def "садовая-кудринская 26/40 с3"
                    (list (vital "" '("building")
                                 (position-lat-lon 55.7635306 37.5889817)
                                 :house-number "26/40 с3")))
                (def "волков переулок 7/9 с2"
                    (list (vital "" '("building")
                                 (position-lat-lon 55.7626048 37.5735013)
                                 :house-number "7/9 с2")))
                (def "1-й Новокузнецкий переулок, 26/8 с5"
                    (list (vital "" '("building")
                                 (position-lat-lon 55.7352221 37.6321491)
                                 :house-number "26/8 с5")))

                ; A group of villages in Tula oblast.
                (dolist (region (power-set '("россия" "тульская область")))
                  (def (join-strings (cons "Крапивна" region))
                      (list (vital "Крапивна" '("place-village")
                                   (position-lat-lon 53.9403093 37.1663125))))
                  (def (join-strings (cons "Пришня" region))
                      (list (vital "Пришня" '("place-village")
                                   (position-lat-lon 53.9272875 37.3128496))))
                  (def (join-strings (cons "Щёкино" region))
                      (list (vital "Щёкино" '("place-town")
                                   (position-lat-lon 54.0044567 37.5179073))))))

;;; Different Hermitage-related queries.
(scoped-samples ("en" *moscow-position* *moscow-viewport*)
                (def "Эрмитаж"
                    (list (vital "Сад Эрмитаж" '("leisure-park")
                                 (position-lat-lon 55.7707567 37.6091465))
                          (vital "Павильон \"Эрмитаж\"" '("building" "tourism-attraction")
                                 (position-lat-lon 55.7373619 37.8078016))))
                (dolist (query '("Эрмитаж Пете" "Эрмитаж Петербург"))
                  (def query
                      (list (vital "Государственный Эрмитаж (Главный штаб Восточное крыло)"
                                   '("building" "tourism-museum")
                                   (position-lat-lon 59.938567 30.3183096)
                                   :house-number "6-8")
                            (vital "Государственный Эрмитаж" '("tourism-museum")
                                   (position-lat-lon 59.9409881 30.3129948))
                            (relevant "Новый Эрмитаж" '("building")
                                      (position-lat-lon 59.9413851 30.3172474)
                                      :house-number "35")
                            (relevant "Малый Эрмитаж" '("building")
                                      (position-lat-lon 59.9411941 30.3155697 )
                                      :house-number "36")
                            (relevant "Большой Эрмитаж" '("building")
                                      (position-lat-lon 59.9418994 30.315939)
                                      :house-number "34")
                            (relevant "павильон \"Эрмитаж\"" '("building")
                                      (position-lat-lon 59.7135334 30.4033383))
                            (relevant "Эрмитаж" '("amenity-cafe")
                                      (position-lat-lon 59.7195307 30.4087738))
                            (relevant "Гостиница «Эрмитаж»" '("building" "tourism-hotel")
                                      (position-lat-lon 59.9233988 30.343724)
                                      :house-number "10")
                            (relevant "дворец \"Эрмитаж\"" '("building" "tourism-museum")
                                      (position-lat-lon 59.88895 29.9033424))
                            (relevant "Эрмитаж" '("shop-gift")
                                      (position-lat-lon 59.7974888 30.2682368))))))

(defsample "метро рев" "ru"
  *minsk-position*
  *minsk-viewport*
  (list (vital "Площадь Революции" '("railway-subway_entrance-moscow")
               (position-lat-lon 55.7564118 37.6233609))
        (relevant "Площадь Революции; Театральная" '("entrance" "railway-subway_entrance-moscow")
                  (position-lat-lon 55.7567031 37.6195548))))

(defsample "Idaho" "en"
  *minsk-position*
  *minsk-viewport*
  (list (vital "Idaho" '("place-state-USA")
               (position-lat-lon 43.6447598 -114.0154188))))

(defsample "Карелия" "en"
  *minsk-position*
  *minsk-viewport*
  (list (vital "Карелия" '("place-state")
               (position-lat-lon 62.6193993 33.4920184))))

(defsample "igema" "en"
  (position-lat-lon 51.8878412 7.5803997)
  (viewport :maxx 11.2101 :maxy 53.6923 :minx 11.1978 :miny 53.6827)
  (list (vital "Igema" '("building")
               (position-lat-lon 51.8878412 7.5803997)
               :house-number "1")))

(defsample "burg metternich " "en"
  (position-lat-lon 50.1058386 7.2378164)
  (viewport :maxx 7.2447 :maxy 58.0872 :minx 7.22865 :miny 58.0669)
  (list (vital "Burg Metternich" '("historic-castle")
               (position-lat-lon 50.1088593 7.2392299))))
