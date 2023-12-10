
class WorldStatesModell {
  num _updated = 0;
  num _cases = 0;
  num _todayCases = 0;
  num _deaths = 0;
  num _todayDeaths = 0;
  num _recovered = 0;
  num _todayRecovered = 0;
  num _active = 0;
  num _critical = 0;
  num _casesPerOneMillion = 0;
  num _deathsPerOneMillion = 0;
  num _tests = 0;
  num _testsPerOneMillion = 0;
  num _population = 0;
  num _oneCasePerPeople = 0;
  num _oneDeathPerPeople = 0;
  num _oneTestPerPeople = 0;
  num _activePerOneMillion = 0;
  num _recoveredPerOneMillion = 0;
  num _criticalPerOneMillion = 0;
  num _affectedCountries = 0;

  WorldStatesModell({
    required num updated,
    required num cases,
    required num todayCases,
    required num deaths,
    required num todayDeaths,
    required num recovered,
    required num todayRecovered,
    required num active,
    required num critical,
    required num casesPerOneMillion,
    required num deathsPerOneMillion,
    required num tests,
    required num testsPerOneMillion,
    required num population,
    required num oneCasePerPeople,
    required num oneDeathPerPeople,
    required num oneTestPerPeople,
    required num activePerOneMillion,
    required num recoveredPerOneMillion,
    required num criticalPerOneMillion,
    required num affectedCountries,
  }) {
    _updated = updated;
    _cases = cases;
    _todayCases = todayCases;
    _deaths = deaths;
    _todayDeaths = todayDeaths;
    _recovered = recovered;
    _todayRecovered = todayRecovered;
    _active = active;
    _critical = critical;
    _casesPerOneMillion = casesPerOneMillion;
    _deathsPerOneMillion = deathsPerOneMillion;
    _tests = tests;
    _testsPerOneMillion = testsPerOneMillion;
    _population = population;
    _oneCasePerPeople = oneCasePerPeople;
    _oneDeathPerPeople = oneDeathPerPeople;
    _oneTestPerPeople = oneTestPerPeople;
    _activePerOneMillion = activePerOneMillion;
    _recoveredPerOneMillion = recoveredPerOneMillion;
    _criticalPerOneMillion = criticalPerOneMillion;
    _affectedCountries = affectedCountries;
  }

  WorldStatesModell.fromJson(dynamic json) {
    _updated = json['updated'] ?? 0;
    _cases = json['cases'] ?? 0;
    _todayCases = json['todayCases'] ?? 0;
    _deaths = json['deaths'] ?? 0;
    _todayDeaths = json['todayDeaths'] ?? 0;
    _recovered = json['recovered'] ?? 0;
    _todayRecovered = json['todayRecovered'] ?? 0;
    _active = json['active'] ?? 0;
    _critical = json['critical'] ?? 0;
    _casesPerOneMillion = json['casesPerOneMillion'] ?? 0;
    _deathsPerOneMillion = json['deathsPerOneMillion'] ?? 0;
    _tests = json['tests'] ?? 0;
    _testsPerOneMillion = json['testsPerOneMillion'] ?? 0;
    _population = json['population'] ?? 0;
    _oneCasePerPeople = json['oneCasePerPeople'] ?? 0;
    _oneDeathPerPeople = json['oneDeathPerPeople'] ?? 0;
    _oneTestPerPeople = json['oneTestPerPeople'] ?? 0;
    _activePerOneMillion = json['activePerOneMillion'] ?? 0;
    _recoveredPerOneMillion = json['recoveredPerOneMillion'] ?? 0;
    _criticalPerOneMillion = json['criticalPerOneMillion'] ?? 0;
    _affectedCountries = json['affectedCountries'] ?? 0;
  }

  WorldStatesModell copyWith({
    num updated = 0,
    num cases = 0,
    num todayCases = 0,
    num deaths = 0,
    num todayDeaths = 0,
    num recovered = 0,
    num todayRecovered = 0,
    num active = 0,
    num critical = 0,
    num casesPerOneMillion = 0,
    num deathsPerOneMillion = 0,
    num tests = 0,
    num testsPerOneMillion = 0,
    num population = 0,
    num oneCasePerPeople = 0,
    num oneDeathPerPeople = 0,
    num oneTestPerPeople = 0,
    num activePerOneMillion = 0,
    num recoveredPerOneMillion = 0,
    num criticalPerOneMillion = 0,
    num affectedCountries = 0,
  }) =>
      WorldStatesModell(
        updated: updated,
        cases: cases,
        todayCases: todayCases,
        deaths: deaths,
        todayDeaths: todayDeaths,
        recovered: recovered,
        todayRecovered: todayRecovered,
        active: active,
        critical: critical,
        casesPerOneMillion: casesPerOneMillion,
        deathsPerOneMillion: deathsPerOneMillion,
        tests: tests,
        testsPerOneMillion: testsPerOneMillion,
        population: population,
        oneCasePerPeople: oneCasePerPeople,
        oneDeathPerPeople: oneDeathPerPeople,
        oneTestPerPeople: oneTestPerPeople,
        activePerOneMillion: activePerOneMillion,
        recoveredPerOneMillion: recoveredPerOneMillion,
        criticalPerOneMillion: criticalPerOneMillion,
        affectedCountries: affectedCountries,
      );

  num get updated => _updated;
  num get cases => _cases;
  num get todayCases => _todayCases;
  num get deaths => _deaths;
  num get todayDeaths => _todayDeaths;
  num get recovered => _recovered;
  num get todayRecovered => _todayRecovered;
  num get active => _active;
  num get critical => _critical;
  num get casesPerOneMillion => _casesPerOneMillion;
  num get deathsPerOneMillion => _deathsPerOneMillion;
  num get tests => _tests;
  num get testsPerOneMillion => _testsPerOneMillion;
  num get population => _population;
  num get oneCasePerPeople => _oneCasePerPeople;
  num get oneDeathPerPeople => _oneDeathPerPeople;
  num get oneTestPerPeople

  => _oneTestPerPeople;
  num get activePerOneMillion => _activePerOneMillion;
  num get recoveredPerOneMillion => _recoveredPerOneMillion;
  num get criticalPerOneMillion => _criticalPerOneMillion;
  num get affectedCountries => _affectedCountries;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = _updated;
    data['cases'] = _cases;
    data['todayCases'] = _todayCases;
    data['deaths'] = _deaths;
    data['todayDeaths'] = _todayDeaths;
    data['recovered'] = _recovered;
    data['todayRecovered'] = _todayRecovered;
    data['active'] = _active;
    data['critical'] = _critical;
    data['casesPerOneMillion'] = _casesPerOneMillion;
    data['deathsPerOneMillion'] = _deathsPerOneMillion;
    data['tests'] = _tests;
    data['testsPerOneMillion'] = _testsPerOneMillion;
    data['population'] = _population;
    data['oneCasePerPeople'] = _oneCasePerPeople;
    data['oneDeathPerPeople'] = _oneDeathPerPeople;
    data['oneTestPerPeople'] = _oneTestPerPeople;
    data['activePerOneMillion'] = _activePerOneMillion;
    data['recoveredPerOneMillion'] = _recoveredPerOneMillion;
    data['criticalPerOneMillion'] = _criticalPerOneMillion;
    data['affectedCountries'] = _affectedCountries;
    return data;
  }
}
