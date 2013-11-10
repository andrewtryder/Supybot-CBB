------------------
-- DB STRUCTURE --
------------------

-- DIVISIONS
CREATE TABLE IF NOT EXISTS divs (
    id INT PRIMARY KEY,
    division TEXT
    );

-- CONFERENCES
CREATE TABLE IF NOT EXISTS confs (
    division INTEGER,
    id INTEGER PRIMARY KEY,
    conference TEXT,
    FOREIGN KEY(division) REFERENCES divs(id) ON DELETE NO ACTION ON UPDATE NO ACTION
    );

-- TEAMS
CREATE TABLE IF NOT EXISTS teams (
    conf INTEGER, -- link to conference id.
    id INT PRIMARY KEY,
    team TEXT,
    tid TEXT,
    FOREIGN KEY(conf) REFERENCES confs(id) ON DELETE NO ACTION ON UPDATE NO ACTION
    );

----------
-- DATA --
----------

-- DIVISIONS
INSERT INTO divs VALUES ('1', 'D1');
INSERT INTO divs VALUES ('2', 'non-D1');

-- CONFS AND TEAMS
-- America East
INSERT INTO confs VALUES ("1", "99", "America East");
INSERT INTO teams VALUES ("99", "1176", "Albany Great Danes", "aca");  -- America East
INSERT INTO teams VALUES ("99", "1286", "Binghamton Bearcats", "bai");  -- America East
INSERT INTO teams VALUES ("99", "244", "Hartford Hawks", "hac");  -- America East
INSERT INTO teams VALUES ("99", "334", "Maine Black Bears", "maa");  -- America East
INSERT INTO teams VALUES ("99", "1543", "UMass-Lowell River Hawks", "massachusetts_lowell");
INSERT INTO teams VALUES ("99", "403", "New Hampshire Wildcats", "nal");  -- America East
INSERT INTO teams VALUES ("99", "569", "Stony Brook Seawolves", "scy"); -- America East
INSERT INTO teams VALUES ("99", "346", "UMBC Retrievers", "mam");  -- America East
INSERT INTO teams VALUES ("99", "616", "Vermont Catamounts", "vad");  -- America East

-- American (AAC)
INSERT INTO confs VALUES ("1", "170", "AAC");
INSERT INTO teams VALUES ("170", "116", "Cincinnati Bearcats", "cbc");  -- American Athletic
INSERT INTO teams VALUES ("170", "129", "Connecticut Huskies", "cbp");  -- American Athletic
INSERT INTO teams VALUES ("170", "254", "Houston Cougars", "ham");  -- American Athletic
INSERT INTO teams VALUES ("170", "314", "Louisville Cardinals", "laq");  -- American Athletic
INSERT INTO teams VALUES ("170", "349", "Memphis Tigers", "map");  -- American Athletic
INSERT INTO teams VALUES ("170", "492", "Rutgers Scarlet Knights", "rak");  -- American Athletic
INSERT INTO teams VALUES ("170", "526", "South Florida Bulls", "sav");  -- American Athletic
INSERT INTO teams VALUES ("170", "515", "SMU Mustangs", "sbg");  -- American Athletic
INSERT INTO teams VALUES ("101", "577", "Temple Owls", "tad");  -- American Athletic
INSERT INTO teams VALUES ("170", "103", "UCF Knights", "cap");  -- American Athletic

-- Atlantic 10 (A10)
INSERT INTO confs VALUES ("1", "101", "A10");
INSERT INTO teams VALUES ("101", "157", "Dayton Flyers", "dae");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "174", "Duquesne Dukes", "dav");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "214", "Fordham Rams", "fao");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "228", "George Mason Patriots", "gad");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "227", "George Washington Colonials", "gac");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "301", "La Salle Explorers", "lad");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "344", "Massachusetts Minutemen", "mak");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "485", "Rhode Island Rams", "rad");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "487", "Richmond Spiders", "raf");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "535", "Saint Joseph's Hawks", "sbq");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "536", "Saint Louis Billikens", "sbr");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "531", "St. Bonaventure Bonnies", "sbl");  -- Atlantic 10
INSERT INTO teams VALUES ("101", "613", "VCU Rams", "vaa");  -- Atlantic 10

-- ACC
INSERT INTO confs VALUES ("1", "6", "ACC");
INSERT INTO teams VALUES ("6", "58", "Boston College Eagles", "bam");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "120", "Clemson Tigers", "cbg");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "173", "Duke Blue Devils", "dau");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "213", "Florida State Seminoles", "fan");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "232", "Georgia Tech Yellow Jackets", "gah");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "343", "Maryland Terrapins", "maj");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "355", "Miami (FL) Hurricanes", "mav");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "413", "North Carolina Tar Heels", "nav");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "411", "North Carolina State Wolfpack", "nat");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "423", "Notre Dame Fighting Irish", "nbf");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "465", "Pittsburgh Panthers", "pal");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "553", "Syracuse Orange", "sci");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "618", "Virginia Cavaliers", "vaf");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "620", "Virginia Tech Hokies", "vah");  -- Atlantic Coast
INSERT INTO teams VALUES ("6", "628", "Wake Forest Demon Deacons", "wad");  -- Atlantic Coast

-- Atlantic Sun
INSERT INTO confs VALUES ("1", "107", "Atlantic Sun");
INSERT INTO teams VALUES ("107", "176", "East Tennessee State Buccaneers", "eaa");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "1383", "FGCU Eagles", "flg");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "281", "Jacksonville Dolphins", "jab");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "1374", "Kennesaw St.", "kns");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "1281", "Lipscomb Bisons", "lbu");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "350", "Mercer Bears", "maq");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "434", "North Florida Ospreys", "nfl");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "1506", "Northern Kentucky Norse", "nbj");
INSERT INTO teams VALUES ("107", "548", "Stetson Hatters", "scd");  -- Atlantic Sun
INSERT INTO teams VALUES ("107", "1203", "USC Upstate Spartans", "sec");  -- Atlantic Sun

-- Big 12
INSERT INTO confs VALUES ("1", "103", "BIG12");
INSERT INTO teams VALUES ("103", "50", "Baylor Bears", "bae");  -- Big 12
INSERT INTO teams VALUES ("103", "277", "Iowa State Cyclones", "iao");  -- Big 12
INSERT INTO teams VALUES ("103", "287", "Kansas Jayhawks", "kaa");  -- Big 12
INSERT INTO teams VALUES ("103", "288", "Kansas State Wildcats", "kab");  -- Big 12
INSERT INTO teams VALUES ("103", "444", "Oklahoma Sooners", "oae");  -- Big 12
INSERT INTO teams VALUES ("103", "446", "Oklahoma State Cowboys", "oag");  -- Big 12
INSERT INTO teams VALUES ("103", "576", "TCU Horned Frogs", "tac");  -- Big 12
INSERT INTO teams VALUES ("103", "585", "Texas Longhorns", "tal");  -- Big 12
INSERT INTO teams VALUES ("103", "592", "Texas Tech Red Raiders", "tas");  -- Big 12
INSERT INTO teams VALUES ("103", "636", "West Virginia Mountaineers", "wal");  -- Big 12

-- Big East
INSERT INTO confs VALUES ("1", "102", "Big East");
INSERT INTO teams VALUES ("102", "67", "Butler Bulldogs", "bav");  -- Big East
INSERT INTO teams VALUES ("102", "133", "Creighton Bluejays", "cbt");  -- Big East
INSERT INTO teams VALUES ("102", "164", "DePaul Blue Demons", "dal");  -- Big East
INSERT INTO teams VALUES ("102", "229", "Georgetown Hoyas", "gae");  -- Big East
INSERT INTO teams VALUES ("102", "339", "Marquette", "maf");  -- Big East
INSERT INTO teams VALUES ("102", "472", "Providence Friars", "pas");  -- Big East
INSERT INTO teams VALUES ("102", "508", "Seton Hall Pirates", "sao");  -- Big East
INSERT INTO teams VALUES ("102", "534", "St. John's Red Storm", "sbp");  -- Big East
INSERT INTO teams VALUES ("102", "617", "Villanova Wildcats", "vae");  -- Big East
INSERT INTO teams VALUES ("102", "682", "Xavier Musketeers", "xaa");  -- Big East

-- Big Sky
INSERT INTO confs VALUES ("1", "15", "Big Sky");
INSERT INTO teams VALUES ("15", "184", "Eastern Washington Eagles", "eai");  -- Big Sky
INSERT INTO teams VALUES ("15", "265", "Idaho State Bengals", "iac");  -- Big Sky
INSERT INTO teams VALUES ("15", "372", "Montana Grizzlies", "mbm");  -- Big Sky
INSERT INTO teams VALUES ("15", "373", "Montana State Bobcats", "mbn");  -- Big Sky
INSERT INTO teams VALUES ("15", "1279", "North Dakota", "nci");  -- Big Sky
INSERT INTO teams VALUES ("15", "420", "Northern Arizona Lumberjacks", "nbc");  -- Big Sky
INSERT INTO teams VALUES ("15", "425", "Northern Colorado Bears", "nbh");  -- Big Sky
INSERT INTO teams VALUES ("15", "1033", "Portland State Vikings", "pbe");  -- Big Sky
INSERT INTO teams VALUES ("15", "494", "Sacramento State Hornets", "saa");  -- Big Sky
INSERT INTO teams VALUES ("15", "522", "Southern Utah Thunderbirds", "sbc");  -- Big Sky
INSERT INTO teams VALUES ("15", "633", "Weber State Wildcats", "wai");  -- Big Sky

-- Big South
INSERT INTO confs VALUES ("1", "16", "Big South");
INSERT INTO teams VALUES ("16", "96", "Campbell Fighting Camels", "cai");  -- Big South - North
INSERT INTO teams VALUES ("16", "111", "Charleston Southern Buccaneers", "cax");  -- Big South - South
INSERT INTO teams VALUES ("16", "122", "Coastal Carolina Chanticleers", "cbi");  -- Big South - South
INSERT INTO teams VALUES ("16", "1048", "Gardner-Webb Runnin' Bulldogs", "gal");  -- Big South - South
INSERT INTO teams VALUES ("16", "1112", "High Point Panthers", "hbd");  -- Big South - North
INSERT INTO teams VALUES ("16", "306", "Liberty Flames", "lai");  -- Big South - North
INSERT INTO teams VALUES ("16", "1219", "Longwood Lancers", "lay");  -- Big South - North
INSERT INTO teams VALUES ("16", "470", "Presbyterian Blue Hose", "paq");  -- Big South - South
INSERT INTO teams VALUES ("16", "483", "Radford Highlanders", "raa");  -- Big South - North
INSERT INTO teams VALUES ("16", "393", "UNC Asheville Bulldogs", "nab");  -- Big South - South
INSERT INTO teams VALUES ("16", "621", "VMI Keydets", "vai");  -- Big South - North
INSERT INTO teams VALUES ("16", "649", "Winthrop Eagles", "way");  -- Big South - South

-- Big Ten
INSERT INTO confs VALUES ("1", "3", "BIG10");
INSERT INTO teams VALUES ("3", "267", "Illinois Fighting Illini", "iae");  -- Big Ten
INSERT INTO teams VALUES ("3", "271", "Indiana Hoosiers", "iai");  -- Big Ten
INSERT INTO teams VALUES ("3", "276", "Iowa Hawkeyes", "ian");  -- Big Ten
INSERT INTO teams VALUES ("3", "357", "Michigan Wolverines", "max");  -- Big Ten
INSERT INTO teams VALUES ("3", "358", "Michigan State Spartans", "may");  -- Big Ten
INSERT INTO teams VALUES ("3", "363", "Minnesota Golden Gophers", "mbd");  -- Big Ten
INSERT INTO teams VALUES ("3", "400", "Nebraska Cornhuskers", "nai");  -- Big Ten
INSERT INTO teams VALUES ("3", "421", "Northwestern Wildcats", "nbd");  -- Big Ten
INSERT INTO teams VALUES ("3", "443", "Ohio State Buckeyes", "oad");  -- Big Ten
INSERT INTO teams VALUES ("3", "459", "Penn State Nittany Lions", "paf");  -- Big Ten
INSERT INTO teams VALUES ("3", "474", "Purdue Boilermakers", "pau");  -- Big Ten
INSERT INTO teams VALUES ("3", "657", "Wisconsin Badgers", "wbg");  -- Big Ten

-- Big West
INSERT INTO confs VALUES ("1", "8", "Big West");
INSERT INTO teams VALUES ("8", "94", "Cal Poly Mustangs", "cag");  -- Big West
INSERT INTO teams VALUES ("8", "219", "Cal State Fullerton Titans", "fat");  -- Big West
INSERT INTO teams VALUES ("8", "419", "Cal State Northridge Matadors", "nbb");  -- Big West
INSERT INTO teams VALUES ("8", "246", "Hawaii Rainbow Warriors", "hae");  -- Big West
INSERT INTO teams VALUES ("8", "311", "Long Beach State 49ers", "lan");  -- Big West
INSERT INTO teams VALUES ("8", "88", "UC Davis Aggies", "caa");  -- Big West
INSERT INTO teams VALUES ("8", "89", "UC Irvine Anteaters", "cab");  -- Big West
INSERT INTO teams VALUES ("8", "1240", "UC Riverside Highlanders", "cau");  -- Big West
INSERT INTO teams VALUES ("8", "501", "UC Santa Barbara Gauchos", "sah");  -- Big West

-- Colonial
INSERT INTO confs VALUES ("1", "17", "Colonial");
INSERT INTO teams VALUES ("17", "107", "Charleston Cougars", "cat");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "159", "Delaware Fightin' Blue Hens", "dag");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "172", "Drexel Dragons", "dat");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "252", "Hofstra Pride", "hak");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "282", "James Madison Dukes", "jac");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "398", "UNCW Seahawks", "nag");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "416", "Northeastern Huskies", "nay");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "595", "Towson Tigers", "tav");  -- Colonial Athletic
INSERT INTO teams VALUES ("17", "658", "William & Mary Tribe", "wbh");  -- Colonial Athletic

-- CUSA
INSERT INTO confs VALUES ("1", "1", "CUSA");
INSERT INTO teams VALUES ("1", "395", "Charlotte 49ers", "nad");  -- Conference USA
INSERT INTO teams VALUES ("1", "178", "East Carolina Pirates", "eac");  -- Conference USA
INSERT INTO teams VALUES ("1", "221", "Florida Atlantic Owls", "fav");  -- Conference USA
INSERT INTO teams VALUES ("1", "212", "FIU Golden Panthers", "fam");  -- Conference USA
INSERT INTO teams VALUES ("1", "313", "Louisiana Tech Bulldogs", "lap");  -- Conference USA
INSERT INTO teams VALUES ("1", "341", "Marshall Thundering Herd", "mah");  -- Conference USA
INSERT INTO teams VALUES ("1", "359", "Middle Tennessee Blue Raiders", "maz");  -- Conference USA
INSERT INTO teams VALUES ("1", "415", "North Texas Mean Green", "nax");  -- Conference USA
INSERT INTO teams VALUES ("1", "447", "Old Dominion Monarchs", "oah");  -- Conference USA
INSERT INTO teams VALUES ("1", "486", "Rice Owls", "rae");  -- Conference USA
INSERT INTO teams VALUES ("1", "521", "Southern Miss Golden Eagles", "sbb");  -- Conference USA
INSERT INTO teams VALUES ("1", "598", "Tulane Green Wave", "taz");  -- Conference USA
INSERT INTO teams VALUES ("1", "599", "Tulsa Golden Hurricane", "tba");  -- Conference USA
INSERT INTO teams VALUES ("1", "34", "UAB Blazers", "abh");  -- Conference USA
INSERT INTO teams VALUES ("1", "589", "UTEP Miners", "tap");  -- Conference USA
INSERT INTO teams VALUES ("1", "584", "UTSA Roadrunners", "tak");  -- Conference USA

-- Horizon
INSERT INTO confs VALUES ("1", "34", "Horizon");
INSERT INTO teams VALUES ("34", "121", "Cleveland State Vikings", "cbh");  -- Horizon League
INSERT INTO teams VALUES ("34", "165", "Detroit Titans", "dam");  -- Horizon League
INSERT INTO teams VALUES ("34", "652", "Green Bay Phoenix", "wbb");  -- Horizon League
INSERT INTO teams VALUES ("34", "268", "UIC Flames", "iaf");  -- Horizon League
INSERT INTO teams VALUES ("34", "654", "Milwaukee Panthers", "wbd");  -- Horizon League
INSERT INTO teams VALUES ("34", "441", "Oakland Golden Grizzlies", "oaa");  -- Horizon League
INSERT INTO teams VALUES ("34", "614", "Valparaiso Crusaders", "vab");  -- Horizon League
INSERT INTO teams VALUES ("34", "660", "Wright State Raiders", "wbj");  -- Horizon League
INSERT INTO teams VALUES ("34", "685", "Youngstown State Penguins", "yab");  -- Horizon League

-- Independents
INSERT INTO confs VALUES ("1", "35", "Independents");
INSERT INTO teams VALUES ("35", "1186", "NJIT Highlanders", "ncf");  -- Independents
INSERT INTO teams VALUES ("35", "667", "Winston-Salem", "");  -- Independents

-- Ivy
INSERT INTO confs VALUES ("1", "18", "Ivy");
INSERT INTO teams VALUES ("18", "64", "Brown Bears", "bas");  -- Ivy League
INSERT INTO teams VALUES ("18", "127", "Columbia Lions", "cbn");  -- Ivy League
INSERT INTO teams VALUES ("18", "131", "Cornell Big Red", "cbr");  -- Ivy League
INSERT INTO teams VALUES ("18", "155", "Dartmouth Big Green", "dac");  -- Ivy League
INSERT INTO teams VALUES ("18", "245", "Harvard Crimson", "had");  -- Ivy League
INSERT INTO teams VALUES ("18", "460", "Penn Quakers", "pag");  -- Ivy League
INSERT INTO teams VALUES ("18", "471", "Princeton Tigers", "par");  -- Ivy League
INSERT INTO teams VALUES ("18", "684", "Yale Bulldogs", "yaa");  -- Ivy League

-- MAAC
INSERT INTO confs VALUES ("1", "19", "MAAC");
INSERT INTO teams VALUES ("19", "97", "Canisius Golden Griffins", "caj");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "201", "Fairfield Stags", "fab");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "275", "Iona Gaels", "iam");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "318", "Loyola Maryland Greyhounds", "lau");  -- Patriot League
INSERT INTO teams VALUES ("19", "335", "Manhattan Jaspers", "mab");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "338", "Marist Red Foxes", "mae");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "370", "Monmouth Hawks", "mbk");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "408", "Niagara Purple Eagles", "naq");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "1115", "Quinnipiac Bobcats", "qae");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "488", "Rider Broncs", "rag");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "512", "Siena Saints", "sas");  -- Metro Atlantic Athletic
INSERT INTO teams VALUES ("19", "543", "St. Peter's", "sby");  -- Metro Atlantic Athletic

-- Mid-American (MAC)
INSERT INTO confs VALUES ("1", "20", "MAC");
INSERT INTO teams VALUES ("20", "3", "Akron Zips", "aac");  -- Mid-American - East
INSERT INTO teams VALUES ("20", "46", "Ball State Cardinals", "baa");  -- Mid-American - West
INSERT INTO teams VALUES ("20", "61", "Bowling Green Falcons", "bap");  -- Mid-American - East
INSERT INTO teams VALUES ("20", "71", "Buffalo Bulls", "baz");  -- Mid-American - East
INSERT INTO teams VALUES ("20", "104", "Central Michigan Chippewas", "caq");  -- Mid-American - West
INSERT INTO teams VALUES ("20", "181", "Eastern Michigan Eagles", "eaf");  -- Mid-American - West
INSERT INTO teams VALUES ("20", "291", "Kent State Golden Flashes", "kae");  -- Mid-American - East
INSERT INTO teams VALUES ("20", "356", "Miami (OH) RedHawks", "maw");  -- Mid-American - East
INSERT INTO teams VALUES ("20", "417", "Northern Illinois Huskies", "naz");  -- Mid-American - West
INSERT INTO teams VALUES ("20", "442", "Ohio Bobcats", "oab");  -- Mid-American - East
INSERT INTO teams VALUES ("20", "594", "Toledo Rockets", "tau");  -- Mid-American - West
INSERT INTO teams VALUES ("20", "640", "Western Michigan Broncos", "wap");  -- Mid-American - West

-- MEAC
INSERT INTO confs VALUES ("1", "31", "MEAC");
INSERT INTO teams VALUES ("31", "52", "Bethune-Cookman Wildcats", "bag");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "130", "Coppin State Eagles", "cbq");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "160", "Delaware State Hornets", "dah");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "211", "Florida A&M Rattlers", "fal");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "702", "Hampton Pirates", "hay");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "256", "Howard Bison", "hao");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "347", "Maryland Eastern Shore Hawks", "man");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "376", "Morgan State Bears", "mbq");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "1052", "Norfolk State Spartans", "ncb");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "410", "North Carolina A&T Aggies", "nas");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "907", "North Carolina Central Eagles", "nac");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "1066", "Savannah State Tigers", "saj");  -- Mid-Eastern
INSERT INTO teams VALUES ("31", "517", "South Carolina State Bulldogs", "sax");  -- Mid-Eastern

-- Missouri Valley
INSERT INTO confs VALUES ("1", "21", "MVC");
INSERT INTO teams VALUES ("21", "62", "Bradley Braves", "baq");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "170", "Drake Bulldogs", "dar");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "193", "Evansville Aces", "ear");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "269", "Illinois State Redbirds", "iag");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "274", "Indiana State Sycamores", "ial");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "316", "Loyola Chicago Ramblers", "las");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "551", "Missouri State Bears", "scg");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "418", "UNI Panthers", "nba");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "528", "Southern Illinois Salukis", "sbi");  -- Missouri Valley
INSERT INTO teams VALUES ("21", "648", "Wichita State Shockers", "wax");  -- Missouri Valley

-- Moutain West
INSERT INTO confs VALUES ("1", "112", "MWC");
INSERT INTO teams VALUES ("112", "2", "Air Force Falcons", "aab");  -- Mountain West
INSERT INTO teams VALUES ("112", "57", "Boise State Broncos", "bal");  -- Mountain West
INSERT INTO teams VALUES ("112", "126", "Colorado State Rams", "cbm");  -- Mountain West
INSERT INTO teams VALUES ("112", "217", "Fresno State Bulldogs", "far");  -- Mountain West
INSERT INTO teams VALUES ("112", "402", "Nevada Wolf Pack", "nak");  -- Mountain West
INSERT INTO teams VALUES ("112", "404", "New Mexico Lobos", "nam");  -- Mountain West
INSERT INTO teams VALUES ("112", "498", "San Diego State Aztecs", "sae");  -- Mountain West
INSERT INTO teams VALUES ("111", "500", "San Jose State Spartans", "sag");  -- Mountain West
INSERT INTO teams VALUES ("112", "401", "UNLV Runnin' Rebels", "naj");  -- Mountain West
INSERT INTO teams VALUES ("112", "611", "Utah State Aggies", "uaf");  -- Mountain West
INSERT INTO teams VALUES ("112", "661", "Wyoming Cowboys", "wbk");  -- Mountain West

-- Northeast
INSERT INTO confs VALUES ("1", "32", "Northeast");
INSERT INTO teams VALUES ("32", "1594", "Bryant Bulldogs", "bry");  -- Northeast
INSERT INTO teams VALUES ("32", "102", "Central Connecticut State Blue Devils", "cao");  -- Northeast
INSERT INTO teams VALUES ("32", "200", "Fairleigh Dickinson Knights", "faa");  -- Northeast
INSERT INTO teams VALUES ("32", "309", "LIU Brooklyn Blackbirds", "lal");  -- Northeast
INSERT INTO teams VALUES ("32", "378", "Mount St. Mary's Mountaineers", "mbs");  -- Northeast
INSERT INTO teams VALUES ("32", "489", "Robert Morris Colonials", "rah");  -- Northeast
INSERT INTO teams VALUES ("32", "1118", "Sacred Heart Pioneers", "sdy");  -- Northeast
INSERT INTO teams VALUES ("32", "532", "St. Francis Brooklyn Terriers", "sbn");  -- Northeast
INSERT INTO teams VALUES ("32", "533", "Saint Francis U Red Flash", "sbo");  -- Northeast
INSERT INTO teams VALUES ("32", "627", "Wagner Seahawks", "wac");  -- Northeast

-- Ohio Valley
INSERT INTO confs VALUES ("1", "23", "OVC");
INSERT INTO teams VALUES ("23", "32", "Austin Peay Governors", "abf");  -- Ohio Valley - West
INSERT INTO teams VALUES ("23", "47", "Belmont Bruins", "bab");  -- Ohio Valley - East
INSERT INTO teams VALUES ("23", "179", "Eastern Illinois Panthers", "ead");  -- Ohio Valley - West
INSERT INTO teams VALUES ("23", "180", "Eastern Kentucky Colonels", "eae");  -- Ohio Valley - East
INSERT INTO teams VALUES ("23", "284", "Jacksonville State Gamecocks", "jae");  -- Ohio Valley - East
INSERT INTO teams VALUES ("23", "375", "Morehead State Eagles", "mbp");  -- Ohio Valley - East
INSERT INTO teams VALUES ("23", "381", "Murray State Racers", "mbv");  -- Ohio Valley - West
INSERT INTO teams VALUES ("23", "1196", "SIUE Cougars", "saw");  -- Ohio Valley - West
INSERT INTO teams VALUES ("23", "509", "Southeast Missouri State Redhawks", "sap");  -- Ohio Valley - West
INSERT INTO teams VALUES ("23", "582", "Tennessee State Tigers", "tai");  -- Ohio Valley - East
INSERT INTO teams VALUES ("23", "583", "Tennessee Tech Golden Eagles", "taj");  -- Ohio Valley - East
INSERT INTO teams VALUES ("23", "578", "UT Martin Skyhawks", "tae");  -- Ohio Valley - West

-- Pac-12
INSERT INTO confs VALUES ("1", "2", "PAC-12");
INSERT INTO teams VALUES ("2", "17", "Arizona Wildcats", "aaq");  -- Pac-12
INSERT INTO teams VALUES ("2", "18", "Arizona State Sun Devils", "aar");  -- Pac-12
INSERT INTO teams VALUES ("2", "95", "California Golden Bears", "cah");  -- Pac-12
INSERT INTO teams VALUES ("2", "125", "Colorado Buffaloes", "cbl");  -- Pac-12
INSERT INTO teams VALUES ("2", "449", "Oregon Ducks", "oaj");  -- Pac-12
INSERT INTO teams VALUES ("2", "450", "Oregon State Beavers", "oak");  -- Pac-12
INSERT INTO teams VALUES ("2", "545", "Stanford", "sca");  -- Pac-12
INSERT INTO teams VALUES ("2", "606", "UCLA Bruins", "uaa");  -- Pac-12
INSERT INTO teams VALUES ("2", "609", "USC Trojans", "uad");  -- Pac-12
INSERT INTO teams VALUES ("2", "610", "Utah Runnin' Utes", "uae");  -- Pac-12
INSERT INTO teams VALUES ("2", "630", "Washington Huskies", "waf");  -- Pac-12
INSERT INTO teams VALUES ("2", "632", "Washington State Cougars", "wah");  -- Pac-12

-- Patriot League
INSERT INTO confs VALUES ("1", "24", "Patriot League");
INSERT INTO teams VALUES ("24", "14", "American University Eagles", "aan");  -- Patriot League
INSERT INTO teams VALUES ("24", "24", "Army Black Knights", "aax");  -- Patriot League
INSERT INTO teams VALUES ("24", "59", "Boston University Terriers", "ban");  -- Patriot League
INSERT INTO teams VALUES ("24", "66", "Bucknell Bison", "bau");  -- Patriot League
INSERT INTO teams VALUES ("24", "124", "Colgate Raiders", "cbk");  -- Patriot League
INSERT INTO teams VALUES ("24", "253", "Holy Cross Crusaders", "hal");  -- Patriot League
INSERT INTO teams VALUES ("24", "298", "Lafayette Leopards", "laa");  -- Patriot League
INSERT INTO teams VALUES ("24", "303", "Lehigh Mountain Hawks", "laf");  -- Patriot League
INSERT INTO teams VALUES ("24", "392", "Navy Midshipmen", "naa");  -- Patriot League

-- SEC
INSERT INTO confs VALUES ("1", "10", "SEC");
INSERT INTO teams VALUES ("10", "6", "Alabama Crimson Tide", "aaf");  -- Southeastern
INSERT INTO teams VALUES ("10", "19", "Arkansas Razorbacks", "aas");  -- Southeastern
INSERT INTO teams VALUES ("10", "28", "Auburn Tigers", "abb");  -- Southeastern
INSERT INTO teams VALUES ("10", "210", "Florida Gators", "fak");  -- Southeastern
INSERT INTO teams VALUES ("10", "230", "Georgia Bulldogs", "gaf");  -- Southeastern
INSERT INTO teams VALUES ("10", "292", "Kentucky Wildcats", "kaf");  -- Southeastern
INSERT INTO teams VALUES ("10", "319", "LSU Tigers", "lav");  -- Southeastern
INSERT INTO teams VALUES ("10", "366", "Mississippi State Bulldogs", "mbg");  -- Southeastern
INSERT INTO teams VALUES ("10", "367", "Missouri Tigers", "mbh");  -- Southeastern
INSERT INTO teams VALUES ("10", "365", "Ole Miss Rebels", "mbf");  -- Southeastern
INSERT INTO teams VALUES ("10", "525", "South Carolina Gamecocks", "sbf");  -- Southeastern
INSERT INTO teams VALUES ("10", "580", "Tennessee Volunteers", "tag");  -- Southeastern
INSERT INTO teams VALUES ("10", "587", "Texas A&M Aggies", "tan");  -- Southeastern
INSERT INTO teams VALUES ("10", "615", "Vanderbilt Commodores", "vac");  -- Southeastern

-- Southern
INSERT INTO confs VALUES ("1", "29", "Southern");
INSERT INTO teams VALUES ("29", "16", "Appalachian State Mountaineers", "aap");  -- Southern
INSERT INTO teams VALUES ("29", "581", "Chattanooga Mocs", "cdc");  -- Southern
INSERT INTO teams VALUES ("29", "134", "Citadel Bulldogs", "cbv");  -- Southern
INSERT INTO teams VALUES ("29", "156", "Davidson Wildcats", "dad");  -- Southern
INSERT INTO teams VALUES ("29", "195", "Elon Phoenix", "eat");  -- Southern
INSERT INTO teams VALUES ("29", "220", "Furman Paladins", "fau");  -- Southern
INSERT INTO teams VALUES ("29", "226", "Georgia Southern Eagles", "gab");  -- Southern
INSERT INTO teams VALUES ("29", "496", "Samford Bulldogs", "sac");  -- Southern
INSERT INTO teams VALUES ("29", "396", "UNCG Spartans", "nae");  -- Southern
INSERT INTO teams VALUES ("29", "644", "Western Carolina Catamounts", "wat");  -- Southern
INSERT INTO teams VALUES ("29", "659", "Wofford Terriers", "wbi");  -- Southern

-- Southland
INSERT INTO confs VALUES ("1", "28", "Southland");
INSERT INTO teams VALUES ("28", "36", "Abilene Christian Wildcats", "abilene_christian");
INSERT INTO teams VALUES ("28", "1262", "Central Arkansas Bears", "cdm");  -- Southland
INSERT INTO teams VALUES ("28", "255", "Houston Baptist Huskies", "hba");  -- Southland
INSERT INTO teams VALUES ("28", "1528", "Incarnate Word Cardinals", "incarnate_word");
INSERT INTO teams VALUES ("28", "299", "Lamar Cardinals", "lab");  -- Southland
INSERT INTO teams VALUES ("28", "345", "McNeese State Cowboys", "mal");  -- Southland
INSERT INTO teams VALUES ("28", "406", "New Orleans Privateers", "nao");
INSERT INTO teams VALUES ("28", "409", "Nicholls Colonels", "nar");  -- Southland
INSERT INTO teams VALUES ("28", "422", "Northwestern State Demons", "nbe");  -- Southland
INSERT INTO teams VALUES ("28", "448", "Oral Roberts Golden Eagles", "oai");  -- Southland
INSERT INTO teams VALUES ("28", "495", "Sam Houston State Bearkats", "sab");  -- Southland
INSERT INTO teams VALUES ("28", "506", "Southeastern Louisiana Lions", "sam");  -- Southland
INSERT INTO teams VALUES ("28", "547", "Stephen F. Austin Lumberjacks", "scc");  -- Southland
INSERT INTO teams VALUES ("28", "1231", "Texas A&M-Corpus Christi Islanders", "tbq");  -- Southland

-- SWAC
INSERT INTO confs VALUES ("1", "105", "SWAC");
INSERT INTO teams VALUES ("105", "1037", "Alabama A&M Bulldogs", "aag");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "8", "Alabama State Hornets", "aah");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "10", "Alcorn State Braves", "aaj");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "35", "UAPB Golden Lions", "abi");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "234", "Grambling State Tigers", "gak");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "280", "Jackson State Tigers", "jaa");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "364", "Mississippi Valley State Delta Devils", "mbe");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "468", "Prairie View A&M Panthers", "pao");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "241", "Southern University Jaguars", "sbh");  -- Southwestern Athletic
INSERT INTO teams VALUES ("105", "591", "Texas Southern Tigers", "tar");  -- Southwestern Athletic

-- Summit League
INSERT INTO confs VALUES ("1", "194", "Summit League");
INSERT INTO teams VALUES ("194", "163", "Denver Pioneers", "dak");  -- Summit
INSERT INTO teams VALUES ("194", "932", "IPFW Mastodons", "iav");  -- Summit
INSERT INTO teams VALUES ("194", "1090", "IUPUI Jaguars", "iak");  -- Summit
INSERT INTO teams VALUES ("194", "1337", "Nebraska Omaha Mavericks", "neo");  -- Summit
INSERT INTO teams VALUES ("194", "1455", "North Dakota State Bison", "nds");  -- Summit
INSERT INTO teams VALUES ("194", "1458", "South Dakota Coyotes", "say");  -- Summit
INSERT INTO teams VALUES ("194", "1472", "South Dakota State Jackrabbits", "sds");  -- Summit
INSERT INTO teams VALUES ("194", "638", "Western Illinois Leathernecks", "wan");  -- Summit

-- Sun Belt
INSERT INTO confs VALUES ("1", "5", "Sun Belt");
INSERT INTO teams VALUES ("5", "22", "Arkansas State Red Wolves", "aav");  -- Sun Belt
INSERT INTO teams VALUES ("5", "20", "UALR Trojans", "aat");  -- Sun Belt
INSERT INTO teams VALUES ("5", "231", "Georgia State Panthers", "gag");  -- Sun Belt
INSERT INTO teams VALUES ("5", "550", "Louisiana Ragin' Cajuns", "scf");  -- Sun Belt
INSERT INTO teams VALUES ("5", "399", "Louisiana-Monroe Warhawks", "nah");  -- Sun Belt
INSERT INTO teams VALUES ("5", "524", "South Alabama Jaguars", "sbe");  -- Sun Belt
INSERT INTO teams VALUES ("5", "552", "Texas State Bobcats", "sch");  -- Sun Belt
INSERT INTO teams VALUES ("5", "588", "UT Arlington Mavericks", "tao");  -- Sun Belt
INSERT INTO teams VALUES ("5", "596", "Troy Trojans", "taw");  -- Sun Belt
INSERT INTO teams VALUES ("5", "639", "Western Kentucky Hilltoppers", "wao");  -- Sun Belt

-- West Coast
INSERT INTO confs VALUES ("1", "110", "West Coast");
INSERT INTO teams VALUES ("110", "68", "BYU Cougars", "baw");  -- West Coast
INSERT INTO teams VALUES ("110", "233", "Gonzaga Bulldogs", "gaj");  -- West Coast
INSERT INTO teams VALUES ("110", "317", "Loyola Marymount Lions", "lat");  -- West Coast
INSERT INTO teams VALUES ("110", "455", "Pacific Tigers", "pab");  -- West Coast
INSERT INTO teams VALUES ("110", "461", "Pepperdine Waves", "pah");  -- West Coast
INSERT INTO teams VALUES ("110", "467", "Portland Pilots", "pan");  -- West Coast
INSERT INTO teams VALUES ("110", "538", "Saint Mary's Gaels", "sbt");  -- West Coast
INSERT INTO teams VALUES ("110", "497", "San Diego Toreros", "sad");  -- West Coast
INSERT INTO teams VALUES ("110", "499", "San Francisco Dons", "saf");  -- West Coast
INSERT INTO teams VALUES ("110", "502", "Santa Clara Broncos", "sai");  -- West Coast

-- WAC
INSERT INTO confs VALUES ("1", "111", "WAC");
INSERT INTO teams VALUES ("111", "1105", "CSU Bakersfield Roadrunners", "ccm");  -- Western Athletic
INSERT INTO teams VALUES ("111", "112", "Chicago State Cougars", "cay");  -- Western Athletic
INSERT INTO teams VALUES ("111", "237", "Grand Canyon Antelopes", "grand_canyon");
INSERT INTO teams VALUES ("111", "263", "Idaho Vandals", "iaa");  -- Western Athletic
INSERT INTO teams VALUES ("111", "405", "New Mexico State Aggies", "nan");  -- Western Athletic
INSERT INTO teams VALUES ("111", "507", "Seattle Redhawks", "san");  -- Western Athletic
INSERT INTO teams VALUES ("111", "601", "Texas-Pan American Broncs", "tbc");  -- Western Athletic
INSERT INTO teams VALUES ("111", "368", "UMKC Kangaroos", "mbi");  -- Western Athletic
INSERT INTO teams VALUES ("111", "1424", "Utah Valley Wolverines", "uvs");  -- Western Athletic

-- NON-D1 TEAMS.
-- THIS IS AN ABSOLUTE MESS THANKS TO Y! SUCKING.
-- THEY HAVE 0 CONSISTENCY WITH CONFERENCES AND EVERYTHING IS BROKEN.
-- WE CLUMP ALL OF THESE INTO A "NON-D1" CONFERENCE.
INSERT INTO confs VALUES ("2", "31337", "NON-D1");
INSERT INTO teams VALUES ("31337", "1481", "Maine-Farmington Beavers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1571", "Upsala Vikings", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1574", "Roosevelt Lakers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1596", "Westmar Eagles", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1621", "Acadia Axemen", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1622", "Dalhousie Tigers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1652", "George Williams", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1723", "Dubuque Spartans", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1727", "Rockmont College", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1739", "Wesley Warriors", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1742", "Racine College", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1743", "Purdue-Calumet Peregrines", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1745", "Alliance College", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1747", "Spring Garden", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1769", "Bacone Warriors", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1782", "Lethbridge Pronghorns", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1792", "Southwest Mustangs", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1839", "Barber-Scotia Sabers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1843", "Indiana-Kokomo Cougars", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1853", "Virginia-Lynchburg Dragons", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1855", "Presentation Saints", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1871", "Johnson Royals", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1873", "Bethesda Flames", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "117", "Claflin Panthers", "");
INSERT INTO teams VALUES ("31337", "132", "Covenant Scots", "");
INSERT INTO teams VALUES ("31337", "147", "Campbellsville Tigers", "");
INSERT INTO teams VALUES ("31337", "167", "Doane Tigers", "");
INSERT INTO teams VALUES ("31337", "259", "Huston-Tillotson Rams", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "296", "King Tornado", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "362", "Milligan Buffaloes", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "391", "Montreat Cavaliers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "43", "Lyon Scots", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "510", "Shorter Hawks", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "647", "Wiley Wildcats", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "669", "Montana-Western Bulldogs", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "671", "Westmont Warriors", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "823", "Lambuth Eagles", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "849", "Marian Knights", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "856", "Embry-Riddle Eagles", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "873", "Grace Lancers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "895", "Michigan-Dearborn Wolves", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "912", "Selma Bulldogs", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "916", "Emmanuel Lions", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1692", "Western Ontario Mustangs", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1724", "Amherst Lord Jeffs", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1725", "Moorhead State Dragons", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1726", "Federal City College", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1728", "McPherson College Bulldogs", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1744", "Bethany College Swedes", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1749", "Mississippi Industrial College", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1794", "Trinity (FL) Tigers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1808", "Hiwassee College Tigers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1820", "Victory University Comets", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1827", "Concordia College Hornets", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1828", "Trinity Baptist Eagles", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1851", "Northwest Indian Eagles", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1854", "Crown College Storm", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1856", "Portland Bible Wildcats", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1859", "Worcester State Lancers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1861", "Northwood (TX) Knights", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1864", "Dalton State Roadrunners", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1865", "Salve Regina Seahawks", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1866", "Chestnut Hill Griffins", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1870", "Clearwater Christian Cougars", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1872", "Columbia International Rams", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1877", "Open Bible Bruins", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1878", "Southwestern Adventist Knights", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1009", "California Baptist Lancers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1023", "Asbury College Eagles", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1027", "Cumberland University Bulldogs", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "142", "Cardinal Stritch Wolves", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "151", "Virginia-Wise Highland Cavaliers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "196", "Edward Waters Tigers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "29", "Augusta College Jaguars", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "329", "Loyola (LA) Wolfpack", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "385", "Montana Tech Orediggers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "40", "Azusa Pacific Cougars", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "412", "North Georgia Saints", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "513", "Simon Fraser Clan", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "568", "Vanguard University Lions", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "593", "Texas Wesleyan Rams", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "600", "Texas College Steers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "602", "Tennessee Temple Crusaders", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "789", "Williams Baptist Eagles", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "808", "Sue Bennett Dragons", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "80", "Brewton-Parker College Barons", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "817", "Southern Wesleyan Warriors", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "81", "Bryan College Lions", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "826", "Bethel (TN) Wildcats", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "836", "Fresno Pacific Sunbirds", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "875", "Virginia Intermont Cobras", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "886", "Webber International Warriors", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "889", "Berry College Vikings", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "892", "Berea College Mountaineers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "903", "Olivet Nazarene Tigers", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "905", "William Carey Crusaders", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "917", "Martin Methodist RedHawks", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1655", "Milton", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1720", "Parsons", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1748", "Bishop", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "896", "Black Hills State Yellow Jackets", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "82", "Baptist Christian College Warriors", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1786", "Walla Walla Community College Warriors", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1817", "Johnson &amp; Wales (NC) Wildcats", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1656", "Johnson &amp; Wales (CO) Wildcats", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1765", "Johnson &amp; Wales (FL) Wildcats", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1473", "Hillsdale Free Will Baptist Saints", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "137", "Carroll (MT) Fighting Saints", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "906", "Palm Beach Atlantic Sailfish", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "331", "Louisiana Christian Runnin' Royals", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1523", "Pittsburgh-Bradford Panthers", "");  --  Allegheny Mountain Collegiate Conference
INSERT INTO teams VALUES ("31337", "1684", "Frostburg State Bobcats", "");  --  Allegheny Mountain Collegiate Conference
INSERT INTO teams VALUES ("31337", "1710", "Medaille College Mavericks", "");  --  Allegheny Mountain Collegiate Conference
INSERT INTO teams VALUES ("31337", "1187", "Penn State-Behrend Lions", "");  -- Allegheny Mountain Collegiate Conference
INSERT INTO teams VALUES ("31337", "1532", "Myers Mustangs", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1565", "Walsh Cavaliers", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1612", "Daemen Wildcats", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1663", "Malone Pioneers", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1512", "Point Park Pioneers", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1531", "Geneva Golden Tornadoes", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1480", "Harris-Stowe Hornets", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1787", "Hannibal-LaGrange Trojans", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1053", "McKendree Bearcats", "");  -- American Midwest
INSERT INTO teams VALUES ("31337", "1134", "Viterbo V-Hawks", "");  -- American Midwest
INSERT INTO teams VALUES ("31337", "1359", "Cedarville Yellow Jackets", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1711", "Illinois-Springfield Prairie Stars", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1770", "William Woods Owls", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1848", "Benedictine Springfield Bulldogs", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1175", "Missouri Baptist Spartans", "");  -- American Midwest
INSERT INTO teams VALUES ("31337", "855", "McMurry War Hawks", "");  -- American South
INSERT INTO teams VALUES ("31337", "101", "Centenary Gentlemen", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1170", "LeTourneau YellowJackets", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1232", "Texas-Dallas Comets", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "243", "Hardin-Simmons Cowboys", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "571", "Schreiner Mountaineers", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1552", "Mississippi College Choctaws", "");  --  American Southwest Conference
INSERT INTO teams VALUES ("31337", "1069", "Louisiana College Wildcats", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1119", "Austin College Kangaroos", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1288", "Texas Lutheran Bulldogs", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "830", "Mary Hardin-Baylor Crusaders", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1868", "Truett-McConnell Bears", "");  --  Appalachian Athletic Conference
INSERT INTO teams VALUES ("31337", "1302", "Union College Bulldogs", "");  --  Appalachian Athletic Conference
INSERT INTO teams VALUES ("31337", "1335", "Brevard College Tornados", "");  --  Appalachian Athletic Conference
INSERT INTO teams VALUES ("31337", "1364", "University of Great Falls Argonauts", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1126", "Truman Bulldogs", "");  -- Arkansas Intercollegiate
INSERT INTO teams VALUES ("31337", "1783", "Univ. of Science and Arts (OK) Drovers", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1041", "North Carolina Wesleyan Battling Bishops", "");  -- USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "1085", "Northwest Missouri State Bearcats", "");  -- Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "493", "Rocky Mountain Battlin' Bears", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1779", "Concordia University-St. Paul Golden Bears", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1067", "Ohio Northern Polar Bears", "");  -- Ohio Athletic
INSERT INTO teams VALUES ("31337", "913", "St. Ambrose Fighting Bees", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1736", "Savannah Art and Design Bees", "");  --  Florida Sun
INSERT INTO teams VALUES ("31337", "938", "Ohio Wesleyan Battling Bishops", "");  -- North Coast Athletic
INSERT INTO teams VALUES ("31337", "1741", "Lincoln University of Missouri Blue Tigers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1165", "St. Thomas (FL) Bobcats", "");  -- Florida Sun
INSERT INTO teams VALUES ("31337", "1457", "College of the Ozarks Bobcats", "");  --  Midlands Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1487", "Georgia College &amp; State Bobcats", "");  --  Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "635", "West Texas A&amp;M Buffaloes", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1660", "Johnson C. Smith Golden Bulls", "");  --  Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1050", "Cal State-Chico Wildcats", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1147", "California-San Diego Tritons", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "523", "Sonoma State Seawolves", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "902", "Cal State-Stanislaus Warriors", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "90", "Cal Poly-Pomona Broncos", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1381", "William Jessup Warriors", "");  --  California Pacific
INSERT INTO teams VALUES ("31337", "1712", "California Maritime Keelhaulers", "");  --  California Pacific
INSERT INTO teams VALUES ("31337", "1832", "California Merced Bobcats", "");  --  California Pacific
INSERT INTO teams VALUES ("31337", "1837", "Pacific Union Pioneers", "");  --  California Pacific
INSERT INTO teams VALUES ("31337", "1477", "Stevenson Mustangs", "");  --  Capital Athletic
INSERT INTO teams VALUES ("31337", "1681", "Goucher Gophers", "");  --  Capital Athletic
INSERT INTO teams VALUES ("31337", "1616", "Salisbury Sea Gulls", "");  --  Capital Athletic
INSERT INTO teams VALUES ("31337", "1649", "York (PA) Spartans", "");  --  Capital Athletic
INSERT INTO teams VALUES ("31337", "1693", "Gallaudet University Bison", "");  --  Capital Athletic
INSERT INTO teams VALUES ("31337", "1133", "Mary Washington Eagles", "");  -- Capital Athletic
INSERT INTO teams VALUES ("31337", "1040", "Limestone Saints", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "115", "Coker Cobras", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "1204", "Pfeiffer Falcons", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "330", "Lees-McRae Bobcats", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "1098", "Anderson (SC) Trojans", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "1120", "Belmont Abbey Crusaders", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "1237", "Queens University Royals", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "192", "Erskine Flying Fleet", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "379", "Mount Olive Trojans", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "48", "Barton College Bulldogs", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "1641", "Corban Warriors", "");  --  Cascade Collegiate
INSERT INTO teams VALUES ("31337", "238", "Gettysburg Bullets", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "260", "Haverford Fords", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "557", "Swarthmore Garnet", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "807", "Ursinus Bears", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "884", "Muhlenberg Mules", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "1396", "Oklahoma Wesleyan Eagles", "");  --  Centennial
INSERT INTO teams VALUES ("31337", "625", "Washington College Shoremen", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "883", "Dickinson Red Devils", "");  -- Centennial
INSERT INTO teams VALUES ("31337", "1366", "Nyack Warriors", "");  --  Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "1195", "Caldwell Cougars", "");  -- Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "1241", "Bloomfield Deacons", "");  -- Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "1703", "Philadelphia Sciences Devils", "");  --  Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "1754", "Holy Family Tigers", "");  --  Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "1193", "Dominican (NY) Chargers", "");  -- Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "643", "Wilmington (DE) Wildcats", "");  -- Central Atlantic Collegiate Conference
INSERT INTO teams VALUES ("31337", "1107", "Shaw Bears", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1462", "St. Augustine Falcons", "");  --  Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1086", "Livingstone Blue Bears", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1131", "Virginia Union Panthers", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1132", "Virginia State Trojans", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1276", "Fayetteville State Broncos", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "85", "Bowie State Bulldogs", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1615", "Judson Eagles", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1821", "Purdue-Calumet Peregrines", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1823", "Roosevelt Lakers", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1619", "North Park Vikings", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1785", "Purdue-North Central Panthers", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1849", "Trinity Christian Trolls", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1191", "Kendall College Vikings", "");  -- Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1461", "CUNY-Brooklyn Bridges", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1608", "Lehman Lightning", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1609", "Hunter Hawks", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1672", "Baruch Bearcats", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1379", "John Jay Bloodhounds", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1491", "Brooklyn College Bridges", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1669", "York (NY) Cardinals", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "1145", "Medgar Evers Cougars", "");  -- City University of New Yo
INSERT INTO teams VALUES ("31337", "1168", "Staten Island Dolphins", "");  -- City University of New Yo
INSERT INTO teams VALUES ("31337", "1329", "North Central Cardinals", "");  --  College Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "1708", "Wheaton (IL) Thunder", "");  --  College Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "1192", "Augustana (IL) Vikings", "");  -- College Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "1807", "Gwynedd-Mercy Griffins", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1816", "Neumann Knights", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1714", "Alvernia College Crusaders", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1822", "Cairn University Highlanders", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1846", "Rosemont College Ravens", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1875", "Baptist Bible Defenders", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1876", "Immaculata Mighty Macs", "");  --  Colonial States Athletic Conference
INSERT INTO teams VALUES ("31337", "1389", "Curry Colonels", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1467", "Moravian Greyhounds", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1522", "Messiah Falcons", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1838", "Wentworth Leopards", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1850", "Colby-Sawyer Chargers", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "738", "Nichols Bison", "");  -- Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1852", "Eastern Nazarene Lions", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1367", "Juniata Eagles", "");  --  Commonwealth Conference
INSERT INTO teams VALUES ("31337", "1042", "Albright Lions", "");  -- Commonwealth Conference
INSERT INTO teams VALUES ("31337", "651", "Widener Pioneers", "");  -- Commonwealth Conference
INSERT INTO teams VALUES ("31337", "1627", "Susquehanna University Crusaders", "");  --  Commonwealth Conference
INSERT INTO teams VALUES ("31337", "1647", "Elizabethtown Blue Jays", "");  --  Commonwealth Conference
INSERT INTO teams VALUES ("31337", "188", "Elmhurst Bluejays", "");  -- Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "1421", "Illinois Wesleyan Titans", "");  --  Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "1284", "Carthage Red Men", "");  -- Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "750", "Millikin Big Blue", "");  -- Conference of Illinois &amp; Wisconsin
INSERT INTO teams VALUES ("31337", "1299", "Spring Arbor College Cougars", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1153", "St. Francis (IN) Cougars", "");  -- Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1831", "Cal State San Marcos Cougars", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1267", "Concordia University (IL) Cougars", "");  -- Northern Illinois-Iowa Conference
INSERT INTO teams VALUES ("31337", "1174", "New Mexico Highlands Cowboys", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "833", "University of the Cumberlands Patriots", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1547", "Mayville State Comets", "");  --  Dakota Athletic Conference
INSERT INTO teams VALUES ("31337", "1588", "Huron Screaming Eagles", "");  --  Dakota Athletic Conference
INSERT INTO teams VALUES ("31337", "1755", "Minot State Beavers", "");  --  Dakota Athletic Conference
INSERT INTO teams VALUES ("31337", "1789", "Dakota State Trojans", "");  --  Dakota Athletic Conference
INSERT INTO teams VALUES ("31337", "1806", "New Hope Christian College Deacons", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1378", "Maine-Machias Clippers", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1441", "Houghton Highlanders", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1446", "LSU-Shreveport Pilots", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1054", "Phillips Haymakers", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1062", "Southwestern Moundbuilders", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1116", "Northwest Eagles", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1129", "McMaster Marauders", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1149", "Calgary Dinos", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1158", "Cascade Thunderbirds", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1162", "Talladega Tornadoes", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1163", "Auburn-Montgomery Senators", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1272", "Reinhardt Eagles", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1304", "Pikeville College Bears", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1309", "St. Vincent Bearcats", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1317", "IU-South Bend Titans", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1318", "Atlantic Christian Chargers", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1326", "Concordia (MI) Cardinals", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1334", "Ohio Dominican Panthers", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1340", "Briar Cliff Chargers", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1345", "Georgia Southwestern Hurricanes", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1354", "Wayland Baptist Pioneers", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1361", "Western Montana Bulldogs", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1368", "Taylor University Trojans", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1369", "Kentucky Christian Knights", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1377", "Maine-Fort Kent Bengals", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1388", "Aquinas College Saints", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1401", "Central Baptist Mustangs", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1427", "Texas A&amp;M-International Dustdevils", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1444", "Texas-Permian Basin Falcons", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1035", "Southwest Adventist Knights", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1049", "Jarvis Christian Bulldogs", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1064", "American (PR) Pirates", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1065", "Missouri Valley Vikings", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1095", "Bay Ridge Eagles", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1104", "Master's College Mustangs", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1113", "Maine-Presque Isle Owls", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1121", "Bethel (IN) Pilots", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1125", "Central Methodist Eagles", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1127", "Toccoa Falls Eagles", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1138", "Philander Smith Panthers", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1144", "Lewis-Clark State Warriors", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1171", "National Christian Eagles", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1221", "Mount Aloysius Mounties", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1233", "Oklahoma City Stars", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1269", "Siena Heights Saints", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1626", "Oklahoma Arts &amp; Sciences Drovers", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1226", "Lebanon Valley Flying Dutchmen", "");  -- Commonwealth Conference
INSERT INTO teams VALUES ("31337", "813", "Concordia University (CA) Eagles", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "898", "John Brown Golden Eagles", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1080", "Robert Morris (IL) Eagles", "");  -- Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1738", "University of the Ozarks Eagles", "");  --  American Southwest Conference
INSERT INTO teams VALUES ("31337", "1409", "Cal State-Los Angeles Golden Eagles", "");  --  California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1815", "La Sierra University Golden Eagles", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "436", "Northeastern Illinois Golden Eagles", "");  -- Summit
INSERT INTO teams VALUES ("31337", "1533", "Adelphi Panthers", "");  --  East Coast
INSERT INTO teams VALUES ("31337", "1407", "NYU Violets", "");  --  ECAC Metro
INSERT INTO teams VALUES ("31337", "1484", "Brandeis University Judges", "");  --  ECAC Metro
INSERT INTO teams VALUES ("31337", "1372", "Hartwick Hawks", "");  --  Empire 8
INSERT INTO teams VALUES ("31337", "1504", "Utica Pioneers", "");  --  Empire 8
INSERT INTO teams VALUES ("31337", "1685", "Alfred Saxons", "");  --  Empire 8
INSERT INTO teams VALUES ("31337", "1244", "Ithaca Bombers", "");  -- Empire 8
INSERT INTO teams VALUES ("31337", "189", "Elmira Soaring Eagles", "");  -- Empire 8
INSERT INTO teams VALUES ("31337", "1688", "RIT Tigers", "");  --  Empire Athletic
INSERT INTO teams VALUES ("31337", "1047", "Voorhees College Tigers", "");  -- Empire Athletic
INSERT INTO teams VALUES ("31337", "1135", "St. Francis (IL) Fighting Saints", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1606", "Warner Royals", "");  --  Florida Sun
INSERT INTO teams VALUES ("31337", "1653", "Florida Memorial Lions", "");  --  Florida Sun
INSERT INTO teams VALUES ("31337", "1735", "Northwood (FL) Seahawks", "");  --  Florida Sun
INSERT INTO teams VALUES ("31337", "1036", "Faith Baptist (LA) Force", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1398", "FDU-Florham Devils", "");  --  Freedom Conference
INSERT INTO teams VALUES ("31337", "1425", "Lycoming Warriors", "");  --  Freedom Conference
INSERT INTO teams VALUES ("31337", "1580", "DeSales Bulldogs", "");  --  Freedom Conference
INSERT INTO teams VALUES ("31337", "1648", "Wilkes Colonels", "");  --  Freedom Conference
INSERT INTO teams VALUES ("31337", "1201", "Scranton Royals", "");  -- Freedom Conference
INSERT INTO teams VALUES ("31337", "1152", "Drew University Rangers", "");  -- Freedom Conference
INSERT INTO teams VALUES ("31337", "1235", "Delaware Valley Aggies", "");  -- Freedom Conference
INSERT INTO teams VALUES ("31337", "1339", "Montana State-Northern Lights", "");  --  Frontier
INSERT INTO teams VALUES ("31337", "1478", "Western Montana Bulldogs", "");  --  Frontier
INSERT INTO teams VALUES ("31337", "544", "San Francisco State Gators", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "909", "Washington &amp; Lee Generals", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "901", "West Virginia Tech Golden Bears", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1629", "St. Joseph's (NY-Long Island) Golden Eagles", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1603", "Biola Eagles", "");  --  Golden State Conference
INSERT INTO teams VALUES ("31337", "1482", "Hope International Royals", "");  --  Golden State Conference
INSERT INTO teams VALUES ("31337", "1320", "Mercyhurst Lakers", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1439", "Findlay Oilers", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1128", "Hillsdale Chargers", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "44", "Ashland Eagles", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1414", "Gannon Golden Knights", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1490", "Indianapolis University Greyhounds", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1841", "Lake Erie Storm", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1034", "Northern Michigan Wildcats", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1250", "Northwood (MI) Timberwolves", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "203", "Ferris State Bulldogs", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "383", "Michigan Tech Huskies", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1311", "Lewis Flyers", "");  --  Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1413", "Bellarmine Knights", "");  --  Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1217", "Quincy Hawks", "");  -- Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "774", "Wisconsin-Parkside Rangers", "");  -- Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1418", "Kentucky Wesleyan Panthers", "");  --  Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1456", "Missouri-St. Louis Tritons", "");  --  Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1390", "Suffolk Rams", "");  --  Great Northeast Athletic Conference
INSERT INTO teams VALUES ("31337", "1577", "Norwich Cadets", "");  --  Great Northeast Athletic Conference
INSERT INTO teams VALUES ("31337", "1761", "Daniel Webster Eagles", "");  --  Great Northeast Athletic Conference
INSERT INTO teams VALUES ("31337", "1790", "Albertus Magnus Falcons", "");  --  Great Northeast Athletic Conference
INSERT INTO teams VALUES ("31337", "1258", "Southern Vermont Mountaineers", "");  -- Great Northeast Athletic Conference
INSERT INTO teams VALUES ("31337", "4", "Alaska-Anchorage Seawolves", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "5", "Alaska-Fairbanks Nanooks", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "1051", "Humboldt State Lumberjacks", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "1117", "Northwest Nazarene Crusaders", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "1123", "Western Washington Vikings", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "1160", "Seattle Pacific Falcons", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "138", "Central Washington Wildcats", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "537", "St. Martin's Saints", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "641", "Western Oregon Wolves", "");  -- Great Northwest Athletic Conference
INSERT INTO teams VALUES ("31337", "1642", "Mount Marty Lancers", "");  --  Great Plains
INSERT INTO teams VALUES ("31337", "1677", "Hastings College Broncos", "");  --  Great Plains
INSERT INTO teams VALUES ("31337", "1788", "Midland Lutheran Warriors", "");  --  Great Plains
INSERT INTO teams VALUES ("31337", "1074", "Piedmont Lions", "");  -- Great South
INSERT INTO teams VALUES ("31337", "1298", "Eastern New Mexico Greyhounds", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1336", "Harding Bison", "");  --  Gulf South Conference
INSERT INTO teams VALUES ("31337", "1014", "Alabama-Huntsville Chargers", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1057", "Mobile Rams", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1071", "Tougaloo Bulldogs", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1091", "Montevallo Falcons", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1306", "Southern Arkansas Muleriders", "");  --  Gulf South Conference
INSERT INTO teams VALUES ("31337", "1333", "North Alabama Lions", "");  --  Gulf South Conference
INSERT INTO teams VALUES ("31337", "1380", "Spring Hill Badgers", "");  --  Gulf South Conference
INSERT INTO teams VALUES ("31337", "1139", "Christian Brothers Buccaneers", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1206", "Ouachita Baptist Tigers", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1213", "West Georgia Braves", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1252", "Dillard Bleu Devils", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1295", "Delta State Statesmen", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1296", "Valdosta State Blazers", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "21", "Arkansas-Monticello Boll Weevils", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "563", "Southern-New Orleans Knights", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "706", "Henderson State Reddies", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "708", "West Florida Argonauts", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "904", "West Alabama Tigers", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "911", "Lincoln Memorial Railsplitters", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1450", "Oakwood Ambassadors", "");  --  Gulf Star
INSERT INTO teams VALUES ("31337", "1155", "Illinois Tech Scarlet Hawks", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1260", "Dickinson State Blue Hawks", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1760", "Simpson University (CA) Red Hawks", "");  --  California Pacific
INSERT INTO teams VALUES ("31337", "1344", "Transylvania Pioneers", "");  --  Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1411", "Franklin Grizzlies", "");  --  Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1476", "Bluffton Beavers", "");  --  Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1625", "Manchester Spartans", "");  --  Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "777", "Hanover Panthers", "");  -- Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1351", "Defiance Yellow Jackets", "");  --  Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1799", "Arkansas-Fort Smith Lions", "");  --  Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "42", "Anderson (IN) Ravens", "");  -- Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1530", "Drury Panthers", "");  --  Heartland Conference
INSERT INTO teams VALUES ("31337", "1097", "Rockhurst Hawks", "");  -- Heartland Conference
INSERT INTO teams VALUES ("31337", "1695", "Wabash Little Giants", "");  --  Heartland Conference
INSERT INTO teams VALUES ("31337", "554", "St. Edwards Hilltoppers", "");  -- Heartland Conference
INSERT INTO teams VALUES ("31337", "1507", "Lindenwood Lions", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1636", "Avila Eagles", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1637", "Avila Eagles", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1639", "Evangel Crusaders", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1676", "Culver-Stockton Wildcats", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1679", "Baker Wildcats", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1879", "Graceland Yellowjackets", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1584", "William Jewell Cardinals", "");  --  Heart of America
INSERT INTO teams VALUES ("31337", "1185", "New Jersey AC Highlanders", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1314", "Vanguard Lions", "");  --  Independent Athletic
INSERT INTO teams VALUES ("31337", "1189", "Wilberforce Bulldogs", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1197", "Brescia Bearcats", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1209", "Flagler Saints", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1210", "Patten Lions", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1234", "Knoxville Bulldogs", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1263", "Jamestown Jimmies", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1266", "Bellevue Bruins", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1268", "Langston Lions", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1300", "Arkansas Baptist Buffaloes", "");  --  Independent Athletic
INSERT INTO teams VALUES ("31337", "1315", "Bethany (CA) Bruins", "");  --  Independent Athletic
INSERT INTO teams VALUES ("31337", "1178", "Concordia (OR) Cavaliers", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1179", "Evergreen State Geoducks", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1190", "William Penn Statesmen", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1198", "Trevecca Nazarene Trojans", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1199", "Spalding Golden Eagles", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1205", "Southern Virginia Knights", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1212", "Lubbock Christian Chaparrals", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1216", "Urbana Blue Knights", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1218", "Rochester (MI) Warriors", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1242", "Dallas Christian Crusaders", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1245", "Westminster (UT) Griffins", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1247", "Holy Names Hawks", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1251", "Athens State Bears", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1257", "Sioux Falls Cougars", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1264", "Warren Wilson Owls", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1265", "Shawnee State Bears", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1297", "Warner Pacific Knights", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1430", "LaGrange Panthers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1448", "Texas-Tyler Patriots", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1597", "Earl Paulk", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1599", "Paine Lions", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1601", "Pratt Cannoneers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1624", "Alaska Pacific", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1638", "Dana Vikings", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1646", "Ambassador n/a", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1650", "Barber-Scotia Sabers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1670", "Friendship n/a", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1687", "Tahoe n/a", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1691", "Barat n/a", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1730", "Rhema Eagles", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1756", "Ecclesia Royals", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1858", "Finlandia Lions", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1089", "Northland LumberJacks", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "110", "Chapman Panthers", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1150", "Stillman Tigers", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1172", "Huntingdon Hawks", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1211", "Menlo Oaks", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1253", "Birmingham-Southern Panthers", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "603", "Tiffin Dragons", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "605", "Tri-State Thunder", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "835", "Minnesota-Morris Cougars", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1499", "Dallas Baptist Patriots", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1524", "Pittsburgh-Johnstown Mountain Cats", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1554", "Point University Chargers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1628", "Puerto Rico-Cayey Toros", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1635", "Chapman (KS) n/a", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1645", "Bethel (KS) Threshers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1675", "Phillips (MS) Haymakers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1686", "Toronto Varsity Blues", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1694", "Franciscan University Barons", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1699", "Silver Lake Lakers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1700", "St. Scholastica Saints", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1701", "Brock University Badgers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1702", "St. Bernard Saints", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1706", "Southern Benedictine xxx", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1717", "Marygrove College Mustangs", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1729", "Washington Adventist Shock", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1734", "East-West University Phantoms", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1753", "Ohio Christian Trailblazers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1757", "Carver College Cougars", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1759", "Florida College Falcons", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1766", "Morris College Hornets", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1778", "Indiana-Northwest Red Hawks", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1797", "Arizona Christian Firestorm", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1801", "Washington Adventist Pioneers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1824", "Arlington Baptist Patriots", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1829", "Pacifica College Gladiators", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1061", "Puerto Rico-Mayaguez Tarzanes", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1083", "Eastern Oregon Mountaineers", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1114", "Fisk University Bulldogs", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1156", "Central State Marauders", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1215", "Rust College Bearcats", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1223", "Puerto Rico-Bayamon Vaqueros", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1259", "Green Mountain Eagles", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1271", "Southeastern University Fire", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "12", "Allen Yellow Jackets", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "135", "Colorado College Tigers", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "308", "Lincoln (PA) Lions", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "914", "North Greenville Crusaders", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1573", "U.S. International Gulls", "");  --  Independents
INSERT INTO teams VALUES ("31337", "386", "Morris Brown Wolverines", "");  -- Independents
INSERT INTO teams VALUES ("31337", "1387", "Coe Kohawks", "");  --  Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1431", "Simpson Storm", "");  --  Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1559", "Loras Duhawks", "");  --  Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1651", "Luther Norse", "");  --  Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1704", "Central Dutch", "");  --  Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1293", "Wartburg Knights", "");  -- Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1445", "Cornell College Rams", "");  --  Iowa Intercollegiate Athletics Conference
INSERT INTO teams VALUES ("31337", "1173", "Howard Payne Yellow Jackets", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1275", "American International Yellow Jackets", "");  -- Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1124", "College of New Jersey Lions", "");  -- New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1811", "Tabor College Bluejays", "");  --  Kansas Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1844", "Saint Mary Spires", "");  --  Kansas Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1111", "Indiana-Southeast Grenadiers", "");  -- Kentucky Intercollegiate Athletic
INSERT INTO teams VALUES ("31337", "1767", "Indiana-East Red Wolves", "");  --  Kentucky Intercollegiate Athletic
INSERT INTO teams VALUES ("31337", "530", "St. Andrews Presbyterian Knights", "");  -- Carolinas-Virginia Athletics Conference
INSERT INTO teams VALUES ("31337", "1774", "Academy of Art Urban Knights", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1610", "New Jersey City Gothic Knights", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1592", "Mount Saint Mary Blue Knights", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1100", "St. Rose Golden Knights", "");  -- Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "541", "St. Michael's Purple Knights", "");  -- Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1280", "Lakeland Muskies", "");  -- Lake Michigan Conference
INSERT INTO teams VALUES ("31337", "1077", "Wisconsin Lutheran Warriors", "");  -- Lake Michigan Conference
INSERT INTO teams VALUES ("31337", "236", "Grand Valley State Lakers", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1819", "Our Lady of the Lake Saints", "");  --  Red River Athletic Conference
INSERT INTO teams VALUES ("31337", "1403", "RPI Engineers", "");  --  Liberty League
INSERT INTO teams VALUES ("31337", "1108", "Skidmore Thoroughbreds", "");  -- Liberty League
INSERT INTO teams VALUES ("31337", "942", "Vassar Brewers", "");  -- Liberty League
INSERT INTO teams VALUES ("31337", "1188", "Union (NY) Dutchmen", "");  -- Liberty League
INSERT INTO teams VALUES ("31337", "1292", "Mount St. Joseph Lions", "");  -- Heartland Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1402", "Southwestern Assemblies of God Lions", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1341", "Point Loma Nazarene Sea Lions", "");  --  Golden State Conference
INSERT INTO teams VALUES ("31337", "1835", "Penn State Abington Nittany Lions", "");  --  North Eastern Athletic
INSERT INTO teams VALUES ("31337", "146", "Colorado-Colorado Springs Mountain Lions", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1560", "Massachusetts-Boston Beacons", "");  --  Little East
INSERT INTO teams VALUES ("31337", "1541", "Southern Maine Huskies", "");  --  Little East
INSERT INTO teams VALUES ("31337", "1542", "Plymouth State Panthers", "");  --  Little East
INSERT INTO teams VALUES ("31337", "1142", "Keene State Owls", "");  -- Little East
INSERT INTO teams VALUES ("31337", "1287", "Sul Ross State Lobos", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "918", "Cameron Aggies", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1371", "Texas A&amp;M-Commerce Lions", "");  --  Lone Star Conference
INSERT INTO teams VALUES ("31337", "1529", "East Central Tigers", "");  --  Lone Star Conference
INSERT INTO teams VALUES ("31337", "1582", "Northeastern State RiverHawks", "");  --  Lone Star Conference
INSERT INTO teams VALUES ("31337", "1056", "Tarleton State Texans", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1101", "Central Oklahoma Bronchos", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1136", "Midwestern State Mustangs", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "15", "Angelo State Rams", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "707", "Texas A&M-Kingsville Javelinas", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1842", "College of Coastal Georgia Mariners", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1479", "US Merchant Marine Academy Mariners", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "622", "Virginia Wesleyan Blue Marlins", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1521", "Salem State Vikings", "");  --  Massachusetts State College Athletic Conference
INSERT INTO teams VALUES ("31337", "1840", "Arcadia University Knights", "");  --  Massachusetts State College Athletic Conference
INSERT INTO teams VALUES ("31337", "1194", "Westfield State Owls", "");  -- Massachusetts State College Athletic Conference
INSERT INTO teams VALUES ("31337", "1357", "Adrian Bulldogs", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1440", "Albion Britons", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1722", "Kalamazoo Hornets", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1798", "Alma Scots", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1620", "Hope Flying Dutchmen", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1661", "Calvin College Knights", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1847", "Olivet College Comets", "");  --  Michigan Intercollegiate Athletic Association
INSERT INTO teams VALUES ("31337", "721", "Washburn Ichabods", "");  -- Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1305", "Southwest Baptist Bearcats", "");  --  Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1349", "Goshen Maple Leafs", "");  --  Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1358", "Central Missouri Mules", "");  --  Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1072", "Indiana Wesleyan Wildcats", "");  -- Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1148", "Emporia State Hornets", "");  -- Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "920", "Pittsburg State Gorillas", "");  -- Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1469", "Huntington Foresters", "");  --  Mid Central College
INSERT INTO teams VALUES ("31337", "1604", "Grand View Vikings", "");  --  Mid Central College
INSERT INTO teams VALUES ("31337", "1486", "Cincinnati Christian Eagles", "");  --  Mid-East Region
INSERT INTO teams VALUES ("31337", "1678", "Newman Jets", "");  --  Midlands Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1709", "Peru State Bobcats", "");  --  Midlands Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1737", "Haskell Fighting Indians", "");  --  Midlands Collegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1780", "St. Catharine Patriots", "");  --  Mid South
INSERT INTO teams VALUES ("31337", "1278", "Georgetown (KY) Tigers", "");  -- Mid South
INSERT INTO teams VALUES ("31337", "1697", "Lawrence Vikings", "");  --  Midwest Classic Conference
INSERT INTO teams VALUES ("31337", "1527", "Iowa Wesleyan Tigers", "");  --  Midwest Classic Conference
INSERT INTO teams VALUES ("31337", "1654", "Lake Forest Foresters", "");  --  Midwest Classic Conference
INSERT INTO teams VALUES ("31337", "1731", "Waldorf College Warriors", "");  --  Midwest Classic Conference
INSERT INTO teams VALUES ("31337", "1386", "Grinnell Pioneers", "");  --  Midwest Conference
INSERT INTO teams VALUES ("31337", "1395", "Beloit College Buccaneers", "");  --  Midwest Conference
INSERT INTO teams VALUES ("31337", "1587", "Knox Prairie Fire", "");  --  Midwest Conference
INSERT INTO teams VALUES ("31337", "1662", "Carroll (WI) Pioneers", "");  --  Midwest Conference
INSERT INTO teams VALUES ("31337", "1214", "Ripon Red Hawks", "");  -- Midwest Conference
INSERT INTO teams VALUES ("31337", "279", "Illinois College Blueboys", "");  -- Midwest Conference
INSERT INTO teams VALUES ("31337", "1809", "South Dakota School of Mines Hardrockers", "");  --  Dakota Athletic Conference
INSERT INTO teams VALUES ("31337", "900", "Colorado School of Mines Orediggers", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1338", "Macalester Scots", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1391", "Hamline Pipers", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1602", "Carleton Knights", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1225", "Augsburg Auggies", "");  -- Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1665", "St. Olaf Oles", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "53", "Bethel (MN) Royals", "");  -- Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "433", "North Adams State Mohawks", "");  -- 0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1183", "Western Colorado State Mountaineers", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1079", "Southwest Minnesota State Mustangs", "");  -- Northern Illinois Interco
INSERT INTO teams VALUES ("31337", "665", "Western New Mexico Mustangs", "");  -- Pacific West Conference
INSERT INTO teams VALUES ("31337", "1038", "Notre Dame de Namur Argonauts", "");  -- Northern California Athle
INSERT INTO teams VALUES ("31337", "1598", "Bates Bobcats", "");  --  New England Collegiate Co
INSERT INTO teams VALUES ("31337", "1874", "Wheelock Wildcats", "");  --  New England Collegiate Co
INSERT INTO teams VALUES ("31337", "1825", "Lesley University Lynx", "");  --  New England Collegiate Co
INSERT INTO teams VALUES ("31337", "1078", "La Roche Redhawks", "");  -- New England Collegiate Co
INSERT INTO teams VALUES ("31337", "1092", "Southern Oregon Raiders", "");  -- New England Collegiate Co
INSERT INTO teams VALUES ("31337", "1093", "Oklahoma Baptist Prophets", "");  -- New England Collegiate Co
INSERT INTO teams VALUES ("31337", "1410", "Williams Ephs", "");  --  New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "1633", "Wesleyan Cardinals", "");  --  New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "1122", "Tufts Jumbos", "");  -- New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "360", "Middlebury Panthers", "");  -- New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "1433", "Colby White Mules", "");  --  New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "1046", "Connecticut College Camels", "");  -- New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "1222", "Bowdoin Polar Bears", "");  -- New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "802", "Trinity (CT) Bantams", "");  -- New England Small College Athletic Conference
INSERT INTO teams VALUES ("31337", "1406", "Springfield Pride", "");  --  New England Women's &amp; Men's Athletics Conference
INSERT INTO teams VALUES ("31337", "1520", "MIT Engineers", "");  --  New England Women's &amp; Men's Athletics Conference
INSERT INTO teams VALUES ("31337", "1561", "Clark Cougars", "");  --  New England Women's &amp; Men's Athletics Conference
INSERT INTO teams VALUES ("31337", "1375", "Worcester Tech Engineers", "");  --  New England Women's &amp; Men's Athletics Conference
INSERT INTO teams VALUES ("31337", "798", "Coast Guard Bears", "");  -- New England Women's &amp; Men's Athletics Conference
INSERT INTO teams VALUES ("31337", "83", "Babson College Beavers", "");  -- New England Women's &amp; Men's Athletics Conference
INSERT INTO teams VALUES ("31337", "1569", "Stockton Ospreys", "");  --  New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1634", "Rowan Profs", "");  --  New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1640", "Ramapo Roadrunners", "");  --  New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1177", "Kean Cougars", "");  -- New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1539", "William Paterson Pioneers", "");  --  New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1707", "Rutgers-Camden Scarlet Raptors", "");  --  New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1538", "Southampton Colonials", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1674", "Molloy Lions", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1376", "Philadelphia University Rams", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1400", "Concordia (NE) Bulldogs", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1590", "Mercy College Mavericks", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1611", "LIU-C.W. Post Pioneers", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1671", "Queens College Knights", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1254", "Dowling Golden Lions", "");  -- New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1255", "Bridgeport Purple Knights", "");  -- New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1270", "New Haven Chargers", "");  -- New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1576", "Nebraska Wesleyan Prairie Wolves", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1583", "College of Santa Fe", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1719", "Monterrey Tech Borregos Salvajes", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1740", "George Fox University Bruins", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1764", "The Apprentice School Builders", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1771", "Northern New Mexico Eagles", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1772", "Maryland Bible College Eagles", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1773", "Grace Bible College Tigers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1812", "Central Pennsylvania College Knights", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1818", "Crowley's Ridge College Pioneers", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1826", "Pensacola Christian College Eagles", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1862", "Saint Katherine College Firebirds", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1867", "Bob Jones University Bruins", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1833", "Penn State Altoona Lions", "");  --  Allegheny Mountain Collegiate Conference
INSERT INTO teams VALUES ("31337", "1546", "Mount Vernon Nazarene Cougars", "");  --  America Mideast
INSERT INTO teams VALUES ("31337", "1673", "Cal State-San Bernardino Coyotes", "");  --  California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1536", "Oregon Tech Hustlin' Owls", "");  --  Cascade Collegiate
INSERT INTO teams VALUES ("31337", "1382", "Johns Hopkins Blue Jays", "");  --  Centennial
INSERT INTO teams VALUES ("31337", "1465", "Franklin &amp; Marshall Diplomats", "");  --  Centennial
INSERT INTO teams VALUES ("31337", "1570", "St. Xavier (IL) Cougars", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1732", "Calumet College Crimson Wave", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1805", "Robert Morris (IL-Spr) Eagles", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1845", "Holy Cross (IN) Saints", "");  --  Chicagoland Collegiate At
INSERT INTO teams VALUES ("31337", "1307", "New England College Pilgrims", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1451", "New England University Nor'easters", "");  --  Commonwealth Coast Confer
INSERT INTO teams VALUES ("31337", "1733", "Valley City State Vikings", "");  --  Dakota Athletic Conference
INSERT INTO teams VALUES ("31337", "1308", "College of Idaho Coyotes", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1365", "Gulf Coast CC Commodores", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1428", "Northwestern Oklahoma State Rangers", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1435", "University of Mary Marauders", "");  --  Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1515", "St. John Fisher Cardinals", "");  --  Empire 8
INSERT INTO teams VALUES ("31337", "1416", "King's College (PA) Monarchs", "");  --  Freedom Conference
INSERT INTO teams VALUES ("31337", "1705", "San Diego Christian Hawks", "");  --  Golden State Conference
INSERT INTO teams VALUES ("31337", "1426", "Saginaw Valley State Cardinals", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1489", "Lake Superior State Lakers", "");  --  Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1540", "Southern Indiana Screaming Eagles", "");  --  Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1303", "Arkansas Tech Wonder Boys", "");  --  Gulf South Conference
INSERT INTO teams VALUES ("31337", "1438", "Oklahoma Panhandle State Aggies", "");  --  Heartland Conference
INSERT INTO teams VALUES ("31337", "1781", "Lincoln (MO) Blue Tigers", "");  --  Heartland Conference
INSERT INTO teams VALUES ("31337", "1325", "St. Mary's (MI) Cardinals", "");  --  Independent Athletic
INSERT INTO teams VALUES ("31337", "1429", "Maryville (TN) Fighting Scots", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1447", "University of Dallas Crusaders", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1496", "District of Columbia Firebirds", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1553", "St. Joseph's (ME) Monks", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1578", "Puerto Rico-Rio Piedras Gallitos", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1607", "Sacred Heart (PR) Dolphins", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1664", "King's College (NY) n/a", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1690", "St. Thomas (TX) Celts", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1715", "Mountain State University Cougars", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1716", "Florida Christian College Suns", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1768", "Champion Baptist College Tigers", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1803", "St. Joseph's (NY-Brooklyn) Bears", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1804", "Walla Walla University Wolves", "");  --  Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1758", "Alice Lloyd College Eagles", "");  --  Kentucky Intercollegiate Athletic
INSERT INTO teams VALUES ("31337", "1404", "Concordia University (WI) Falcons", "");  --  Lake Michigan Conference
INSERT INTO teams VALUES ("31337", "1397", "Rhode Island College Anchormen", "");  --  Little East
INSERT INTO teams VALUES ("31337", "1682", "Southwestern Oklahoma State Bulldogs", "");  --  Lone Star Conference
INSERT INTO teams VALUES ("31337", "1510", "Missouri Southern State Lions", "");  --  Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1511", "Missouri Western State Griffons", "");  --  Mid-America Intercollegia
INSERT INTO teams VALUES ("31337", "1836", "Lindsey Wilson Blue Raiders", "");  --  Mid South
INSERT INTO teams VALUES ("31337", "1415", "St. Norbert Green Knights", "");  --  Midwest Conference
INSERT INTO teams VALUES ("31337", "1328", "Concordia College (MN) Cobbers", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1525", "St. Mary's (MN) Cardinals", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1579", "St. John's (MN) Johnnies", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1721", "Gustavus Adolphus Golden Gusties", "");  --  Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "1591", "Montclair State Red Hawks", "");  --  New Jersey Athletic
INSERT INTO teams VALUES ("31337", "1405", "Concordia College (NY) Clippers", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1492", "St. Thomas Aquinas Spartans", "");  --  New York Collegiate Athle
INSERT INTO teams VALUES ("31337", "1352", "Castleton State College Spartans", "");  --  North Atlantic
INSERT INTO teams VALUES ("31337", "1775", "Mount Ida College Mustangs", "");  --  North Atlantic
INSERT INTO teams VALUES ("31337", "1623", "St. Cloud State Huskies", "");  --  North Central Intercolleg
INSERT INTO teams VALUES ("31337", "1495", "Southern Connecticut State Owls", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1614", "Southern New Hampshire Penmen", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1373", "Wayne State (NE) Wildcats", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1346", "Mount Union Purple Raiders", "");  --  Ohio Athletic
INSERT INTO teams VALUES ("31337", "1463", "John Carroll Blue Streaks", "");  --  Ohio Athletic
INSERT INTO teams VALUES ("31337", "1342", "North Carolina Pembroke Braves", "");  --  Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1857", "Young Harris Mountain Lions", "");  --  Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1316", "Lock Haven Bald Eagles", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1460", "West Chester Golden Rams", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1605", "Indiana (PA) Crimson Hawks", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1555", "NYU-Poly Fighting Blue Jays", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1659", "Mount Saint Vincent Dolphins", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1595", "Southern Nazarene Crimson Storm", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1331", "Albany State Golden Rams", "");  --  Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1355", "Fort Valley State Wildcats", "");  --  Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1551", "Fredonia State Blue Devils", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1689", "Oneonta State Red Dragons", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1360", "Westminster (MO) Blue Jays", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1763", "Blue Mountain College Toppers", "");  --  TranSouth
INSERT INTO teams VALUES ("31337", "1503", "Case Western Reserve Spartans", "");  --  University Athletic Association
INSERT INTO teams VALUES ("31337", "1312", "Charleston Univ Golden Eagles", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1348", "Bluefield State Big Blues", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1566", "Fairmont State Fighting Falcons", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1631", "West Liberty State Hilltoppers", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1667", "West Virginia Wesleyan Bobcats", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1793", "Salem International Fighting Tigers", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1814", "Cornerstone University Golden Eagles", "");  --  Wolverine-Hoosier
INSERT INTO teams VALUES ("31337", "847", "Husson Eagles", "");  -- North Atlantic
INSERT INTO teams VALUES ("31337", "998", "Thomas Terriers", "");  -- North Atlantic
INSERT INTO teams VALUES ("31337", "1718", "Lasell College Lasers", "");  --  North Atlantic
INSERT INTO teams VALUES ("31337", "1802", "Lyndon State Hornets", "");  --  North Atlantic
INSERT INTO teams VALUES ("31337", "1544", "Wittenberg Tigers", "");  --  North Central Intercolleg
INSERT INTO teams VALUES ("31337", "1289", "Morningside Mustangs", "");  -- North Central Intercolleg
INSERT INTO teams VALUES ("31337", "1586", "Augustana (SD) Vikings", "");  --  North Central Intercolleg
INSERT INTO teams VALUES ("31337", "1501", "Allegheny Gators", "");  --  North Coast Athletic
INSERT INTO teams VALUES ("31337", "1545", "Earlham Quakers", "");  --  North Coast Athletic
INSERT INTO teams VALUES ("31337", "294", "Kenyon Lords", "");  -- North Coast Athletic
INSERT INTO teams VALUES ("31337", "897", "Hiram Terriers", "");  -- North Coast Athletic
INSERT INTO teams VALUES ("31337", "1751", "Oberlin College Yeomen", "");  --  North Coast Athletic
INSERT INTO teams VALUES ("31337", "772", "Wooster Fighting Scots", "");  -- North Coast Athletic
INSERT INTO teams VALUES ("31337", "894", "Denison Big Red", "");  -- North Coast Athletic
INSERT INTO teams VALUES ("31337", "1572", "Baltimore Super Bees", "");  --  Northeast
INSERT INTO teams VALUES ("31337", "1417", "Stonehill Skyhawks", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1494", "Assumption Greyhounds", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1513", "Pace Setters", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1519", "Merrimack Warriors", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1613", "Bentley Falcons", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1575", "Le Moyne Dolphins", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1658", "Franklin Pierce Ravens", "");  --  Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "880", "St. Anselm Hawks", "");  -- Northeast 10 Conference
INSERT INTO teams VALUES ("31337", "1657", "Purchase Panthers", "");  --  North Eastern Athletic
INSERT INTO teams VALUES ("31337", "1202", "Keuka Storm", "");  -- North Eastern Athletic
INSERT INTO teams VALUES ("31337", "1796", "SUNY-Cobleskill Fighting Tigers", "");  --  North Eastern Athletic
INSERT INTO teams VALUES ("31337", "1475", "Benedictine Eagles", "");  --  Northern Illinois-Iowa Conference
INSERT INTO teams VALUES ("31337", "31", "Aurora Spartans", "");  -- Northern Illinois-Iowa Conference
INSERT INTO teams VALUES ("31337", "1301", "Rockford College Regents", "");  --  Northern Illinois-Iowa Conference
INSERT INTO teams VALUES ("31337", "1154", "Dominican (IL) Stars", "");  -- Northern Illinois-Iowa Conference
INSERT INTO teams VALUES ("31337", "1449", "Minnesota-Duluth Bulldogs", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1437", "Minnesota-Crookston Golden Eagles", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1537", "Minnesota State-Mankato Mavericks", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1558", "Bemidji State Beavers", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1585", "Winona State Warriors", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1713", "Upper Iowa Peacocks", "");  --  Northern Sun Intercollegiate Conference
INSERT INTO teams VALUES ("31337", "1322", "Willamette Bearcats", "");  --  Northwest Conference
INSERT INTO teams VALUES ("31337", "1362", "Linfield Wildcats", "");  --  Northwest Conference
INSERT INTO teams VALUES ("31337", "1184", "Whitworth Pirates", "");  -- Northwest Conference
INSERT INTO teams VALUES ("31337", "675", "Whitman Missionaries", "");  -- Northwest Conference
INSERT INTO teams VALUES ("31337", "1423", "Puget Sound Loggers", "");  --  Northwest Conference
INSERT INTO teams VALUES ("31337", "1810", "George Fox Bruins", "");  --  Northwest Conference
INSERT INTO teams VALUES ("31337", "454", "Pacific Lutheran Lutes", "");  -- Northwest Conference
INSERT INTO teams VALUES ("31337", "476", "Pacific (OR) Boxers", "");  -- Northwest Conference
INSERT INTO teams VALUES ("31337", "451", "Oakland City Mighty Oaks", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1343", "Marietta Pioneers", "");  --  Ohio Athletic
INSERT INTO teams VALUES ("31337", "1550", "Otterbein Cardinals", "");  --  Ohio Athletic
INSERT INTO teams VALUES ("31337", "1146", "Capital Crusaders", "");  -- Ohio Athletic
INSERT INTO teams VALUES ("31337", "1617", "Muskingum Fighting Muskies", "");  --  Ohio Athletic
INSERT INTO teams VALUES ("31337", "1073", "Benedictine (KS) Ravens", "");  -- Ohio Athletic
INSERT INTO teams VALUES ("31337", "250", "Heidelberg Student Princes", "");  -- Ohio Athletic
INSERT INTO teams VALUES ("31337", "646", "Wilmington (OH) Quakers", "");  -- Ohio Athletic
INSERT INTO teams VALUES ("31337", "780", "Baldwin-Wallace Yellow Jackets", "");  -- Ohio Athletic
INSERT INTO teams VALUES ("31337", "1488", "Notre Dame College of Ohio Falcons", "");  --  American Midwest
INSERT INTO teams VALUES ("31337", "1399", "Roanoke Maroons", "");  --  Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1464", "Hampden-Sydney Tigers", "");  --  Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1159", "Guilford Quakers", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "325", "Lynchburg Hornets", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1795", "Randolph College Wildcats", "");  --  Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1246", "Bridgewater (VA) Eagles", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "806", "Randolph-Macon Yellow Jackets", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "910", "Eastern Mennonite Royals", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1230", "Cal State-Monterey Bay Otters", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1696", "Hawaii-Loa N/A", "");  --  Pacific West Conference
INSERT INTO teams VALUES ("31337", "105", "Chaminade Silverswords", "");  -- Pacific West Conference
INSERT INTO teams VALUES ("31337", "1063", "Hawaii-Hilo Vulcans", "");  -- Pacific West Conference
INSERT INTO teams VALUES ("31337", "1200", "BYU-Hawaii Seasiders", "");  -- Pacific West Conference
INSERT INTO teams VALUES ("31337", "1323", "Dominican (CA) Penguins", "");  --  Pacific West Conference
INSERT INTO teams VALUES ("31337", "1750", "Dixie State Rebels", "");  --  Pacific West Conference
INSERT INTO teams VALUES ("31337", "888", "Montana State-Billings Yellowjackets", "");  -- Pacific West Conference
INSERT INTO teams VALUES ("31337", "1353", "Lander Bearcats", "");  --  Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1549", "Columbus State Cougars", "");  --  Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1137", "Francis Marion Patriots", "");  -- Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1181", "Augusta State Jaguars", "");  -- Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1238", "Clayton State Lakers", "");  -- Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "23", "Armstrong Atlantic Pirates", "");  -- Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "558", "South Carolina-Aiken Pacers", "");  -- Peach Belt Athletic
INSERT INTO teams VALUES ("31337", "1500", "Millersville Marauders", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1509", "Cheyney Wolves", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1518", "Mansfield Mountaineers", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1630", "Bloomsburg Huskies", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1157", "Marywood Pacers", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1443", "Cabrini College Cavaliers", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1468", "Eastern University Eagles", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1568", "Edinboro Fighting Scots", "");  --  Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1099", "Kutztown Golden Bears", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1106", "California (PA) Vulcans", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1110", "Wesley College Wolverines", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1166", "East Stroudsburg Warriors", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "1290", "Clarion Golden Eagles", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "514", "Slippery Rock Rock", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "717", "Shippensburg Red Raiders", "");  -- Pennsylvania Athletic
INSERT INTO teams VALUES ("31337", "114", "Cal State-East Bay Pioneers", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "305", "Lewis &amp; Clark Pioneers", "");  -- Northwest Conference
INSERT INTO teams VALUES ("31337", "1483", "Thiel College Tomcats", "");  --  Presidents Athletic Conference
INSERT INTO teams VALUES ("31337", "1680", "Westminster (PA) Titans", "");  --  Presidents Athletic Conference
INSERT INTO teams VALUES ("31337", "84", "Bethany (WV) Bison", "");  -- Presidents Athletic Conference
INSERT INTO teams VALUES ("31337", "915", "Washington &amp; Jefferson Presidents", "");  -- Presidents Athletic Conference
INSERT INTO teams VALUES ("31337", "1055", "St. Joseph's (IN) Pumas", "");  -- Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1043", "Bluefield College Ramblin' Rams", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1087", "St. Mary's (TX) Rattlers", "");  -- Heartland Conference
INSERT INTO teams VALUES ("31337", "574", "Thomas More Blue Rebels", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1076", "Johnson &amp; Wales (RI) Wildcats", "");  -- Great Northeast Athletic Conference
INSERT INTO teams VALUES ("31337", "1228", "Nebraska-Kearney Antelopes", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "484", "Regis Rangers", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1330", "Fort Lewis Skyhawks", "");  --  Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1453", "Metro State Roadrunners", "");  --  Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1564", "Chadron State Eagles", "");  --  Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1180", "Colorado Mesa Mavericks", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1248", "Colorado Christian Cougars", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "573", "Colorado State-Pueblo ThunderWolves", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "728", "Western State Mountaineers", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "1236", "Southern Polytechnic State Runnin' Hornets", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1088", "Xavier (LA) Gold Rush", "");  -- Gulf South Conference
INSERT INTO teams VALUES ("31337", "1164", "St. Joseph (VT) Saints", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1239", "Mount Senario Fighting Saints", "");  -- Independent Athletic
INSERT INTO teams VALUES ("31337", "1274", "Southeastern Oklahoma State Savage Storm", "");  -- Lone Star Conference
INSERT INTO teams VALUES ("31337", "1082", "Monmouth (IL) Fighting Scots", "");  -- Midwest Conference
INSERT INTO teams VALUES ("31337", "1059", "Ohio Valley Fighting Scots", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "539", "St. Mary's (MD) Seahawks", "");  -- Capital Athletic
INSERT INTO teams VALUES ("31337", "1182", "Davis &amp; Elkins Senators", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1327", "Maritime Privateers", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1394", "Manhattanville Valiants", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1436", "Old Westbury Panthers", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1800", "Farmingdale State Rams", "");  --  Skyline Conference
INSERT INTO teams VALUES ("31337", "1070", "Centenary (NJ) Cyclones", "");  -- Skyline Conference
INSERT INTO teams VALUES ("31337", "1229", "Stevens Tech Ducks", "");  -- Skyline Conference
INSERT INTO teams VALUES ("31337", "899", "California-Santa Cruz Banana Slugs", "");  -- Independent (Non D-1)
INSERT INTO teams VALUES ("31337", "1324", "St. Gregory's Cavaliers", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1498", "Oklahoma Christian Eagles", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1752", "Rogers State Hillcats", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1791", "Mid-America Christian Evangels", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1869", "Southwestern Christian Eagles", "");  --  Sooner Athletic Conference
INSERT INTO teams VALUES ("31337", "1039", "Wingate Bulldogs", "");  -- South Atlantic Conference
INSERT INTO teams VALUES ("31337", "1075", "Lenoir-Rhyne Bears", "");  -- South Atlantic Conference
INSERT INTO teams VALUES ("31337", "407", "Newberry Wolves", "");  -- South Atlantic Conference
INSERT INTO teams VALUES ("31337", "729", "Catawba Indians", "");  -- South Atlantic Conference
INSERT INTO teams VALUES ("31337", "878", "Tusculum Pioneers", "");  -- South Atlantic Conference
INSERT INTO teams VALUES ("31337", "99", "Carson-Newman Eagles", "");  -- South Atlantic Conference
INSERT INTO teams VALUES ("31337", "1442", "Redlands Bulldogs", "");  --  Southern California Inter
INSERT INTO teams VALUES ("31337", "1493", "Whittier Poets", "");  --  Southern California Inter
INSERT INTO teams VALUES ("31337", "1084", "Occidental Tigers", "");  -- Southern California Inter
INSERT INTO teams VALUES ("31337", "466", "Pomona-Pitzer Sagehens", "");  -- Southern California Inter
INSERT INTO teams VALUES ("31337", "1643", "Cal Lutheran Kingsmen", "");  --  Southern California Inter
INSERT INTO teams VALUES ("31337", "1644", "La Verne Leopards", "");  --  Southern California Inter
INSERT INTO teams VALUES ("31337", "1347", "Millsaps Majors", "");  --  Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1419", "DePauw Tigers", "");  --  Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1068", "Faulkner Eagles", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "893", "Centre Colonels", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "908", "Rhodes Lynx", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1363", "Trinity (TX) Tigers", "");  --  Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1683", "Hendrix College Warriors", "");  --  Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1161", "Paul Quinn Tigers", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1169", "Southwestern University Pirates", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1256", "Oglethorpe Stormy Petrels", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1526", "LeMoyne-Owen Magicians", "");  --  Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1600", "Benedict Tigers", "");  --  Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1356", "Clark Atlanta Panthers", "");  --  Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1593", "Miles Golden Bears", "");  --  Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1140", "Kentucky State Thorobreds", "");  -- Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1220", "Tuskegee Golden Tigers", "");  -- Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "737", "Morehouse Maroon Tigers", "");  -- Southern Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1045", "University of the South Tigers", "");  -- Southern Collegiate Athle
INSERT INTO teams VALUES ("31337", "1746", "University of St. Mary Spires", "");  --  0-0 (0-0)
INSERT INTO teams VALUES ("31337", "1422", "Buffalo State Bengals", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1514", "Geneseo Blue Knights", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1517", "Oswego State Lakers", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1534", "SUNY-Cortland Red Dragons", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1535", "Cortland Red Dragons", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1618", "Brockport Golden Eagles", "");  --  State University of New Y
INSERT INTO teams VALUES ("31337", "1224", "New Paltz Hawks", "");  -- State University of New Y
INSERT INTO teams VALUES ("31337", "881", "Plattsburgh State Cardinals", "");  -- State University of New Y
INSERT INTO teams VALUES ("31337", "1310", "Greenville Panthers", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1548", "MacMurray Highlanders", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1556", "Blackburn Beavers", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1813", "Fontbonne Griffins", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1151", "Webster Gorloks", "");  -- St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1776", "Eureka Red Devils", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1777", "Maryville (MO) Saints", "");  --  St. Louis Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1762", "Fisher College Falcons", "");  --  Sunrise Conference
INSERT INTO teams VALUES ("31337", "1207", "Rollins Tars", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "60", "Barry Buccaneers", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "919", "Tampa Spartans", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "1332", "Indiana Tech Warriors", "");  --  Sunshine State
INSERT INTO teams VALUES ("31337", "1516", "Eckerd College Tritons", "");  --  Sunshine State
INSERT INTO teams VALUES ("31337", "1632", "Lynn Fighting Knights", "");  --  Sunshine State
INSERT INTO teams VALUES ("31337", "1668", "Florida Southern Moccasins", "");  --  Sunshine State
INSERT INTO teams VALUES ("31337", "1081", "St. Leo Lions", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "1208", "Florida Tech Panthers", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "1243", "Lee University Flames", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "435", "Nova Southeastern Sharks", "");  -- Sunshine State
INSERT INTO teams VALUES ("31337", "1143", "Missouri Science &amp; Technology Miners", "");  -- Great Lakes Valley Confer
INSERT INTO teams VALUES ("31337", "1094", "McDaniel College Green Terror", "");  -- Dixie Intercollegiate Ath
INSERT INTO teams VALUES ("31337", "1830", "Ave Maria Gyrenes", "");  --  The Sun Conference
INSERT INTO teams VALUES ("31337", "190", "East Texas Baptist Tigers", "");  -- American Southwest Conference
INSERT INTO teams VALUES ("31337", "1227", "St. Paul's College Tigers", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "1102", "Fort Hays State Tigers", "");  -- Rocky Mountain Athletic Conference
INSERT INTO teams VALUES ("31337", "742", "St. Thomas (MN) Tommies", "");  -- Minnesota Intercollegiate
INSERT INTO teams VALUES ("31337", "123", "Cal State-Dominguez Hills Toros", "");  -- California Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1470", "Freed-Hardeman Lions", "");  --  TranSouth
INSERT INTO teams VALUES ("31337", "1370", "Union (TN) Bulldogs", "");  --  TranSouth
INSERT INTO teams VALUES ("31337", "1834", "Mid-Continent University Cougars", "");  --  TranSouth
INSERT INTO teams VALUES ("31337", "1058", "Trinity International (IL) Trojans", "");  -- Northern Illinois Interco
INSERT INTO teams VALUES ("31337", "1459", "Chicago Maroons", "");  --  University Athletic Association
INSERT INTO teams VALUES ("31337", "1109", "Rochester Yellowjackets", "");  -- University Athletic Association
INSERT INTO teams VALUES ("31337", "1261", "Emory University Eagles", "");  -- University Athletic Association
INSERT INTO teams VALUES ("31337", "663", "Washington (MO) Bears", "");  -- University Athletic Association
INSERT INTO teams VALUES ("31337", "885", "Carnegie Mellon Tartans", "");  -- University Athletic Association
INSERT INTO teams VALUES ("31337", "1096", "Hamilton Continentals", "");  -- Upstate Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "882", "Hobart Statesmen", "");  -- Upstate Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1502", "St. Lawrence Saints", "");  --  Upstate Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1249", "Clarkson Golden Knights", "");  -- Upstate Collegiate Athletic Association
INSERT INTO teams VALUES ("31337", "1434", "Chowan Hawks", "");  --  USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "1060", "Greensboro Pride", "");  -- USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "1167", "Shenandoah Hornets", "");  -- USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "1291", "Averett Cougars", "");  -- USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "353", "Methodist Monarchs", "");  -- USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "1567", "Christopher Newport Captains", "");  --  USA South Athletic Conference
INSERT INTO teams VALUES ("31337", "199", "Elizabeth City State Vikings", "");  -- Central Intercollegiate Athletics Association
INSERT INTO teams VALUES ("31337", "629", "Wayne State (MI) Warriors", "");  -- Great Lakes Intercollegia
INSERT INTO teams VALUES ("31337", "1103", "Hawaii Pacific Sea Warriors", "");  -- Pacific West Conference
INSERT INTO teams VALUES ("31337", "1141", "Emory &amp; Henry Wasps", "");  -- Old Dominion Athletic
INSERT INTO teams VALUES ("31337", "1350", "Shepherd Rams", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1589", "Alderson-Broaddus Battlers", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1497", "Wheeling Jesuit Cardinals", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1581", "Glenville State Pioneers", "");  --  West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1044", "Tennessee Wesleyan Bulldogs", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "714", "Concord Mountain Lions", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1505", "Wisconsin-Oshkosh Titans", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1562", "Wisconsin-Superior Yellowjackets", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1563", "Wisconsin-Platteville Pioneers", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1698", "Wisconsin-Whitewater Warhawks", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1466", "Wisconsin-La Crosse Eagles", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1508", "Wisconsin-Eau Claire Blugolds", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1557", "Wisconsin-Stout Blue Devils", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1666", "Wisconsin-River Falls Falcons", "");  --  Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1273", "Wisconsin-Stevens Point Pointers", "");  -- Wisconsin Intercollegiate Athletic Conference
INSERT INTO teams VALUES ("31337", "1784", "Madonna Crusaders", "");  --  Wolverine-Hoosier
INSERT INTO teams VALUES ("31337", "1485", "Davenport University Panthers", "");  --  Wolverine-Hoosier
INSERT INTO teams VALUES ("31337", "1863", "Northwestern Ohio Racers", "");  --  Wolverine-Hoosier
INSERT INTO teams VALUES ("31337", "1385", "New York City Tech Yellow Jackets", "");  --  City University of New Yo
INSERT INTO teams VALUES ("31337", "674", "West Virginia State Yellow Jackets", "");  -- West Virginia Intercolleg
INSERT INTO teams VALUES ("31337", "1408", "City College of New York Beavers", "");  --  City University of New Yo
