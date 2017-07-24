require'pg'
require_relative'../models/player.rb'
require_relative'../models/league.rb'

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
