# The Serpent's Eyes (TSE) - Comprehensive Game Design Document

## Table of Contents
1. [[#1. Core Concepts|Core Concepts]]
2. [[#2. Dice System|Dice System]]
   2.1 [[#2.1 Type Advantage|Type Advantage]]
   2.2 [[#2.2 Dice Loadout|Dice Loadout]]
   2.3 [[#2.3 Dice Mastery System|Dice Mastery System]]
   2.4 [[#2.4 Dice Upgrade System|Dice Upgrade System]]
   2.5 [[#2.5 Dice Special Effects|Dice Special Effects]]
3. [[#3. Ring and Gem System|Ring and Gem System]]
   3.1 [[#3.1 Ring Types|Ring Types]]
   3.2 [[#3.2 Effect Application Order|Effect Application Order]]
   3.3 [[#3.3 Gem System|Gem System]]
      3.3.1 [[#3.3.1 Gem Tiers|Gem Tiers]]
      3.3.2 [[#3.3.2 Basic Gem Types|Basic Gem Types]]
      3.3.3 [[#3.3.3 Modifier Categories|Modifier Categories]]
      3.3.4 [[#3.3.4 Modifier Types|Modifier Types]]
   3.4 [[#3.4 Gem Types and Effects|Gem Types and Effects]]
4. [[#4. Combat System|Combat System]]
5. [[#5. Progression System|Progression System]]
6. [[#6. UI Elements|UI Elements]]
7. [[#7. Game Flow|Game Flow]]
8. [[#8. Game Structure|Game Structure]]
   8.1 [[#8.1 MasterScene|MasterScene]]
   8.2 [[#8.2 CutsceneScene|CutsceneScene]]
   8.3 [[#8.3 BedroomScene|BedroomScene]]
   8.4 [[#8.4 MapScene|MapScene]]
   8.5 [[#8.5 BattleScene|BattleScene]]
   8.6 [[#8.6 PostBattleScene|PostBattleScene]]
9. [[#9. Endgame Setup|Endgame Setup]]
   9.1 [[#9.1 Map Scene Overview|Map Scene Overview]]
   9.2 [[#9.2 Progression System|Progression System]]
   9.3 [[#9.3 Rune System|Rune System]]
   9.4 [[#9.4 Lore|Lore]]
10. [[#10. Future Considerations|Future Considerations]]

# 1. Core Concepts

- A dice-based combat RPG with strategic elements
- Money serves as both health and a resource
- Type advantage system (Tech > Magic > Bio > Tech, with a neutral Ancient type)
- Customizable dice loadout with modifiable rings for two hands (second hand unlocked in endgame)
- Long-term progression with multiple areas and increasing difficulty
- Mastery System: Players gain bonuses for consistently using certain dice types or strategies

# 2. Dice System

The game features four types of dice: Bio, Tech, Magic, and Ancient (neutral). Players select their dice loadout before battles, with no hot-swapping during combat.

## 2.1 Type Advantage

- Tech beats Magic
- Magic beats Bio
- Bio beats Tech
- Ancient (neutral) has no advantages or disadvantages

Type advantage modifiers:

- Winning type gets a 1.2 damage modifier
- Losing type gets a 0.8 damage modifier
- Ancient type always deals 0.8 damage to other types
- Ancient vs Ancient deals 1.0 damage

Players can use gems to amplify or reduce these type advantage bonuses.

## 2.2 Dice Loadout

- Players set their dice loadout in the BedroomScenes Dice Loadout section (Altar)
- The loadout determines which dice types are available during battle
- Strategic decisions must be made when selecting dice for the loadout
- Loadout capacity increases with player progression
 - Slot 2/3 Unlocked after being School Boss
 - Slot 3/4/5 Unlocked after beating Tech/Magic/Bio Final Bosses.
 - Slot 6/7 Unlocked After defeating the final boss that unlocks the Astral Arena.
## 2.3 Dice Mastery System

- Each die type (d6, d10, d20, etc.) has its own mastery level
- Mastery increases through use of dice in battle, every single roll that inflicts damage successfully will add +1 to mastery for the corresponding dice. 
 - Multi-Roll effects for the dice will apply mastery for each additional roll at .5 per roll.
- Higher mastery levels unlock upgrades for each die, these upgrades apply to all dice types of that number meaning you can upgrade a d6 by using only tech and it's upgrades will apply if you swap to a bio dice etc.

Mastery Levels:
1. Novice (0-100 points)
2. Beginner (101-250 points)
3. Apprentice (251-500 points)
4. Expert (501-1000 points)
5. Journeyman (1001-3000 points)
6. Heroic (3001-5000 points)
7. Master (5001-9000 points)
8. Grandmaster (9001+ points)
## 2.4 Dice Upgrade System

- Upgrades are unlocked by reaching certain mastery levels
- To apply upgrades, players must interact with their Robot companion
- The Robot's friendship level determines the tier of upgrades available
- Each die can have up to 3 upgrades applied simultaneously

Upgrade Tiers and Requirements:

1. Novice Upgrades
   - Unlocked at Mastery Level 1: Novice (0-100 points)
   - Requires Robot Friendship Level 1

2. Beginner Upgrades
   - Unlocked at Mastery Level 2: Beginner (101-250 points)
   - Requires Robot Friendship Level 2

3. Apprentice Upgrades
   - Unlocked at Mastery Level 3: Apprentice (251-500 points)
   - Requires Robot Friendship Level 3

4. Expert Upgrades
   - Unlocked at Mastery Level 4: Expert (501-1000 points)
   - Requires Robot Friendship Level 4

5. Journeyman Upgrades
   - Unlocked at Mastery Level 5: Journeyman (1001-3000 points)
   - Requires Robot Friendship Level 5

6. Heroic Upgrades
   - Unlocked at Mastery Level 6: Heroic (3001-5000 points)
   - Requires Robot Friendship Level 6

7. Master Upgrades
   - Unlocked at Mastery Level 7: Master (5001-9000 points)
   - Requires Robot Friendship Level 7

8. Grandmaster Upgrades
   - Unlocked at Mastery Level 8: Grandmaster (9001+ points)
   - Requires Robot Friendship Level 8

Note: Players must reach both the required Mastery Level and Robot Friendship Level to access each tier of upgrades.
## 2.5 Dice Special Effects

**NEEDS COMPLETE REWORK STILL**

- d3: Roll three times and take the highest result. + Two ones = Add the base numbers to damage for the turn and Roll another set of 3 dice, SNAKE EYES All 3 dice 1's = Add base numbers without taking highest result and roll 3 more sets of 3 dice.
- d4: x2 damage dice roll on a 2, x3 on 3, 4 Damage + Re-roll
- d6: On a 6, double the effect of all Gems this round
- d10: On a 10, Disable Enemy Gems this round
- d12: Leech 1$ x whatever the number on the face is
- d20: On a 20, Triple damage + Dice is free; on a 1, does nothing.
- d30: Rolling 1-9 +1 Dice Rolled next turn, 10-19 +2 Dice next turn, 20-29 +3 Dice next turn, 30 x5 Dice next turn.
- d100: No special effect (raw damage potential)

# 3. Ring and Gem System

- Basic Rings can be equipped on each Finger (second hand unlocked in endgame)
- Each ring has up to 5 gem slots (unlocked through progression)
- Gems provide various effects and can be upgraded through multiple tiers
- Gem effects apply to all dice and are separated into Pre-Roll/Post-Roll/Passive/Damage Modifier Effects/Critical Strike Chance Effects/Critical Strike Damage Effects

## 3.1 Ring Types

### Basic Rings

1. Candy Ring
   - 1 Slot
   - No innate effects

2. Copper Ring
   - 2 Slots
   - No innate effects

3. Silver Ring
   - 3 Slots
   - No innate effects

4. Gold Ring
   - 4 Slots
   - No innate effects

5. Titanium Ring
   - 5 Slots
   - No innate effects

### Amplifier Rings

1. Silver Amplifier Ring
   - 1 Slot
   - 4x (Quadruples the effects of slotted gem)

2. Gold Amplifier Ring
   - 2 Slots
   - 3x (Triples the effects of slotted gems)

3. Titanium Amplifier Ring
   - 3 Slots
   - 2x (Doubles the effects of slotted gems)

### Cursed Rings

1. Sealed Ring
   - 9 Slots
   - Effect: Slotted Gems have 1.0x (100%) reduced effect on Turn 1. Each turn, this effect decreases by 50% but causes .05x (5%) health loss (max .35x (35%) health lost). Maximum positive amplifier of 3.5x (350% increased effect.)

2. Mirror Ring
   - 9 Slots
   - Effect: 3 Gems apply to opponent's dice at 1.0x (100% effect), 6 gems apply to you at 3x (300% effect.) Gem effects chosen randomly at battle start.
   - Restriction: Can only be slotted with Passive Gems

3. Trinity of Thorns Ring
   - 3 Slots
   - Effect: Applies 12x (1200%) effect to gems for 3 turns. After 3 turns, amplification removed and .10x (10%) current health damage taken per turn for 6 turns. If alive on turn 7, amplification returns at 25x (2500%) effect for the rest of the battle.

## 3.2 Effect Application Order

1. Apply Dice Modifier Passive Effects
2. Apply Ring modifiers to Gems (passive/pre/post)
3. Apply Gem Passive effects
4. Sum up Gem Passive Effect Totals
5. Apply Dice Modifiers to Pre-Roll effects
6. Apply Gem Modifiers to Pre-Roll effects
7. Sum up Pre-Roll effects
8. Roll Dice
9. Apply Dice Modifier Post-Roll effects
10. Apply Gem Modifier Post-Roll effects
11. Sum up Post-Roll effects
12. Apply Flat Dice Modifiers to Damage value
13. Apply Flat Gem Modifiers to Damage value
14. Sum up Flat modifiers to Damage value
15. Apply Multiplier Dice Modifiers to Damage value
16. Apply Multiplier Gem Modifiers to Damage value
17. Apply Dice Critical Chance Modifiers
18. Apply Gem Critical Chance Modifiers
19. Sum Critical Chance and calculate if the crit succeeds
20. If crit fails -> Output final damage
21. If overcrit occurs -> Calculate Overcrit value (150% = 1.5 flat critical strike damage value)
22. When crit succeeds:
23. Apply Dice Critical Strike Damage Modifiers to Damage value
24. Apply Gem Critical Strike Damage Modifiers to Damage value
25. Sum Critical Strike Modifier Damage + Overcrit Damage value
26. Output Final damage (Multiply Final Damage Value by Type Advantage Outcome)

#### Examples:

**Simple Example:**
Player uses a d6 with no modifiers and a gem with "Add 2 flat damage (post-roll)" in a basic ring.

8. Roll Dice: d6 rolls 4
10. Gem Post-Roll: Add 2 flat damage
11-14. Flat Modifier: 4 + 2 = 6 damage
15-20. No further modifications
26. Final Damage: 6

**Moderate Example:**

Player uses a d10 with "10% critical chance" and "1.2x critical damage" dice modifiers. They have a gem with "1.1x damage multiplier (passive)" and "20% critical chance" in a Silver Amplifier Ring (quadruples gem effects).

2. Ring Modifier: Amplifies gem effects (1.4x multiplier, 80% crit chance)
3-4. Gem Passive: 1.4x damage multiplier noted
8. Roll Dice: d10 rolls 7
15. Dice Multiplier: No change
16. Gem Multiplier: 7 * 1.4 = 9.8 damage
17. Dice Crit Chance: 10%
18. Gem Crit Chance: 80%
19. Total Crit Chance: 90%, crit succeeds
23. Dice Crit Modifier: 1.2x
24. Gem Crit Modifier: No additional modifier
25. Crit Damage: 9.8 * 1.2 = 11.76
26. Final Damage: 11.76 (rounded as needed)

Ultra-Complex Example:

Player uses a d12 with the following dice modifiers:
- "10% increased damage (passive)"
- "Add 2-4 flat damage (pre-roll)"
- "15% chance to double roll (post-roll)"
- "Add 5 flat damage (post-roll)"
- "1.2x damage multiplier"
- "25% critical chance"
- "1.4x critical damage"

They have a gem with the following modifiers in a Gold Amplifier Ring (triples the effects of slotted gems):
- "1.15x damage multiplier (passive)"
- "Add 3 flat damage (pre-roll)"
- "20% chance to add 1d6 damage (post-roll)"
- "Add 2 flat damage"
- "1.1x damage multiplier"
- "30% critical chance"
- "1.3x critical damage"

Calculation process:

1. Dice Passive: 10% increased damage noted
2. Ring Modifier: Triples all gem effects
   - 1.45x damage multiplier (tripled from 1.15x)
   - Add 9 flat damage pre-roll (tripled from 3)
   - 60% chance to add 1d6 damage post-roll (tripled from 20%)
   - Add 6 flat damage (tripled from 2)
   - 1.3x damage multiplier (tripled from 1.1x)
   - 90% critical chance (tripled from 30%)
   - 1.9x critical damage (tripled from 1.3x)
3. Apply Gem Passive: 45% increased damage from gem
4. Sum Passive Effects: 10% (dice) + 45% (gem) = 55% total increased damage
5. Dice Pre-Roll: Add 3 flat damage (rolled 3 from 2-4 range)
6. Gem Pre-Roll: Add 9 flat damage
7. Sum Pre-Roll: 3 + 9 = 12 flat damage to be added
8. Roll Dice: d12 rolls 8, total is now 20 (8 + 12)
9. Dice Post-Roll: 
   - 15% chance to double roll succeeds: 20 * 2 = 40
   - Add 5 flat damage: 40 + 5 = 45
10. Gem Post-Roll: 60% chance to add 1d6 succeeds, rolls 4
11. Sum Post-Roll: 45 + 4 = 49 damage
12. Dice Flat: No additional flat modifier
13. Gem Flat: Add 6 flat damage
14. Sum Flat: 49 + 6 = 55 damage
15. Dice Multiplier: 55 * 1.2 = 66 damage
16. Gem Multiplier: 66 * 1.3 = 85.8 damage
17. Dice Crit Chance: 25%
18. Gem Crit Chance: 90%
19. Total Crit Chance: 115%, crit succeeds with overcrit
20. (Crit succeeds, skip to step 21)
21. Overcrit: 15% over 100%, so 1.15x overcrit multiplier
22. (Crit succeeds, continue calculation)
23. Dice Crit Modifier: 1.4x
24. Gem Crit Modifier: 1.9x
25. Crit Damage: 85.8 * 1.4 * 1.9 * 1.15 (overcrit) = 329.8314
26. Final Damage: 329.8314 (rounded as needed)

## 3.3 Gem System

The gem system provides deep customization options for players, allowing them to tailor their strategy through various combinations of gems and modifiers.

### 3.3.1 Gem Tiers

Gems come in 8 tiers, each named after a precious stone and offering increasing complexity and power:

1. Quartz (1 modifier line)
2. Amethyst (2 modifier lines)
3. Topaz (3 modifier lines)
4. Emerald (4 modifier lines)
5. Sapphire (5 modifier lines)
6. Ruby (6 modifier lines)
7. Diamond (7 modifier lines)
8. Opal (8 modifier lines)

Higher-tier gems are rarer and more powerful, offering more modifier lines and potentially stronger effects.

### 3.3.2 Basic Gem Types

Gems are categorized into four basic types, each supporting different playstyles:

1. Offensive Gems
2. Defensive Gems
3. Utility Gems
4. Hybrid Gems

Players can mix and match these types to create balanced loadouts or specialize in specific strategies.

### 3.3.3 Modifier Categories

Gem effects are divided into three categories based on when they're applied during combat:

1. Passive Effects
2. Pre-Roll Effects
3. Post-Roll Effects
4. Damage Modifier Effects
5. Critical Strike Chance Effects
6. Critical Strike Damage Effects

This categorization allows for intricate combinations of effects that can dramatically influence battle outcomes.

### 3.3.4 Modifier Types

Gem modifiers come in two primary forms:

1. Flat Modifiers: Add or subtract a specific value
2. Multiplicative modifiers: Multiply the effect by a value
 - ex. 2.5x(250% Multiplier) 

The interplay between flat and Multiplicative modifiers creates opportunities for complex and powerful gem combinations.

## 3.4 Gem Types and Effects

1. Offensive Gems:
   - Ruby: Increases damage by 5%/10%/15%
   - Garnet: 5%/10%/15% of damage repeats for 1/2/3 turns (DoT effect)
   - Sapphire: 10%/20%/30% chance to deal double damage
   - Topaz: Increases critical hit chance by 5%/10%/15%

2. Defensive Gems:
   - Emerald: Reduces incoming damage by 5%/10%/15%
   - Jade: 2%/4%/6% chance to avoid an attack
   - Amethyst: Recovers 1%/2%/3% of max money before damage calculations each turn
   - Opal: Creates a shield absorbing 2%/4%/6% of incoming damage

3. Utility Gems:
   - Diamond: Increases money gained from winning by 10%/20%/30%
   - Quartz: 10%/20%/30% chance to add an extra die roll. If total value from Quartz gems reaches 100%, guarantees 1 extra roll, with a chance for more based on excess percentage
   - Peridot: Increases the effectiveness of type advantages by 5%/10%/15%
   - Aquamarine: 2%/4%/6% chance to force all enemy dice to switch to your selected dice's weakness before damage calculations

4. Special Effect Gems:
   - Onyx: 2%/4%/6% chance to stun the enemy for one turn
   - Amber: Increases the effect of all other gems in the same ring by 10%/20%/30%
   - Moonstone: 2%/4%/6% chance for True Strike, negating all defenses and evasion properties of the opponent's dice
   - Turquoise: 5%/10%/15% chance your dice cost no money to use this turn








**(NEEDS TO BE EDITED AND UPDATED)**





# 4. Combat System

1. Players select dice and their types
2. Players choose which dice to roll (considering money cost)
3. Both players roll simultaneously
4. Apply type advantages and special effects
5. Calculate and apply damage
6. Repeat until a player is out of money

# 5. Progression System

- Winning battles rewards money and experience
- Experience levels up the player, unlocking new features and increasing stats
- Money can be spent between battles to:
  1. Buy new Gems
  2. Upgrade Gem Levels
  3. Unlock new dice types
  4. Improve base stats
- Progression milestones:
  1. Unlock new areas on the map
  2. Gain access to higher tier gems
  3. Unlock second hand for endgame customization
  4. Access to special endgame content (Astral Arena, etc.)

# 6. UI Elements

- Top bar: Area name, enemy name, money/health display
- Left side: Character dialogue/interaction
- Right side: Enemy avatar and info
- Bottom: Player's dice selection with type-changing buttons
- Center: Dice rolling area
- Background: Animated crowd reacting to gameplay

# 7. Game Flow

1. Start with one dice and no gems
2. Battle opponents, earning money and experience
3. Buy gems, upgrade gems, and improve character between battles
4. Progress through increasingly difficult areas
5. Face boss battles at milestones
6. Unlock new game features as you progress
7. Access endgame content and continue to improve character

# 8. Game Structure
## 8.1 MasterScene

- Main entry point for the game
- Contains:
    - New Game
    - Load Game (3 file options)
    - Settings
    - Discord integration

## 8.2 CutsceneScene

- Dedicated node for storing and displaying cutscenes
- Features:
    - Text box at the bottom
    - Sound integration for voice lines
    - Click-through functionality
    - Character pop-ups
    - Image display with minor animations

## 8.3 BedroomScene

- Main hub of the game
- Contains:
    - 8 clickable animated sprites
    - Pop-up UI elements for each sprite's function
    - Access to MapScreen

- Robot Assistant (Waifu/Husbando that serves as the upgrade menu for Rings, new tiers of upgrades must be unlocked by gaining the friendship of the Robot, a conversation event can happen once between each set of rounds played in which the player must discourse with their Robot Learning about them and choosing the right choices to build their friendship meter up which will unlock higher tiers of base rings) 
- Computer (Opens the shop to purchase gems & craft materials for $) 
- WorkBench (The crafting system allowing the player to Craft on their Gems a system similar to path of exile where lines can be added in and removed) 
- Altar ( A place for the player to select which dice are in 1 of 3 loadouts) 
- Jukebox (Setup Playlists & listen to game music) 
- Library (Lore Library to read/listen to collected lore and re-watch cutscenes) 
- Door (This transitions to the map_scene) 
- Mailbox (A place where the player will receive various letters from corresponding game events)

## 8.4 MapScene

- Arena selection screen
- Features:
    - 3 arenas (Bio/Tech/Magic themed)
    - Multiple rounds per arena
    - Boss battles
    - Progression system (wealth and status)
    - Fourth area unlocked for final boss

## 8.5 BattleScene

- Main gameplay screen
- Layout as per provided mockup image
- Features:
    - Dice selection and rolling
    - Character dialogue
    - Enemy display
    - Health/Money tracking
    - Animated crowd reactions

## 8.6 PostBattleScene

- Displayed after each fight
- Options:
    - Continue to next round
    - Exit event (return to bedroom)

# 9. Endgame Setup

## 9.1 Map Scene Overview

- Initially, only the playground & schoolyard arenas are visible.
- Players must become the schoolyard champion to unlock Arena Tournaments.
- Arena Tournaments consist of 6 tiers for each archetype, increasing in difficulty.
- A 7th tier (initially hidden) represents the Master of each archetype.

## 9.2 Progression System

 - Defeating Masters drops rune pieces for the Astral Arena Device.
 - The Astral Arena becomes visible after completing all three Master battles.
 - Unlocking the Astral Arena allows replaying previous arenas at higher difficulty.
 - Each arena drops unique rune pieces for varying combinations.

## 9.3 Rune System

- Runes act as modifiers, affecting difficulty scaling and rewards.
- Different rune combinations unlock various challenges in the Astral Arena.
- The system allows for easy content expansion and endgame progression.

## 9.4 Lore

- After defeating the Ancient Gods Cult Leaders, players enter the gods' domain.
- Gods have taken up the game in their celestial realms out of boredom and we find out it's actually the gods who invented the game in the first place merely using it as a tool to spread awareness of them amongst the humans without directly intervening while reliving their escapades in the Great War on Earth.
# 10. Future Considerations

- Unique, unmodifiable rings with powerful static effects
- Expanded storyline and character development
- Additional areas and enemy types
- Possible integration of character classes or specializations
- Advanced crafting system for gems and runes
- Seasonal events and limited-time challenges
- Multiplayer arena battles