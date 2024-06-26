import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/data/providers/radio_favorites_hive.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/presentation/navigators/radio_browser_navigator.dart';

@GenerateNiceMocks(
  [
    MockSpec<RadioBrowserNavigator>(),
    MockSpec<RadioFavoritesHive>(),
  ],
)
const baseUrl = 'https://at1.api.radio-browser.info';
const searchPath = '/json/stations/search';

const stations = '''
[
    {
        "changeuuid": "8125d095-6397-4660-a5c4-ef0254f67e06",
        "stationuuid": "9617a958-0601-11e8-ae97-52543be04c81",
        "serveruuid": null,
        "name": "Radio Paradise (320k)",
        "url": "http://stream-uk1.radioparadise.com/aac-320",
        "url_resolved": "http://stream-uk1.radioparadise.com/aac-320",
        "homepage": "https://www.radioparadise.com/",
        "favicon": "https://www.radioparadise.com/favicon-32x32.png",
        "tags": "california,eclectic,free,internet,non-commercial,paradise,radio",
        "country": "The United States Of America",
        "countrycode": "US",
        "iso_3166_2": null,
        "state": "California",
        "language": "english",
        "languagecodes": "",
        "votes": 186631,
        "lastchangetime": "2023-11-04 14:13:19",
        "lastchangetime_iso8601": "2023-11-04T14:13:19Z",
        "codec": "AAC",
        "bitrate": 320,
        "hls": 0,
        "lastcheckok": 1,
        "lastchecktime": "2024-04-10 08:37:26",
        "lastchecktime_iso8601": "2024-04-10T08:37:26Z",
        "lastcheckoktime": "2024-04-10 08:37:26",
        "lastcheckoktime_iso8601": "2024-04-10T08:37:26Z",
        "lastlocalchecktime": "",
        "lastlocalchecktime_iso8601": null,
        "clicktimestamp": "2024-04-10 14:20:16",
        "clicktimestamp_iso8601": "2024-04-10T14:20:16Z",
        "clickcount": 1584,
        "clicktrend": 18,
        "ssl_error": 0,
        "geo_lat": null,
        "geo_long": null,
        "has_extended_info": false
    },
    {
        "changeuuid": "24e25823-bb95-470d-a2ab-6d0817560511",
        "stationuuid": "d28420a4-eccf-47a2-ace1-088c7e7cb7e0",
        "serveruuid": null,
        "name": "101 SMOOTH JAZZ",
        "url": "http://www.101smoothjazz.com/101-smoothjazz.m3u",
        "url_resolved": "http://jking.cdnstream1.com/b22139_128mp3",
        "homepage": "http://101smoothjazz.com/",
        "favicon": "http://101smoothjazz.com/favicon.ico",
        "tags": "easy listening,jazz,smooth jazz",
        "country": "The United States Of America",
        "countrycode": "US",
        "iso_3166_2": null,
        "state": "California",
        "language": "english",
        "languagecodes": "",
        "votes": 49313,
        "lastchangetime": "2023-11-04 14:54:10",
        "lastchangetime_iso8601": "2023-11-04T14:54:10Z",
        "codec": "MP3",
        "bitrate": 128,
        "hls": 0,
        "lastcheckok": 1,
        "lastchecktime": "2024-04-10 09:53:37",
        "lastchecktime_iso8601": "2024-04-10T09:53:37Z",
        "lastcheckoktime": "2024-04-10 09:53:37",
        "lastcheckoktime_iso8601": "2024-04-10T09:53:37Z",
        "lastlocalchecktime": "",
        "lastlocalchecktime_iso8601": null,
        "clicktimestamp": "2024-04-10 14:25:51",
        "clicktimestamp_iso8601": "2024-04-10T14:25:51Z",
        "clickcount": 1256,
        "clicktrend": 10,
        "ssl_error": 0,
        "geo_lat": null,
        "geo_long": null,
        "has_extended_info": false
    },
    {
        "changeuuid": "4fcdf908-9025-4308-a82e-c061b42e6e28",
        "stationuuid": "d1a54d2e-623e-4970-ab11-35f7b56c5ec3",
        "serveruuid": null,
        "name": "Classic Vinyl HD",
        "url": "https://icecast.walmradio.com:8443/classic",
        "url_resolved": "https://icecast.walmradio.com:8443/classic",
        "homepage": "https://walmradio.com/classic",
        "favicon": "https://icecast.walmradio.com:8443/classic.jpg",
        "tags": "1930,1940,1950,1960,beautiful music,big band,classic hits,crooners,easy,easy listening,hd,jazz,light orchestral,lounge,oldies,orchestral,otr,relaxation,strings,swing,unwind,walm",
        "country": "The United States Of America",
        "countrycode": "US",
        "iso_3166_2": null,
        "state": "New York NY",
        "language": "english",
        "languagecodes": "",
        "votes": 121245,
        "lastchangetime": "2023-12-28 16:21:25",
        "lastchangetime_iso8601": "2023-12-28T16:21:25Z",
        "codec": "MP3",
        "bitrate": 320,
        "hls": 0,
        "lastcheckok": 1,
        "lastchecktime": "2024-04-09 22:18:02",
        "lastchecktime_iso8601": "2024-04-09T22:18:02Z",
        "lastcheckoktime": "2024-04-09 22:18:02",
        "lastcheckoktime_iso8601": "2024-04-09T22:18:02Z",
        "lastlocalchecktime": "",
        "lastlocalchecktime_iso8601": null,
        "clicktimestamp": "2024-04-10 14:23:45",
        "clicktimestamp_iso8601": "2024-04-10T14:23:45Z",
        "clickcount": 760,
        "clicktrend": 28,
        "ssl_error": 0,
        "geo_lat": 40.75166,
        "geo_long": -73.97538,
        "has_extended_info": true
    }
]
''';

final mockStation = RadioStation(
  id: '9617a958-0601-11e8-ae97-52543be04c81',
  name: 'Radio Paradise (320k)',
  url: 'http://stream-uk1.radioparadise.com/aac-320',
  country: 'The United States Of America',
  countrycode: 'US',
  favicon: 'https://www.radioparadise.com/favicon-32x32.png',
);

final _path = Directory.current.path;
String hiveTestPath(String subDir) => '$_path/test/hive_testing_path/$subDir';

void initTests(String subDir) {
  Hive.init(hiveTestPath(subDir));
  appDIInitializer();
}

void deleteHiveTestingDirectory(String subDir) {
  try {
    Directory('$hiveTestPath()$subDir').delete(recursive: true);
  } catch (_) {}
}
