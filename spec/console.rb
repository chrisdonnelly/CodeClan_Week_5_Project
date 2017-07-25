require('pg')
require_relative('../models/player.rb')
require_relative('../models/league.rb')
require_relative('../models/game.rb')
require_relative('../models/corp.rb')
require_relative('../models/runner.rb')
require_relative('../models/runner_faction.rb')
require_relative('../models/corp_faction.rb')
require('pry')

# p Runner_faction.find_all

# p League.find_all

runner_faction1 = Runner_faction.new('name' => 'Shaper')
corp_faction1 = Corp_faction.new('name' => 'Hass-Bioroid')
corp5 = Corp.new('corp_faction_id' => corp_faction1.id, 'name' => 'Engineering the Future')
runner8 = Runner.new('runner_faction_id' => runner_faction1.id, 'name' => 'Kate "Mac" McCaffrey: Digital Tinker')


league1 = League.new('name' => 'League 1', 'start_date' => '29-07-17', 'end_date' => '05-08-17', 'max_players' => '6')

player1 = Player.new('first_name' => 'Chris', 'surname' => 'Donnelly', 'tag' => 'C-d0g', 'runner_faction_id' => runner_faction1.id, 'runner_identity_id' => runner8.id, 'corp_faction_id' => corp_faction1.id, 'corp_identity_id' => corp5.id, 'league_id' => league1.id)

binding.pry

p player1.find_runner_identity