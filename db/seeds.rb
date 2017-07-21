require'pg'
require_relative'../models/player.rb'
require_relative'../models/league.rb'

league1 = League.new('name' => 'League 1', 'start_date' => '29/07/17', 'end_date' => '05/08/17', 'max_players' => '6')
league1.save

player1 = Player.new('first_name' => 'Chris', 'surname' => 'Donnelly', 'tag' => 'C-d0g', 'runner_faction' => 'Shaper', 'runner_identity' => 'Kate "Mac" McCaffrey: Digital Tinker', 'corp_faction' => 'Haas-Bioroid', 'corp_idenity' => 'Engineering the Future')
player1.save

player2 = Player.new('first_name' => 'Stephen', 'surname' => 'Beattie', 'tag' => 'Hanz0', 'runner_faction' => 'Anarch', 'runner_identity' => 'Noise: Hacker Extraordinaire', 'corp_faction' => 'Jinteki', 'corp_idenity' => 'Personal Evolution')
player2.save

player3 = Player.new('first_name' => 'John', 'surname' => 'Harper', 'tag' => 'Harpy98','runner_faction' => 'Shaper', 'runner_identity' => 'The Professor: Keeper of Knowledge', 'corp_faction' => 'Weyland Consortium', 'corp_idenity' => 'Argus Security: Protection Guaranteed')
player3.save

player4 = Player.new('first_name' => 'Alex', 'surname' => 'Bazlinton', 'tag' => 'Bazinator', 'runner_faction' => 'Criminal', 'runner_identity' => 'Gabriel Santiago: Consummate Professional', 'corp_faction' => 'NBN', 'corp_idenity' => 'Controlling the Message')
player4.save

player5 = Player.new('first_name' => 'Keith', 'surname' => 'Douglas', 'tag' => 'R0kaBi11ie','runner_faction' => 'Anarch', 'runner_identity' => 'Omar Keung: Conspiracy Theorist', 'corp_faction' => 'Jinteki', 'corp_idenity' => 'Harmony Medtech: Biomedical Pioneer')
player5.save

player6 = Player.new('first_name' => 'Stewart', 'surname' => 'MacKenzie-leigh', 'tag' => 'W33gi3', 'runner_faction' => 'Criminal', 'runner_identity' => 'Armand "Geist" Walker: Tech Lord', 'corp_faction' => 'Haas-Bioroid', 'corp_idenity' => 'Architects of Tomorrow')
player6.save

player7 = Player.new('first_name' => 'Yan', 'surname' => 'Ren', 'tag' => 'RENd0d0', 'runner_faction' => 'Criminal', 'runner_identity' => 'Edward Kim: Humanity\'s Hammer', 'corp_faction' => 'Haas-Bioroid', 'corp_idenity' => 'Stronger Together')
player7.save

player8 = Player.new('first_name' => 'Guy', 'surname' => 'Bach', 'tag' => 'RANT3R25', 'runner_faction' => 'Criminal', 'runner_identity' => 'Ken "Express" Tenma: Disappeared Clone', 'corp_faction' => 'Weyland Consortium', 'corp_idenity' => 'Gagarin Deep Space: Expanding the Horizon')
player8.save

player9 = Player.new('first_name' => 'Derek', 'surname' => 'Middlemiss', 'tag' => 'D3L-B0y', 'runner_faction' => 'Anarch', 'runner_identity' => 'Whizzard: Master Gamer', 'corp_faction' => 'Weyland Consortium', 'corp_idenity' => 'Blue Sun: Powering the Future')
player9.save

player10 = Player.new('first_name' => 'Stacey', 'surname' => 'Napier', 'tag' => 'STAC3-30', 'runner_faction' => 'Shaper', 'runner_identity' => 'Rielle "Kit" Peddler: Transhuman', 'corp_faction' => 'NBN', 'corp_idenity' => 'Near-Earth Hub: Broadcast Center')
player10.save

player10 = Player.new('first_name' => 'Ben ', 'surname' => 'Ghirardani', 'tag' => 'GHAND1', 'runner_faction' => 'Criminal', 'runner_identity' => 'Nero Severn: Information Broker', 'corp_faction' => 'Jinteki', 'corp_idenity' => 'Tennin Institute: The Secrets Within')
player10.save

player11 = Player.new('first_name' => 'Alan ', 'surname' => 'Mclarney', 'tag' => 'SP3cs', 'runner_faction' => 'Criminal', 'runner_identity' => 'Laramy Fisk: Savvy Investor', 'corp_faction' => 'Haas-Bioroid', 'corp_idenity' => 'NEXT Design: Guarding the Net')
player11.save

player12 = Player.new('first_name' => 'Matthew ', 'surname' => 'Shield', 'tag' => '2B0rN0t2b', 'runner_faction' => 'Anarch', 'runner_identity' => 'Null: Whistleblower', 'corp_faction' => 'NBN', 'corp_idenity' => 'Spark Agency: Worldswide Reach')
player12.save

nil