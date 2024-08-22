# The Serpent's Eyes (TSE) - Comprehensive Game Design Document

## Table of Contents
1. [[#1. Core Concepts]]
2. [[#2. Dice System]]
   2.1 [[#2.1 Type Advantage]]
   2.2 [[#2.2 Dice Loadout]]
   2.3 [[#2.3 Dice Mastery System]]
   2.4 [[#2.4 Dice Upgrade System]]
   2.5 [[#2.5 Dice Special Effects]]
3. [[#3. Ring and Modifier System]]
   3.1 [[#3.1 Ring Types]]
   3.2 [[#3.2 Damage Application Formula]]
   3.3 [[#3.3 Defensive Application Formula]]
   3.4 [[#3.4 Complete Damage Calculation Formulas]]
      3.4.1 [[#3.4.1 Additive Multiplicative Formula]]
      3.4.2 [[#3.4.2 Multiplicative Formula]]
   3.5 [[#3.5 Gem System]]
      3.5.1 [[#3.5.1 Gem Tiers]]
      3.5.2 [[#3.5.2 Gem Modifier System]]
         3.5.2.1 [[#3.5.2.1 Modifier Types]]
         3.5.2.2 [[#3.5.2.2 Modifier Categories]]
   3.6 [[#3.6 Modifier Types and Effects]]
      3.6.1 [[#3.6.1 Pre-Roll Effects]]
      3.6.2 [[#3.6.2 Damage Modifier Effects]]
      3.6.3 [[#3.6.3 Critical Strike Effects]]
      3.6.4 [[#3.6.4 Post-Roll Effects]]
      3.6.5 [[#3.6.5 Post-Final Damage Effects]]
      3.6.6 [[#3.6.6 Reduction Effects]]
      3.6.7 [[#3.6.7 Type Modifier Effects]]
      3.6.8 [[#3.6.8 Post-Battle Effects]]
4. [[#4. Combat System]]
5. [[#5. Progression System]]
6. [[#6. UI Elements]]
7. [[#7. Game Flow]]
8. [[#8. Game Structure]]
   8.1 [[#8.1 MasterScene]]
   8.2 [[#8.2 CutsceneScene]]
   8.3 [[#8.3 BedroomScene]]
   8.4 [[#8.4 MapScene]]
   8.5 [[#8.5 BattleScene]]
   8.6 [[#8.6 PostBattleScene]]
9. [[#9. Endgame Setup]]
   9.1 [[#9.1 Map Scene Overview]]
   9.2 [[#9.2 Progression System]]
   9.3 [[#9.3 Rune System]]
   9.4 [[#9.4 Lore]]
10. [[#10. Future Considerations]]

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

### D4:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +1 minimum roll #
2. Dice Modifier Pre-Roll effect
   - +5 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +5 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +10 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +3x Multiplier
6. Dice Modifier Critical Chance bonus
   - 88% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +3x Crit Multiplier
8. Dice Ultimate Effect
   - -1 minimum roll #
   - Rolls of 1 = 11

### D6:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +2 minimum roll #
2. Dice Modifier Pre-Roll effect
   - +4 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +4 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +8 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +2.5x Multiplier
6. Dice Modifier Critical Chance bonus
   - 77% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +2.5x Crit Multiplier
8. Dice Ultimate Effect
   - +1 Dice Rolled for every 6 Rolled

### D8:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +3 minimum roll #
2. Dice Modifier Pre-Roll effect
   - +3 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +3 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +6 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +2x Multiplier
6. Dice Modifier Critical Chance bonus
   - 66% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +2x Crit Multiplier
8. Dice Ultimate Effect
   - +8 Reroll of non Max Roll

### D10:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +4 minimum Roll #
2. Dice Modifier Pre-Roll effect
   - +2 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +2 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +4 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +1.8x Multiplier
6. Dice Modifier Critical Chance bonus
   - 55% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +1.8x Crit Multiplier
8. Dice Ultimate Effect
   - Rolls of 10 = 20

### D12:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +5 minimum Roll #
2. Dice Modifier Pre-Roll effect
   - +1 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +1 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +2 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +1.6x Multiplier
6. Dice Modifier Critical Chance bonus
   - 44% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +1.6x Crit Multiplier
8. Dice Ultimate Effect
   - +4 minimum Roll #
   - +6% Crit Chance Bonus

### D20:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +4 minimum Roll #
2. Dice Modifier Pre-Roll effect
   - +3 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +3 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +6 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +1.4x Multiplier
6. Dice Modifier Critical Chance bonus
   - 33% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +1.4x Crit Multiplier
8. Dice Ultimate Effect
   - Rolls of 20 = 69

### D30:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +9 minimum Roll #
2. Dice Modifier Pre-Roll effect
   - +2 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +2 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +4 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +1.2x Multiplier
6. Dice Modifier Critical Chance bonus
   - 22% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +1.2x Crit Multiplier
8. Dice Ultimate Effect
   - +3 Dice Rolled
   - +5 minimum Roll #

### D100:
0. Plain Dice no modifier
1. Dice Modifier passive effect
   - +32 minimum Roll #
2. Dice Modifier Pre-Roll effect
   - +1 Dice Rolled
3. Dice Modifier Post-Roll Effect
   - +1 Reroll of non Max Roll
4. Dice Modifier Flat Bonus
   - +2 Flat Bonus
5. Dice Modifier Multiplier bonus
   - +1.1x Multiplier
6. Dice Modifier Critical Chance bonus
   - 11% Crit Chance Bonus
7. Dice Modifier Critical Strike Damage bonus
   - +1.1x Crit Multiplier
8. Dice Ultimate Effect
   - +17 minimum Roll #
   - +1 Dice Rolled

# 3. Ring and Modifier System

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

## 3.2 Damage Application Formula

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
17. Sum up Multiplier modifiers
18. Apply Type Advantage Modifier
19. Apply Dice Critical Chance Modifiers
20. Apply Gem Critical Chance Modifiers
21. Sum Critical Chance and calculate if the crit succeeds
22. If crit fails -> Go to step 27
23. If crit succeeds:
24. Apply Dice Critical Strike Damage Modifiers to Damage value
25. Apply Gem Critical Strike Damage Modifiers to Damage value
26. If overcrit occurs -> Calculate Overcrit value (150% = 1.5 flat critical strike damage value)
27. Sum Critical Strike Modifier Damage + Overcrit Damage value
28. Calculate Final Damage
29. Apply Post-Final Damage Effects (e.g., Poison Damage)
30. Output Final Damage

## 3.3 Defensive Application Formula

1. Apply True Strike effect (if attacker has it)
   - If successful, skip to step 5
2. Apply Dodge Chance (Pre-Roll Effect, Evasion)
   - If successful, nullify incoming damage and end formula
3. Apply Damage Reduction (Reduction Effect)
   - Reduce incoming damage by reduction percentage
4. Apply Shield Generator (Pre-Roll Effect, Damage Absorption)
   - Subtract shield value from incoming damage
5. Calculate and apply final damage to Bet Pool
6. Apply Post-Final Damage Effects (e.g., Poison Damage)
   - Add to ongoing Damage Over Time effects
7. Apply Top Up Value (Post-Roll Effect, Resource Management)
   - Recover a portion of lost Bet Pool from Banked $

## 3.4 Complete Damage Calculation Formulas

*NOTE:* *Neither is finalized, they are both included as both will need to be tested to see which system is better*

#### 3.4.1 Additive Multiplicative Formula

`FinalDamage = ((BaseDamage + FlatModifiers) * (1 + ∑MultiplicativeModifiers) * TypeAdvantage * (1 + CriticalMultiplier)) - DefensiveReduction`

`Where:`
- `BaseDamage = DiceRoll + PassiveEffects + PreRollEffects + PostRollEffects`
- `FlatModifiers = ∑(FlatDiceModifiers + FlatGemModifiers)`
- `MultiplicativeModifiers = ∑(DiceMultipliers + GemMultipliers + DamageMultipliers) - 1`
- `TypeAdvantage = 1 + TypeAdvantageModifier`
- `CriticalMultiplier = CriticalDamageModifier * CriticalChance`
- `DefensiveReduction = DodgeChance * IncomingDamage + DamageReduction + ShieldAbsorption`

`PostFinalDamage = FinalDamage + PoisonDamage`
`PlayerBetPoolDamage = PostFinalDamage - TopUpValue`

#### 3.4.2 Multiplicative Formula

`FinalDamage = ((BaseDamage + FlatModifiers) * ∏(1 + MultiplicativeModifier) * TypeAdvantage * (1 + CriticalMultiplier)) - DefensiveReduction`

`Where:`
- `BaseDamage = DiceRoll + PassiveEffects + PreRollEffects + PostRollEffects`
- `FlatModifiers = ∑(FlatDiceModifiers + FlatGemModifiers)`
- `MultiplicativeModifier = Each individual multiplier from DiceMultipliers, GemMultipliers, and DamageMultipliers`
- `TypeAdvantage = 1 + TypeAdvantageModifier`
- `CriticalMultiplier = CriticalDamageModifier * CriticalChance`
- `DefensiveReduction = DodgeChance * IncomingDamage + DamageReduction + ShieldAbsorption`

`PostFinalDamage = FinalDamage + PoisonDamage`
`PlayerBetPoolDamage = PostFinalDamage - TopUpValue`

`**Key differences:**`

1. `In the Additive formula, we sum all multiplicative modifiers and add 1 to the total.`
2. `In the Multiplicative formula, we multiply each modifier (plus 1) separately.`

`**Notes:**`

- `∑ represents the sum of all values`
- `∏ represents the product of all values`
- `Both formulas include the defensive calculations and post-final damage effects`
- `True Strike effect is not explicitly shown but would bypass the DefensiveReduction when active`
- `The formulas assume CriticalChance and DodgeChance are expressed as decimals (e.g., 0.25 for 25%)`

## 3.5 Gem System

The gem system provides deep customization options for players, allowing them to tailor their strategy through various combinations of gems and modifiers.

### 3.5.1 Gem Tiers

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

### 3.5.2 Gem Modifier System

#### 3.5.2.1 Modifier Types

Modifiers come in two primary forms:

1. Flat Modifiers: Add or subtract a specific value
   - Example: +10 Flat Damage

2. Multiplicative Modifiers: Multiply the effect by a value
   - Example: 1.20x (120% Multiplier)

The interplay between Flat and Multiplicative modifiers creates opportunities for complex and powerful combinations.

#### 3.5.2.2 Modifier Categories

Modifiers are divided into several categories based on when and how they're applied during combat:

Offensive Modifier Categories:
1. Passive Effects
2. Pre-Roll Effects
3. Damage Modifier Effects
4. Critical Strike Effects
5. Post-Roll Effects
6. Type Modifier Effects
7. Post-Final Damage Effects
8. Post-Battle Effects

Defensive Modifier Categories:
1. Evasion
2. Damage Absorption
3. Reduction Effects
4. Stat Modification
5. Defense Penetration
6. Resource Management

This categorization allows for intricate combinations of effects that can dramatically influence battle outcomes.

## 3.6 Modifier Types and Effects

### 3.6.1 Pre-Roll Effects

1. Dice Rolled:
   - Explanation: Increases the number of dice rolled in a turn.
   - Type: Flat
   - Effect: +1/+2/+3/+4/+5/+6/+7/+8/+10

2. Dodge Chance:
   - Explanation: Chance to completely avoid damage from an opponent's dice roll.
   - Category: Evasion
   - Type: Flat
   - Effect: 1%/2%/3%/4%/5%/6%/7%/8%/10%

3. Shield Generator:
   - Explanation: Creates a shield that absorbs a portion of incoming damage before it affects the player's Bet Pool.
   - Category: Damage Absorption
   - Type: Multiplicative
   - Effect: 0.02/0.04/0.06/0.08/0.10/0.12/0.14/0.16/0.20

4. Sapper:
   - Explanation: Reduces the opponent's Minimum Roll number, potentially lowering their damage output.
   - Category: Stat Modification
   - Type: Flat
   - Effect: 1/2/3/4/5/6/7/8/10

5. True Strike:
   - Explanation: Chance for a dice roll to ignore all enemy defenses when calculating final damage.
   - Category: Defense Penetration
   - Type: Flat
   - Effect: 0.02/0.04/0.06/0.08/0.10/0.12/0.14/0.16/0.20

6. Cheat Roll:
   - Explanation: Chance for a dice roll to cost 0 $, preserving the player's resources.
   - Category: Resource Management
   - Type: Flat
   - Effect: 0.02/0.04/0.06/0.08/0.10/0.12/0.14/0.16/0.20

### 3.6.2 Damage Modifier Effects

7. Damage Multiplier:
   - Explanation: Multiplies the final damage output of the dice roll.
   - Type: Multiplicative
   - Effect: 1.02/1.04/1.06/1.08/1.10/1.12/1.14/1.16/1.20x

8. Flat Damage:
   - Explanation: Adds a fixed amount of damage to the final damage calculation.
   - Type: Flat
   - Effect: 1/2/3/4/5/6/7/8/10

### 3.6.3 Critical Strike Effects

9. Critical Strike Chance:
   - Explanation: Increases the chance of landing a critical hit.
   - Type: Flat
   - Effect: 2%/4%/6%/8%/10%/12%/14%/16%/20%

10. Critical Strike Damage:
    - Explanation: Increases the damage multiplier applied on critical hits.
    - Type: Multiplicative
    - Effect: 1.02/1.04/1.06/1.08/1.10/1.12/1.14/1.16/1.20x

### 3.6.4 Post-Roll Effects

11. Top Up Value:
    - Explanation: Withdraws from player's Banked $ to recover Player Bet Pool after damage calculation.
    - Category: Resource Management
    - Type: Multiplicative
    - Effect: 0.02/0.04/0.06/0.08/0.10/0.12/0.14/0.16/0.20

### 3.6.5 Post-Final Damage Effects

12. Poison Damage:
    - Explanation: Applies additional damage over time after the final damage calculation.
    - Category: Damage Over Time
    - Type: Multiplicative
    - Effect: 1.02/1.04/1.06/1.08/1.10/1.12/1.14/1.16/1.20x of Final Damage
    - Repeats for 1/2/3/4/5/6/7/8/10 turns
    - Different instances stack together

### 3.6.6 Reduction Effects

13. Damage Reduction:
    - Explanation: Reduces the final incoming damage from all opponent's dice rolls.
    - Type: Multiplicative
    - Effect: 0.02/0.04/0.06/0.08/0.10/0.12/0.14/0.16/0.20

### 3.6.7 Type Modifier Effects

14. Advantage Modifier:
    - Explanation: Enhances the damage bonus received when attacking with a type advantage.
    - Type: Multiplicative
    - Effect: 0.02/0.04/0.06/0.08/0.10/0.12/0.14/0.16/0.20

### 3.6.8 Post-Battle Effects

15. Extortion:
    - Explanation: Increases the amount of $ received after winning a battle, capped at the opponent's total bank value.
    - Type: Multiplicative
    - Effect: 1.02/1.04/1.06/1.08/1.10/1.12/1.14/1.16/1.20x








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