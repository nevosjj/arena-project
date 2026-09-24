# arena-project

**Minecraft version**: `1.26.3`

This datapack is a PvP arena where two or more sides face each other using various abilities and strategies.

## Technical Information

### Update System

Every update of this datapack is aimed at improving one or more parts of the game.

Before considering further development or implementing new features, the developer(s) gather as much information as possible to assess what kind of update the datapack needs.

The following is a list of update categories:

1. **QOL Implementations**: The update aims to add new features that improve visual and audio feedback for players, making the overall experience easier and more enjoyable.
2. **Balance Changes**: Parts of the game may feel unbalanced and require adjustments. User feedback is especially taken into consideration during these updates.
3. **Bug Fixing**: When the datapack presents game-breaking or minor bugs, the developer(s) address them as quickly as possible in an effort to fix as many issues as possible at once.

### Custom Health & Damage System

Players' `match health` is managed through a `scoreboard` system. This allows the developer to create a customizable damage system and introduce different types of damage sources.

Players' `vanilla hearts` indicate how many lives they have left before losing the match. Whenever a round is lost, the player loses one `vanilla heart`. If their number of hearts reaches zero, the player loses the match.

Players can lose `match health` from melee attacks, which are treated as `melee_damage`, or from damaging abilities, which are treated as `ability_damage`.

`incoming_damage` represents the final form of damage applied to a player. Both `melee_damage` and `ability_damage` are first combined into `incoming_damage`.

Before the damage is applied to the player's `match health`, the system processes the damage through several modifiers and defensive mechanics.

The base damage calculation is:

$$\text{incoming\_damage} = (\text{ability\_damage} + \text{melee\_damage}) \times \frac{100 + \text{overtime multiplier}}{100}$$

If the player has damage resistance through `stat.defense`, the resulting damage is halved.

Therefore, when defense is active:

$$\text{incoming\_damage} = (\text{ability\_damage} + \text{melee\_damage}) \times \frac{100 + \text{overtime multiplier}}{100} \times 0.5$$

The system also supports defensive mechanics such as `bone_shield`, which can interrupt the damage source before the damage is applied.

After the final damage value has been calculated, it is:

* displayed to the player through in-game feedback;
* subtracted from `stat.current_health`;
* added to `recent_damage`;
* added to `poststat.damage_received`;
* used to update the match health display;
* checked against the player's remaining health to determine whether they have died.

Finally, the temporary damage scoreboards are reset and the player's vanilla health is restored so that Minecraft's vanilla hearts can continue to represent the player's remaining lives rather than their actual match health.
### Per-Player Data

[UNDER DEVELOPMENT]

Every player has their own player data saved through Minecraft's `storage` system. This provides a way for the developer(s) to store customizable data and implement player-specific effects and settings.

### Matchmaking & Match Lifecycle

Before a match is created, players must join a new game from the lobby.

If there are no available games, a new room is created, and the room master waits for other players to join. Inside the room, players can customize the match or choose to create one using one of the available presets.

The matchmaking system manages the transition from the lobby and queueing stages to match creation and the beginning of the game.

[UNDER DEVELOPMENT]

In the future, every new match will be situated in its own dimension. This will allow multiple game instances to be played simultaneously.

### Ability System

The ability system is organized around different ability types and provides a common activation flow for abilities.

Abilities have their own activation logic, cooldowns and effects. The system is designed to allow individual abilities to be implemented without having to recreate the entire activation process for every ability.

### Match Recording System

The datapack includes a match recording system that stores information about completed matches.

This data can be used to preserve memorable matches, analyze previous games and inspect match statistics.

Up to seven matches can currently be saved in the lobby recording system.

In the future, an external application may be developed to read and analyze players' saved match data.

## Game Features

This datapack offers various ways to enjoy the experience.

* **Abilities**: Choose abilities to complete your kit and fight with them.
* **Maps**: Choose from a variety of maps to fight your opponents on.
* **Equipment**: Customize your equipment to gain additional effects and enhance your abilities. [UNDER DEVELOPMENT]
* **Power-ups**: Every ability can have a set of power-ups, allowing players to create unique combinations. [UNDER DEVELOPMENT]

### Abilities

Every player has access to four types of abilities.

They are:

* **OFFENSIVE**: The primary offensive ability. It costs experience to use and primarily serves as an additional source of damage.
* **SUPPORT**: An ability designed to help you stay healthy or protect yourself from damage.
* **UTILITY**: An ability with a variety of possible functions, including mobility, debuffs and other special effects.
* **ULTIMATE**: A powerful ability capable of producing different types of effects. It can be activated only once per round.

### Game Modes

Matches follow the following rules:

1. A match requires a minimum of 2 players.
2. Every player has a certain number of hearts representing their remaining lives.
3. A player's current match health is displayed above the `actionbar` using a `scoreboard`.
4. The last player or team with at least 1 heart remaining wins the match.

The following game modes are available:

* **1v1**: Two opponents face each other.
* **2v2**: Two teams of two players face each other. Additional abilities are planned for this mode. [UNDER DEVELOPMENT]
* **FFA**: Up to 8 players can fight against each other in a single large map. [UNDER DEVELOPMENT]
* **Draft**: Players must complete a draft phase, including bans and picks, before the match starts.
* **Custom**: Players can combine different match settings to create a custom experience. [UNDER DEVELOPMENT]

### Saved Matches

Up to seven matches can be saved through the lobby recording system.

This is intended both to preserve memorable matches for players and to provide a way to analyze previous matches and read stored game data.

In the future, an external application may be developed to read and analyze players' saved match data.

## Development

This project is developed and maintained using Git and GitHub.

The datapack is organized into multiple subsystems, including:

* `match/` — Match lifecycle and game management.
* `matchmaking/` — Match queues, rooms and matchmaking logic.
* `skills/` — Ability activation, cooldowns and individual ability implementations.
* `health/` — Custom health, damage calculation and related mechanics.
* `selection/` — Player and ability selection systems.
* `recording/` — Match recording and stored match data.
* `experience/` — Experience-related mechanics.
* `animation/` — Visual and gameplay animations.

The project is divided into independent systems to keep the datapack maintainable as new mechanics and game modes are introduced.

## Technical Highlights

### Stateful Gameplay Systems

Because Minecraft datapacks do not provide traditional programming constructs such as classes or conventional runtime objects, the project makes extensive use of `scoreboards`, `tags`, `storage`, entities and function calls to maintain game state.

### Custom Damage Pipeline

Damage is processed through a custom pipeline instead of relying exclusively on Minecraft's vanilla health system.

Different damage sources are collected, modified and combined before the final `incoming_damage` value is applied to the player's `match health`.

### Ability Activation System

Abilities use a common activation flow that handles the selection and execution of different ability implementations while keeping individual ability logic separated.

This allows new abilities to be added without duplicating the entire activation system.

### Matchmaking & Match Lifecycle

The project contains a matchmaking system that handles player queues, rooms and the transition from matchmaking to an active match.

The match itself is managed through different stages, including setup, ability selection, gameplay, round progression and match completion.

### Custom Ability Mechanics

Some abilities use custom mathematical and movement logic implemented entirely through Minecraft commands.

For example, the Flame Sword ability uses a quadratic Bézier curve calculated through scoreboard-based arithmetic to generate its movement path.

## Installation

1. Download the latest release. It contains the required world file.
2. Place the world file inside your Minecraft `saves` folder.
3. Launch Minecraft and open the world.
4. Wait for the datapack to initialize and create the required data.
5. Enjoy the game.

## Known Limitations

Since this project is built entirely around Minecraft datapacks, some mechanics are limited by the capabilities of the datapack system.

Motion-based movement and similar mechanics that require continuous control over player movement are currently difficult or nearly impossible to implement reliably.

The datapack is also designed to run within its provided world and is not currently intended to guarantee compatibility with other datapacks.

## Roadmap

Features currently under development include:

* Per-player data and customization.
* Additional equipment mechanics.
* Ability power-ups.
* Expanded 2v2 mechanics.
* FFA improvements.
* Custom game modes.
* Multiple simultaneous match instances through separate dimensions.
* External tools for reading and analyzing saved match data.
