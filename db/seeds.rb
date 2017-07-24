require'pg'
require_relative'../models/player.rb'
require_relative'../models/league.rb'
require_relative'../models/game.rb'
require_relative'../models/corp.rb'
require_relative'../models/runner.rb'

runner1 = Runner.new('faction' => 'Shaper', 'name' => 'Ayla "Bios" Rahim: Simulant Specialist')
runner1.save
runner2 = Runner.new('faction' => 'Shaper', 'name' => 'Chaos Theory: Wünderkind')
runner2.save
runner3 = Runner.new('faction' => 'Shaper', 'name' => 'Ele "Smoke" Scovak: Cynosure of the Net')
runner3.save
runner4 = Runner.new('faction' => 'Shaper', 'name' => 'Exile: Streethawk')
runner4.save
runner5 = Runner.new('faction' => 'Shaper', 'name' => 'Hayley Kaplan: Universal Scholar')
runner5.save
runner6 = Runner.new('faction' => 'Shaper', 'name' => 'Jamie "Bzzz" Micken: Techno Savant')
runner6.save
runner7 = Runner.new('faction' => 'Shaper', 'name' => 'Jesminder Sareen: Girl Behind the Curtain')
runner7.save
runner8 = Runner.new('faction' => 'Shaper', 'name' => 'Kate "Mac" McCaffrey: Digital Tinker')
runner8.save
runner9 = Runner.new('faction' => 'Shaper', 'name' => 'Nasir Meidan: Cyber Explorer')
runner9.save
runner10 = Runner.new('faction' => 'Shaper', 'name' => 'Rielle "Kit" Peddler: Transhuman')
runner10.save
runner11 = Runner.new('faction' => 'Shaper', 'name' => 'The Professor: Keeper of Knowledge')
runner11.save
runner12 = Runner.new('faction' => 'Criminal', 'name' => 'Andromeda: Dispossessed Ristie')
runner12.save
runner13 = Runner.new('faction' => 'Criminal', 'name' => 'Armand "Geist" Walker: Tech Lord')
runner13.save
runner14 = Runner.new('faction' => 'Criminal', 'name' => 'Boris "Syfr" Kovac: Crafty Veteran')
runner14.save
runner15 = Runner.new('faction' => 'Criminal', 'name' => 'Gabriel Santiago: Consummate Professional')
runner15.save
runner16 = Runner.new('faction' => 'Criminal', 'name' => 'Iain Stirling: Retired Spook')
runner16.save
runner17 = Runner.new('faction' => 'Criminal', 'name' => 'Ken "Express" Tenma: Disappeared Clone')
runner17.save
runner18 = Runner.new('faction' => 'Criminal', 'name' => 'Khan: Savvy Skiptracer')
runner18.save
runner19 = Runner.new('faction' => 'Criminal', 'name' => 'Laramy Fisk: Savvy Investor')
runner19.save
runner20 = Runner.new('faction' => 'Criminal', 'name' => 'Leela Patel: Trained Pragmatist')
runner20.save
runner21 = Runner.new('faction' => 'Criminal', 'name' => 'Los: Data Hijacker')
runner21.save
runner22 = Runner.new('faction' => 'Criminal', 'name' => 'Nero Severn: Information Broker')
runner22.save
runner23 = Runner.new('faction' => 'Criminal', 'name' => 'Silhouette: Stealth Operative')
runner23.save
runner24 = Runner.new('faction' => 'Criminal', 'name' => 'Steve Cambridge: Master Grifter')
runner24.save
runner25 = Runner.new('faction' => 'Anarh', 'name' => 'Alice Merchant: Clan Agitator')
runner25.save
runner26 = Runner.new('faction' => 'Anarh', 'name' => 'Edward Kim: Humanity\'s Hammer')
runner26.save
runner27 = Runner.new('faction' => 'Anarh', 'name' => 'MaxX: Maximum Punk Rock')
runner27.save
runner28 = Runner.new('faction' => 'Anarh', 'name' => 'Noise: Hacker Extraordinaire')
runner28.save
runner29 = Runner.new('faction' => 'Anarh', 'name' => 'Null: Whistleblower')
runner29.save
runner30 = Runner.new('faction' => 'Anarh', 'name' => 'Omar Keung: Conspiracy Theorist')
runner30.save
runner31 = Runner.new('faction' => 'Anarh', 'name' => 'Quetzal: Free Spirit')
runner31.save
runner32 = Runner.new('faction' => 'Anarh', 'name' => 'Reina Roja: Freedom Fighter')
runner32.save
runner33 = Runner.new('faction' => 'Anarh', 'name' => 'Valencia Estevez: The Angel of Cayambe')
runner33.save
runner34 = Runner.new('faction' => 'Anarh', 'name' => 'Whizzard: Master Gamer')
runner34.save
runner35 = Runner.new('faction' => 'Anarh', 'name' => 'Wyvern: Chemically Enhanced')
runner35.save

corp1 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Cerebral Imaging: Infinite Frontiers')
corp1.save
corp2 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Custom Biotics: Engineered for Success')
corp2.save
corp3 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Cybernetics Division: Humanity Upgraded')
corp3.save
corp4 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Architects of Tomorrow')
corp4.save
corp5 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Engineering the Future')
corp5.save
corp6 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Stronger Together')
corp6.save
corp7 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'NEXT Design: Guarding the Net')
corp7.save
corp8 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Seidr Laboratories: Destiny Defined')
corp8.save
corp9 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'Strategic Innovations: Future Forward')
corp9.save
corp10 = Corp.new('faction' => 'Hass-Bioroid', 'name' => 'The Foundry: Refining the Process')
corp10.save

corp11 = Corp.new('faction' => 'Jinteki', 'name' => 'AgInfusion: New Miracles for a New World')
corp11.save
corp12 = Corp.new('faction' => 'Jinteki', 'name' => 'Chronos Protocol: Selective Mind-mapping')
corp12.save
corp13 = Corp.new('faction' => 'Jinteki', 'name' => 'Harmony Medtech: Biomedical Pioneer')
corp13.save
corp14 = Corp.new('faction' => 'Jinteki', 'name' => 'Industrial Genomics: Growing Solutions')
corp14.save
corp15 = Corp.new('faction' => 'Jinteki', 'name' => 'Jinteki Biotech: Life Imagined')
corp15.save
corp16 = Corp.new('faction' => 'Jinteki', 'name' => 'Personal Evolution')
corp16.save
corp17 = Corp.new('faction' => 'Jinteki', 'name' => 'Potential Unleashed')
corp17.save
corp18 = Corp.new('faction' => 'Jinteki', 'name' => 'Replicating Perfection')
corp18.save
corp19 = Corp.new('faction' => 'Jinteki', 'name' => 'Nisei Division: The Next Generation')
corp19.save
corp20 = Corp.new('faction' => 'Jinteki', 'name' => 'Pālanā Foods: Sustainable Growth')
corp20.save
corp21 = Corp.new('faction' => 'Jinteki', 'name' => 'Synthetic Systems: The World Re-imagined')
corp21.save
corp22 = Corp.new('faction' => 'Jinteki', 'name' => 'Tennin Institute: The Secrets Within')
corp22.save
corp23 = Corp.new('faction' => 'NBN', 'name' => 'Haarpsichord Studios: Entertainment Unleashed')
corp23.save
corp24 = Corp.new('faction' => 'NBN', 'name' => 'Harishchandra Entertainment: Where You\'re the Star')
corp24.save
corp25 = Corp.new('faction' => 'NBN', 'name' => 'Information Dynamics: All You Need To Know')
corp25.save
corp26 = Corp.new('faction' => 'NBN', 'name' => 'Controlling the Message')
corp26.save
corp27 = Corp.new('faction' => 'NBN', 'name' => 'Making News')
corp27.save
corp28 = Corp.new('faction' => 'NBN', 'name' => 'The World is Yours')
corp28.save
corp29 = Corp.new('faction' => 'NBN', 'name' => 'Near-Earth Hub: Broadcast Center')
corp29.save
corp30 = Corp.new('faction' => 'NBN', 'name' => 'New Angeles Sol: Your News')
corp30.save
corp31 = Corp.new('faction' => 'NBN', 'name' => 'Spark Agency: Worldswide Reach')
corp31.save
corp32 = Corp.new('faction' => 'NBN', 'name' => 'SYNC: Everything, Everywhere')
corp32.save
corp33 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Argus Security: Protection Guaranteed')
corp33.save
corp34 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Blue Sun: Powering the Future')
corp34.save
corp35 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Fringe Applications: Tomorrow, Today')
corp35.save
corp36 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Gagarin Deep Space: Expanding the Horizon')
corp36.save
corp37 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'GRNDL: Power Unleashed')
corp37.save
corp38 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Jemison Astronautics: Sacrifice. Audacity. Success.')
corp38.save
corp39 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Skorpios Defense Systems: Persuasive Power')
corp39.save
corp40 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Titan Transnational: Investing In Your Future')
corp40.save
corp41 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Because We Built It')
corp41.save
corp42 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Builder of Nations')
corp42.save
corp43 = Corp.new('faction' => 'Weyland Consortium', 'name' => 'Building a Better World')
corp43.save



league1 = League.new('name' => 'League 1', 'start_date' => '29-07-17', 'end_date' => '05-08-17', 'max_players' => '6')
league1.save

league2 = League.new('name' => 'League 2', 'start_date' => '29/07/17', 'end_date' => '05/08/17', 'max_players' => '6')
league2.save

player1 = Player.new('first_name' => 'Chris', 'surname' => 'Donnelly', 'tag' => 'C-d0g', 'runner_faction' => 'Shaper', 'runner_identity' => 'Kate "Mac" McCaffrey: Digital Tinker', 'corp_faction' => 'Haas-Bioroid', 'corp_identity' => 'Engineering the Future', 'league_id' => league1.id)
player1.save

player2 = Player.new('first_name' => 'Stephen', 'surname' => 'Beattie', 'tag' => 'Hanz0', 'runner_faction' => 'Anarch', 'runner_identity' => 'Noise: Hacker Extraordinaire', 'corp_faction' => 'Jinteki', 'corp_identity' => 'Personal Evolution', 'league_id' => league1.id)
player2.save

player3 = Player.new('first_name' => 'John', 'surname' => 'Harper', 'tag' => 'Harpy98','runner_faction' => 'Shaper', 'runner_identity' => 'The Professor: Keeper of Knowledge', 'corp_faction' => 'Weyland Consortium', 'corp_identity' => 'Argus Security: Protection Guaranteed', 'league_id' => league1.id)
player3.save

player4 = Player.new('first_name' => 'Alex', 'surname' => 'Bazlinton', 'tag' => 'Bazinat0r', 'runner_faction' => 'Criminal', 'runner_identity' => 'Gabriel Santiago: Consummate Professional', 'corp_faction' => 'NBN', 'corp_identity' => 'Controlling the Message', 'league_id' => league1.id)
player4.save

player5 = Player.new('first_name' => 'Keith', 'surname' => 'Douglas', 'tag' => 'R0kaBi11ie','runner_faction' => 'Anarch', 'runner_identity' => 'Omar Keung: Conspiracy Theorist', 'corp_faction' => 'Jinteki', 'corp_identity' => 'Harmony Medtech: Biomedical Pioneer', 'league_id' => league1.id)
player5.save

player6 = Player.new('first_name' => 'Stewart', 'surname' => 'MacKenzie-leigh', 'tag' => 'W33gi3', 'runner_faction' => 'Criminal', 'runner_identity' => 'Armand "Geist" Walker: Tech Lord', 'corp_faction' => 'Haas-Bioroid', 'corp_identity' => 'Architects of Tomorrow', 'league_id' => league1.id)
player6.save

player7 = Player.new('first_name' => 'Yan', 'surname' => 'Ren', 'tag' => 'RENd0d0', 'runner_faction' => 'Criminal', 'runner_identity' => 'Edward Kim: Humanitys Hammer', 'corp_faction' => 'Haas-Bioroid', 'corp_identity' => 'Stronger Together', 'league_id' => league2.id)
player7.save

player8 = Player.new('first_name' => 'Guy', 'surname' => 'Bach', 'tag' => 'RANT3R25', 'runner_faction' => 'Criminal', 'runner_identity' => 'Ken "Express" Tenma: Disappeared Clone', 'corp_faction' => 'Weyland Consortium', 'corp_identity' => 'Gagarin Deep Space: Expanding the Horizon', 'league_id' => league2.id)
player8.save

player9 = Player.new('first_name' => 'Derek', 'surname' => 'Middlemiss', 'tag' => 'D3L-B0y', 'runner_faction' => 'Anarch', 'runner_identity' => 'Whizzard: Master Gamer', 'corp_faction' => 'Weyland Consortium', 'corp_identity' => 'Blue Sun: Powering the Future', 'league_id' => league2.id)
player9.save

player10 = Player.new('first_name' => 'Stacey', 'surname' => 'Napier', 'tag' => 'STAC3-30', 'runner_faction' => 'Shaper', 'runner_identity' => 'Rielle "Kit" Peddler: Transhuman', 'corp_faction' => 'NBN', 'corp_identity' => 'Near-Earth Hub: Broadcast Center', 'league_id' => league2.id)
player10.save

player11 = Player.new('first_name' => 'Ben ', 'surname' => 'Ghirardani', 'tag' => 'GHAND1', 'runner_faction' => 'Criminal', 'runner_identity' => 'Nero Severn: Information Broker', 'corp_faction' => 'Jinteki', 'corp_identity' => 'Tennin Institute: The Secrets Within', 'league_id' => league2.id)
player11.save

player12 = Player.new('first_name' => 'Alan ', 'surname' => 'Mclarney', 'tag' => 'SP3cs', 'runner_faction' => 'Criminal', 'runner_identity' => 'Laramy Fisk: Savvy Investor', 'corp_faction' => 'Haas-Bioroid', 'corp_identity' => 'NEXT Design: Guarding the Net', 'league_id' => league2.id)
player12.save

# player13 = Player.new('first_name' => 'Matthew ', 'surname' => 'Shield', 'tag' => '2B0rN0t2b', 'runner_faction' => 'Anarch', 'runner_identity' => 'Null: Whistleblower', 'corp_faction' => 'NBN', 'corp_identity' => 'Spark Agency: Worldswide Reach', 'league_id' => Null)
# player13.save


nil
