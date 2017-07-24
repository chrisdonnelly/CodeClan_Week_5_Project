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
