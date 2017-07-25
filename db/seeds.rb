require'pg'
require_relative'../models/player.rb'
require_relative'../models/league.rb'
require_relative'../models/game.rb'
require_relative'../models/corp.rb'
require_relative'../models/runner.rb'
require_relative'../models/runner_faction.rb'
require_relative'../models/corp_faction.rb'

runner_faction1 = Runner_faction.new('name' => 'Shaper')
runner_faction1.save
runner_faction2 = Runner_faction.new('name' => 'Anarch')
runner_faction2.save
runner_faction3 = Runner_faction.new('name' => 'Criminal')
runner_faction3.save
corp_faction1 = Corp_faction.new('name' => 'Hass-Bioroid')
corp_faction1.save
corp_faction2 = Corp_faction.new('name' => 'Jinteki')
corp_faction2.save
corp_faction3 = Corp_faction.new('name' => 'NBN')
corp_faction3.save
corp_faction4 = Corp_faction.new('name' => 'Weyland Consortium')
corp_faction4.save

runner1 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Ayla "Bios" Rahim: Simulant Specialist')
runner1.save
runner2 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Chaos Theory: Wünderkind')
runner2.save
runner3 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Ele "Smoke" Scovak: Cynosure of the Net')
runner3.save
runner4 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Exile: Streethawk')
runner4.save
runner5 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Hayley Kaplan: Universal Scholar')
runner5.save
runner6 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Jamie "Bzzz" Micken: Techno Savant')
runner6.save
runner7 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Jesminder Sareen: Girl Behind the Curtain')
runner7.save
runner8 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Kate "Mac" McCaffrey: Digital Tinker')
runner8.save
runner9 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Nasir Meidan: Cyber Explorer')
runner9.save
runner10 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Rielle "Kit" Peddler: Transhuman')
runner10.save
runner11 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'The Professor: Keeper of Knowledge')
runner11.save
runner12 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Andromeda: Dispossessed Ristie')
runner12.save
runner13 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Armand "Geist" Walker: Tech Lord')
runner13.save
runner14 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Boris "Syfr" Kovac: Crafty Veteran')
runner14.save
runner15 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Gabriel Santiago: Consummate Professional')
runner15.save
runner16 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Iain Stirling: Retired Spook')
runner16.save
runner17 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Ken "Express" Tenma: Disappeared Clone')
runner17.save
runner18 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Khan: Savvy Skiptracer')
runner18.save
runner19 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Laramy Fisk: Savvy Investor')
runner19.save
runner20 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Leela Patel: Trained Pragmatist')
runner20.save
runner21 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Los: Data Hijacker')
runner21.save
runner22 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Nero Severn: Information Broker')
runner22.save
runner23 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Silhouette: Stealth Operative')
runner23.save
runner24 = Runner.new('runner_faction_id' => runner_faction3.id, 'name' => 'Steve Cambridge: Master Grifter')
runner24.save
runner25 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Alice Merchant: Clan Agitator')
runner25.save
runner26 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Edward Kim: Humanitys Hammer')
runner26.save
runner27 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'MaxX: Maximum Punk Rock')
runner27.save
runner28 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Noise: Hacker Extraordinaire')
runner28.save
runner29 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Null: Whistleblower')
runner29.save
runner30 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Omar Keung: Conspiracy Theorist')
runner30.save
runner31 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Quetzal: Free Spirit')
runner31.save
runner32 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Reina Roja: Freedom Fighter')
runner32.save
runner33 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Valencia Estevez: The Angel of Cayambe')
runner33.save
runner34 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Whizzard: Master Gamer')
runner34.save
runner35 = Runner.new('runner_faction_id' => runner_faction2.id, 'name' => 'Wyvern: Chemically Enhanced')
runner35.save

corp1 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Cerebral Imaging: Infinite Frontiers')
corp1.save
corp2 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Custom Biotics: Engineered for Success')
corp2.save
corp3 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Cybernetics Division: Humanity Upgraded')
corp3.save
corp4 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Architects of Tomorrow')
corp4.save
corp5 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Engineering the Future')
corp5.save
corp6 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Stronger Together')
corp6.save
corp7 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'NEXT Design: Guarding the Net')
corp7.save
corp8 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Seidr Laboratories: Destiny Defined')
corp8.save
corp9 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Strategic Innovations: Future Forward')
corp9.save
corp10 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'The Foundry: Refining the Process')
corp10.save

corp11 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'AgInfusion: New Miracles for a New World')
corp11.save
corp12 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Chronos Protocol: Selective Mind-mapping')
corp12.save
corp13 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Harmony Medtech: Biomedical Pioneer')
corp13.save
corp14 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Industrial Genomics: Growing Solutions')
corp14.save
corp15 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Jinteki Biotech: Life Imagined')
corp15.save
corp16 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Personal Evolution')
corp16.save
corp17 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Potential Unleashed')
corp17.save
corp18 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Replicating Perfection')
corp18.save
corp19 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Nisei Division: The Next Generation')
corp19.save
corp20 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Pālanā Foods: Sustainable Growth')
corp20.save
corp21 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Synthetic Systems: The World Re-imagined')
corp21.save
corp22 = Corp.new('corp_faction_id' => corp_faction2.id, 'name' => 'Tennin Institute: The Secrets Within')
corp22.save
corp23 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Haarpsichord Studios: Entertainment Unleashed')
corp23.save
corp24 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Harishchandra Entertainment: Where Youre the Star')
corp24.save
corp25 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Information Dynamics: All You Need To Know')
corp25.save
corp26 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Controlling the Message')
corp26.save
corp27 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Making News')
corp27.save
corp28 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'The World is Yours')
corp28.save
corp29 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Near-Earth Hub: Broadcast Center')
corp29.save
corp30 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'New Angeles Sol: Your News')
corp30.save
corp31 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'Spark Agency: Worldswide Reach')
corp31.save
corp32 = Corp.new('corp_faction_id' => corp_faction3.id, 'name' => 'SYNC: Everything, Everywhere')
corp32.save
corp33 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Argus Security: Protection Guaranteed')
corp33.save
corp34 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Blue Sun: Powering the Future')
corp34.save
corp35 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Fringe Applications: Tomorrow, Today')
corp35.save
corp36 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Gagarin Deep Space: Expanding the Horizon')
corp36.save
corp37 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'GRNDL: Power Unleashed')
corp37.save
corp38 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Jemison Astronautics: Sacrifice. Audacity. Success.')
corp38.save
corp39 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Skorpios Defense Systems: Persuasive Power')
corp39.save
corp40 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Titan Transnational: Investing In Your Future')
corp40.save
corp41 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Because We Built It')
corp41.save
corp42 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Builder of Nations')
corp42.save
corp43 = Corp.new('corp_faction_id' => corp_faction4.id, 'name' => 'Building a Better World')
corp43.save



league1 = League.new('name' => 'League 1', 'start_date' => '29-07-17', 'end_date' => '05-08-17', 'max_players' => '6')
league1.save

league2 = League.new('name' => 'League 2', 'start_date' => '29/07/17', 'end_date' => '05/08/17', 'max_players' => '6')
league2.save

player1 = Player.new('first_name' => 'Chris', 'surname' => 'Donnelly', 'tag' => 'C-d0g', 'runner_faction_id' => runner_faction1.id, 'runner_identity_id' => runner8.id, 'corp_faction_id' => corp_faction1.id, 'corp_identity_id' => corp5.id, 'league_id' => league1.id)
player1.save

player2 = Player.new('first_name' => 'Stephen', 'surname' => 'Beattie', 'tag' => 'Hanz0', 'runner_faction_id' => runner_faction1.id, 'runner_identity_id' => runner9.id, 'corp_faction_id' => corp_faction2.id, 'corp_identity_id' => corp15.id, 'league_id' => league1.id)
player2.save

player3 = Player.new('first_name' => 'John', 'surname' => 'Harper', 'tag' => 'Harpy98','runner_faction_id' => runner_faction1.id, 'runner_identity_id' => runner11.id, 'corp_faction_id' => corp_faction4.id, 'corp_identity_id' => corp36.id, 'league_id' => league1.id)
player3.save

player4 = Player.new('first_name' => 'Alex', 'surname' => 'Bazlinton', 'tag' => 'Bazinat0r', 'runner_faction_id' => runner_faction3.id, 'runner_identity_id' => runner15.id, 'corp_faction_id' => corp_faction3.id, 'corp_identity_id' => corp26.id, 'league_id' => league1.id)
player4.save

player5 = Player.new('first_name' => 'Keith', 'surname' => 'Douglas', 'tag' => 'R0kaBi11ie','runner_faction_id' => runner_faction2.id, 'runner_identity_id' => runner31.id, 'corp_faction_id' => corp_faction1.id, 'corp_identity_id' => corp1.id, 'league_id' => league1.id)
player5.save

player6 = Player.new('first_name' => 'Stewart', 'surname' => 'MacKenzie-leigh', 'tag' => 'W33gi3', 'runner_faction_id' => runner_faction3.id, 'runner_identity_id' => runner24.id, 'corp_faction_id' => corp_faction4.id, 'corp_identity_id' => corp40.id, 'league_id' => league1.id)
player6.save

player7 = Player.new('first_name' => 'Yan', 'surname' => 'Ren', 'tag' => 'RENd0d0', 'runner_faction_id' => runner_faction1.id, 'runner_identity_id' => runner5.id, 'corp_faction_id' => corp_faction3.id, 'corp_identity_id' => corp25.id, 'league_id' => league2.id)
player7.save

player8 = Player.new('first_name' => 'Guy', 'surname' => 'Bach', 'tag' => 'RANT3R25', 'runner_faction_id' => runner_faction2.id, 'runner_identity_id' => runner28.id, 'corp_faction_id' => corp_faction2.id, 'corp_identity_id' => corp19.id, 'league_id' => league2.id)
player8.save

player9 = Player.new('first_name' => 'Derek', 'surname' => 'Middlemiss', 'tag' => 'D3L-B0y', 'runner_faction_id' => runner_faction1.id, 'runner_identity_id' => runner4.id, 'corp_faction_id' => corp_faction1.id, 'corp_identity_id' => corp7.id, 'league_id' => league2.id)
player9.save

player10 = Player.new('first_name' => 'Stacey', 'surname' => 'Napier', 'tag' => 'STAC3-30', 'runner_faction_id' => runner_faction3.id, 'runner_identity_id' => runner20.id, 'corp_faction_id' => corp_faction2.id, 'corp_identity_id' => corp22.id, 'league_id' => league2.id)
player10.save

player11 = Player.new('first_name' => 'Ben ', 'surname' => 'Ghirardani', 'tag' => 'GHAND1', 'runner_faction_id' => runner_faction2.id, 'runner_identity_id' => runner34.id, 'corp_faction_id' => corp_faction4.id, 'corp_identity_id' => corp33.id, 'league_id' => league2.id)
player11.save

player12 = Player.new('first_name' => 'Alan ', 'surname' => 'Mclarney', 'tag' => 'SP3cs', 'runner_faction_id' => runner_faction2.id, 'runner_identity_id' => runner30.id, 'corp_faction_id' => corp_faction3.id, 'corp_identity_id' => corp29.id, 'league_id' => league2.id)
player12.save

# player13 = Player.new('first_name' => 'Matthew ', 'surname' => 'Shield', 'tag' => '2B0rN0t2b', 'runner_faction' => 'Anarch', 'runner_identity' => 'Null: Whistleblower', 'corp_faction' => 'NBN', 'corp_identity' => 'Spark Agency: Worldswide Reach', 'league_id' => Null)
# player13.save



p player1.find_runner_identity

nil
