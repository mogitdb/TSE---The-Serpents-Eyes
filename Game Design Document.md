# The Serpent's Eyes (TSE) - Comprehensive Game Design Document

# Table of Contents
1. [[#1. Core Concepts]]
2. [[#2. Dice System]]
   2.1 [[#2.1 Type Advantage]]
   2.2 [[#2.2 Dice Loadout]]
   2.3 [[#2.3 Dice Mastery System]]
   2.4 [[#2.4 Dice Upgrade System]]
   2.5 [[#2.5 Dice Special Effects]]
      2.5.1 [[#D4]]
      2.5.2 [[#D6]]
      2.5.3 [[#D8]]
      2.5.4 [[#D10]]
      2.5.5 [[#D12]]
      2.5.6 [[#D20]]
      2.5.7 [[#D30]]
      2.5.8 [[#D100]]
3. [[#3. Ring and Modifier System]]
   3.1 [[#3.1 Ring Types]]
      3.1.1 [[#Basic Rings]]
      3.1.2 [[#Amplifier Rings]]
      3.1.3 [[#Cursed Rings]]
   3.2 [[#3.2 Gem System]]
      3.2.1 [[#3.2.1 Gem Tiers]]
      3.2.2 [[#3.2.2 Gem Modifier System]]
   3.3 [[#3.3 Modifier Types and Effects]]
      3.3.1 [[#3.3.1 Modifier Tiers and Ranges]]
      3.3.2 [[#3.3.2 Pre-Roll Effects]]
      3.3.3 [[#3.3.3 Damage Modifier Effects]]
      3.3.4 [[#3.3.4 Critical Strike Effects]]
      3.3.5 [[#3.3.5 Post-Roll Effects]]
      3.3.6 [[#3.3.6 Post-Final Damage Effects]]
      3.3.7 [[#3.3.7 Reduction Effects]]
      3.3.8 [[#3.3.8 Type Modifier Effects]]
      3.3.9 [[#3.3.9 Post-Battle Effects]]
4. [[#4. Robot Companion System]]
   4.1 [[#4.1 Initial Activation]]
   4.2 [[#4.2 Robot Personalities]]
      4.2.1 [[#4.2.1 Kawaii (Bio Cult)]]
      4.2.2 [[#4.2.2 Strict (Tech Cult)]]
      4.2.3 [[#4.2.3 Logical (Magic Cult)]]
      4.2.4 [[#4.2.4 Cold (Ancient Gods)]]
   4.3 [[#4.3 Friendship Levels]]
      4.3.1 [[#4.3.1 Levels (0-8)]]
      4.3.2 [[#4.3.2 Leveling Up]]
   4.4 [[#4.4 Upgrade System]]
      4.4.1 [[#4.4.1 Friendship Level Requirements]]
      4.4.2 [[#4.4.2 Upgrade Restrictions]]
      4.4.3 [[#4.4.3 Progression Gates]]
   4.5 [[#4.5 Dialogue Events]]
      4.5.1 [[#4.5.1 Structure]]
      4.5.2 [[#4.5.2 Topics]]
   4.6 [[#4.6 Faction-Specific Traits]]
      4.6.1 [[#4.6.1 Kawaii (Bio Cult)]]
      4.6.2 [[#4.6.2 Strict (Tech Cult)]]
      4.6.3 [[#4.6.3 Logical (Magic Cult)]]
      4.6.4 [[#4.6.4 Cold (Ancient Gods)]]
   4.7 [[#4.7 Friendship Benefits]]
   4.8 [[#4.8 Gift System]]
   4.9 [[#4.9 Robot Switching]]
5. [[#5. Crafting System]]
   5.1 [[#5.1 Gem System]]
      5.1.1 [[#5.1.1 Gem Levels]]
      5.1.2 [[#5.1.2 Gem Crafting Materials]]
   5.2 [[#5.2 Modifier Crafting Materials]]
      5.2.1 [[#5.2.1 Modifier Rarity Tiers]]
      5.2.2 [[#5.2.2 Modifier Crafting Materials]]
      5.2.3 [[#5.2.3 Additional Crafting Materials]]
6. [[#6. Combat System]]
   6.1 [[#6.1 Dice Selection and Cost]]
      6.1.1 [[#6.1.1 Dice Loadout]]
      6.1.2 [[#6.1.2 Dice Cost]]
      6.1.3 [[#6.1.3 Dice Selection Interface]]
   6.2 [[#6.2 Combat Flow]]
      6.2.1 [[#6.2.1 Turn Structure]]
      6.2.2 [[#6.2.2 Simultaneous Action Resolution]]
   6.3 [[#6.3 Dice Rolling Mechanics]]
      6.3.1 [[#6.3.1 Roll Animation]]
      6.3.2 [[#6.3.2 Result Display]]
   6.4 [[#6.4 Damage Calculation and Application]]
      6.4.1 [[#6.4.1 Offensive Calculation]]
      6.4.2 [[#6.4.2 Defensive Calculation]]
      6.4.3 [[#6.4.3 Damage Application]]
      6.4.4 [[#6.4.4 Complete Damage Calculation Formulas]]
      6.4.5 [[#6.4.5 Formula Explanations]]
   6.5 [[#6.5 Combat Resolution]]
      6.5.1 [[#6.5.1 Victory Conditions]]
      6.5.2 [[#6.5.2 Post-Battle Screen]]
   6.6 [[#6.6 User Interface Elements]]
      6.6.1 [[#6.6.1 Health/Bet Pool Display]]
      6.6.2 [[#6.6.2 Announcer Commentary]]
      6.6.3 [[#6.6.3 Crowd Reactions]]
      6.6.4 [[#6.6.4 Player/Enemy Dialogue]]
      6.6.5 [[#6.6.5 Combat Log]]
   6.7 [[#6.7 Special Mechanics]]
      6.7.1 [[#6.7.1 Multiple Dice Rolls]]
      6.7.2 [[#6.7.2 DoT (Damage over Time) Effects]]
      6.7.3 [[#6.7.3 Type Advantage System]]
   6.8 [[#6.8 Example Combat Scenarios]]
      6.8.1 [[#6.8.1 Early Game Scenario]]
      6.8.2 [[#6.8.2 Mid Game Scenario]]
      6.8.3 [[#6.8.3 End Game Scenario]]
7. [[#7. Economy and Progression System]]
   7.1 [[#7.1 Currency System]]
      7.1.1 [[#7.1.1 Bet Pool]]
      7.1.2 [[#7.1.2 Piggy Bank System]]
   7.2 [[#7.2 Combat Economy]]
      7.2.1 [[#7.2.1 Money Management]]
      7.2.2 [[#7.2.2 Self-Imposed Challenges]]
   7.3 [[#7.3 Sponsorship System]]
   7.4 [[#7.4 Risk vs. Reward]]
   7.5 [[#7.5 Progression System]]
      7.5.1 [[#7.5.1 Area Structure]]
      7.5.2 [[#7.5.2 Bet Pool Scaling]]
      7.5.3 [[#7.5.3 Difficulty Scaling]]
      7.5.4 [[#7.5.4 Enemy Equipment Scaling]]
      7.5.5 [[#7.5.5 Loot Drop System]]
      7.5.6 [[#7.5.6 Enemy Types]]
      7.5.7 [[#7.5.7 Progression Gating]]
   7.6 [[#7.6 Endgame System]]
      7.6.1 [[#7.6.1 Ultimate Boss]]
      7.6.2 [[#7.6.2 Honor System]]
      7.6.3 [[#7.6.3 Astral Arena]]
   7.7 [[#7.7 Additional Notes]]
8. [[#8. UI Elements]]
9. [[#9. Game Flow]]
10. [[#10. Game Structure]]
    10.1 [[#10.1 Master Scene]]
    10.2 [[#10.2 Cutscene Scene]]
    10.3 [[#10.3 Bedroom Scene]]
    10.4 [[#10.4 Map Scene]]
    10.5 [[#10.5 Battle Scene]]
    10.6 [[#10.6 Post Battle Scene]]
11. [[#11. Endgame Setup]]
    11.1 [[#11.1 Map Scene Overview]]
    11.2 [[#11.2 Progression System]]
    11.3 [[#11.3 Rune System]]
    11.4 [[#11.4 Lore]]
12. [[#12. Future Considerations]]
## 1. Core Concepts

- A dice-based combat RPG with strategic elements
- Money serves as both health and a resource
- Type advantage system (Tech > Magic > Bio > Tech, with a neutral Ancient type)
- Customizable dice loadout with modifiable rings for two hands (second hand unlocked in endgame)
- Long-term progression with multiple areas and increasing difficulty
- Mastery System: Players gain bonuses for consistently using certain dice types or strategies

## 2. Dice System

The game features four types of dice: Bio, Tech, Magic, and Ancient (neutral). Players select their dice loadout before battles, with no hot-swapping during combat.

### 2.1 Type Advantage

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

### 2.2 Dice Loadout

- Players set their dice loadout in the BedroomScenes Dice Loadout section (Altar)
- The loadout determines which dice types are available during battle
- Strategic decisions must be made when selecting dice for the loadout
- Loadout capacity increases with player progression
 - Slot 2/3 Unlocked after being School Boss
 - Slot 3/4/5 Unlocked after beating Tech/Magic/Bio Final Bosses.
 - Slot 6/7 Unlocked After defeating the final boss that unlocks the Astral Arena.
### 2.3 Dice Mastery System

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
### 2.4 Dice Upgrade System

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
### 2.5 Dice Special Effects

#### D4:
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

#### D6:
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

#### D8:
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

#### D10:
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

#### D12:
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

#### D20:
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

#### D30:
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

#### D100:
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

## 3. Ring and Modifier System

- Basic Rings can be equipped on each Finger (second hand unlocked in endgame)
- Each ring has up to 5 gem slots (unlocked through progression)
- Gems provide various effects and can be upgraded through multiple tiers
- Gem effects apply to all dice and are separated into Pre-Roll/Post-Roll/Passive/Damage Modifier Effects/Critical Strike Chance Effects/Critical Strike Damage Effects

### 3.1 Ring Types

#### Basic Rings

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

#### Amplifier Rings

1. Silver Amplifier Ring
   - 1 Slot
   - 4x (Quadruples the effects of slotted gem)

2. Gold Amplifier Ring
   - 2 Slots
   - 3x (Triples the effects of slotted gems)

3. Titanium Amplifier Ring
   - 3 Slots
   - 2x (Doubles the effects of slotted gems)

#### Cursed Rings

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
### 3.2 Gem System

The gem system provides deep customization options for players, allowing them to tailor their strategy through various combinations of gems and modifiers.

#### 3.2.1 Gem Tiers

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

#### 3.2.2 Gem Modifier System

##### Modifier Types
Modifiers come in two primary forms:
1. Flat Modifiers: Add or subtract a specific value
   - Example: +10 Flat Damage
2. Multiplicative Modifiers: Multiply the effect by a value
   - Example: 1.20x (120% Multiplier)

The interplay between Flat and Multiplicative modifiers creates opportunities for complex and powerful combinations.

##### Modifier Categories
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

### 3.3 Modifier Types and Effects
#### 3.3.1 Modifier Tiers and Ranges
Modifiers are divided into 8 tiers, each with increasing power:

Tier 1: 0.25% - 0.29% (or 1.02 - 1.029 for multiplicative effects)
Tier 2: 0.50% - 0.59% (or 1.04 - 1.049 for multiplicative effects)
Tier 3: 0.75% - 0.89% (or 1.06 - 1.069 for multiplicative effects)
Tier 4: 1.00% - 1.19% (or 1.08 - 1.089 for multiplicative effects)
Tier 5: 1.25% - 1.49% (or 1.10 - 1.109 for multiplicative effects)
Tier 6: 1.50% - 1.69% (or 1.12 - 1.129 for multiplicative effects)
Tier 7: 1.75% - 1.89% (or 1.14 - 1.149 for multiplicative effects)
Tier 8: 1.90% - 2.00% (or 1.16 - 1.20 for multiplicative effects)

Flat vs. Multiplicative Effects:
- Flat effects: These are straightforward additions or subtractions to a value. For percentage-based flat effects, the percentage is directly added or subtracted from the base value.
- Multiplicative effects: These multiply the base value by the given amount. For example, a 1.05 multiplicative effect increases the base value by 5%.

Static Values:
Some modifiers (e.g., Dice Rolled, Sapper, Flat Damage, Poison Damage turns) have static values per tier instead of ranges. These values are fixed and do not vary within the tier.

Note: When applying multiple modifiers, flat effects are calculated before multiplicative effects to ensure consistent scaling.
### 3.3.2 Pre-Roll Effects

1. Dice Rolled:
   - Explanation: Increases the number of dice rolled in a turn.
   - Type: Flat
   - Effect: 
     Tier 1: +1
     Tier 2: +2
     Tier 3: +3
     Tier 4: +4
     Tier 5: +5
     Tier 6: +6
     Tier 7: +7
     Tier 8: +10

2. Dodge Chance:
   - Explanation: Chance to completely avoid damage from an opponent's dice roll.
   - Category: Evasion
   - Type: Flat
   - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

3. Shield Generator:
   - Explanation: Creates a shield that absorbs a portion of incoming damage before it affects the player's Bet Pool.
   - Category: Damage Absorption
   - Type: Flat
   - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

4. Sapper:
   - Explanation: Reduces the opponent's Minimum Roll number, potentially lowering their damage output.
   - Category: Stat Modification
   - Type: Flat
   - Effect:
     Tier 1: 1
     Tier 2: 2
     Tier 3: 3
     Tier 4: 4
     Tier 5: 5
     Tier 6: 6
     Tier 7: 7
     Tier 8: 10

5. True Strike:
   - Explanation: Chance for a dice roll to ignore all enemy defenses when calculating final damage.
   - Category: Defense Penetration
   - Type: Flat
   - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

6. Cheat Roll:
   - Explanation: Chance for a dice roll to cost 0 $, preserving the player's resources.
   - Category: Resource Management
   - Type: Flat
   - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

### 3.3.3 Damage Modifier Effects

7. Damage Multiplier:
   - Explanation: Multiplies the final damage output of the dice roll.
   - Type: Multiplicative
   - Effect:
     Tier 1: 1.02 - 1.029
     Tier 2: 1.04 - 1.049
     Tier 3: 1.06 - 1.069
     Tier 4: 1.08 - 1.089
     Tier 5: 1.10 - 1.109
     Tier 6: 1.12 - 1.129
     Tier 7: 1.14 - 1.149
     Tier 8: 1.16 - 1.20

8. Flat Damage:
   - Explanation: Adds a fixed amount of damage to the final damage calculation.
   - Type: Flat
   - Effect:
     Tier 1: 1
     Tier 2: 2
     Tier 3: 3
     Tier 4: 4
     Tier 5: 5
     Tier 6: 6
     Tier 7: 7
     Tier 8: 10

### 3.3.4 Critical Strike Effects

9. Critical Strike Chance:
   - Explanation: Increases the chance of landing a critical hit.
   - Type: Flat
   - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

10. Critical Strike Damage:
    - Explanation: Increases the damage multiplier applied on critical hits.
    - Type: Multiplicative
    - Effect:
      Tier 1: 1.02 - 1.029
      Tier 2: 1.04 - 1.049
      Tier 3: 1.06 - 1.069
      Tier 4: 1.08 - 1.089
      Tier 5: 1.10 - 1.109
      Tier 6: 1.12 - 1.129
      Tier 7: 1.14 - 1.149
      Tier 8: 1.16 - 1.20

### 3.3.5 Post-Roll Effects

11. Top Up Value:
    - Explanation: Withdraws from player's Banked $ to recover Player Bet Pool after damage calculation.
    - Category: Resource Management
    - Type: Flat
    - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

### 3.3.6 Post-Final Damage Effects

12. Poison Damage:
    - Explanation: Applies additional damage over time after the final damage calculation.
    - Category: Damage Over Time
    - Type: Multiplicative
    - Effect:
      Tier 1: 1.02 - 1.029
      Tier 2: 1.04 - 1.049
      Tier 3: 1.06 - 1.069
      Tier 4: 1.08 - 1.089
      Tier 5: 1.10 - 1.109
      Tier 6: 1.12 - 1.129
      Tier 7: 1.14 - 1.149
      Tier 8: 1.16 - 1.20
    - Repeats for:
      Tier 1: 1 turn
      Tier 2: 2 turns
      Tier 3: 3 turns
      Tier 4: 4 turns
      Tier 5: 5 turns
      Tier 6: 6 turns
      Tier 7: 7 turns
      Tier 8: 8 turns
    - Different instances stack together

### 3.3.7 Reduction Effects

13. Damage Reduction:
    - Explanation: Reduces the final incoming damage from all opponent's dice rolls.
    - Type: Flat
    - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

### 3.3.8 Type Modifier Effects

14. Advantage Modifier:
    - Explanation: Enhances the damage bonus received when attacking with a type advantage.
    - Type: Flat
    - Effect:
     Tier 1: 0.25% - 0.29%
     Tier 2: 0.50% - 0.59%
     Tier 3: 0.75% - 0.89%
     Tier 4: 1.00% - 1.19%
     Tier 5: 1.25% - 1.49%
     Tier 6: 1.50% - 1.69%
     Tier 7: 1.75% - 1.89%
     Tier 8: 1.90% - 2.00%

### 3.3.9 Post-Battle Effects

15. Extortion:
    - Explanation: Increases the amount of $ received after winning a battle, capped at the opponent's total bank value.
    - Type: Multiplicative
    - Effect:
      Tier 1: 1.02 - 1.029
      Tier 2: 1.04 - 1.049
      Tier 3: 1.06 - 1.069
      Tier 4: 1.08 - 1.089
      Tier 5: 1.10 - 1.109
      Tier 6: 1.12 - 1.129
      Tier 7: 1.14 - 1.149
      Tier 8: 1.16 - 1.20


## 4. Robot Companion System

### 4.1 Initial Activation

When the player first enters their bedroom after selecting their initial dice, the Robot Companion activates. The Robot's personality is determined by the player's dice choice:

1. Bio Dice: Kawaii Robot (Bio Cult)
2. Tech Dice: Strict Robot (Tech Cult)
3. Magic Dice: Logical Robot (Magic Cult)
4. Ancient Dice: Cold Robot (Ancient Gods)

The Robot introduces itself and explains its purpose.

### 4.2 Robot Personalities

#### 4.2.1 Kawaii (Bio Cult)
Bubbly, energetic, and adorable

#### 4.2.2 Strict (Tech Cult)
Disciplined, perfectionist, and stern

#### 4.2.3 Logical (Magic Cult)
Analytical, calm, and methodical

#### 4.2.4 Cold (Ancient Gods)
Distant, mysterious, and aloof
### 4.3 Friendship Levels

#### 4.3.1 Levels (0-8):
0. Stranger (0/3)
1. Acquaintance (3/6)
2. Friend (6/12)
3. Close Friend (12/24)
4. BFF (24/48)
5. Soulmate (48/96)
6. Eternal Bond (96/192)
7. Cosmic Connection (192/384)
8. Transcendent Unity (384/768)

#### 4.3.2 Leveling Up:
- Displayed as a progress bar with current/total points
- Choosing correct response: +1 point
- Choosing incorrect response: -1 point (minimum 0)
- Cannot lose a friendship level once achieved

### 4.4 Upgrade System

#### 4.4.1 Friendship Level Requirements:
- Level 0-1: Available from the start (T1 mods)
- Level 2: Unlocked after defeating School Area Mini-Boss (T2 mods)
- Level 3: Unlocked after defeating First Faction Area Mini-Boss (T3 mods)
- Level 4: Unlocked after defeating First Faction Area Boss (T4 mods)
- Level 5: Unlocked after defeating Second Faction Area Mini-Boss (T5 mods)
- Level 6: Unlocked after defeating Second Faction Area Boss (T6 mods)
- Level 7: Unlocked after defeating Third Faction Area Mini-Boss (T7 mods)
- Level 8: Unlocked after defeating Third Faction Area Boss (T8 mods)
#### 4.4.2 Upgrade Restrictions:
- Dice upgrade levels capped by Robot friendship level
- Modifier roll levels at crafting table capped by Robot friendship level
- Players must defeat a boss with corresponding tier of mods to unlock the next tier

#### 4.4.3 Progression Gates:
- School Area: T1-T2 mods available
- First Faction Area: T2-T4 mods available
- Second Faction Area: T4-T6 mods available
- Third Faction Area: T6-T8 mods available
- Astral Arena: All mod tiers available

### 4.5 Dialogue Events

#### 4.5.1 Structure:
1. Robot initiates conversation (available between rounds)
2. Player chooses from 3-4 response options
3. Robot reacts based on chosen response
4. Friendship points adjusted

#### 4.5.2 Topics:
- Personal growth and self-improvement
- Game strategy and tips
- Lore and world-building (faction-specific)
- Personal experiences and emotions

### 4.6 Faction-Specific Traits

#### 4.6.1 Kawaii (Bio Cult):
- Uses lots of emojis and cute expressions
- Gives encouragement with stickers and virtual hugs
- Reveals lore about the Bio Cult faction

#### 4.6.2 Strict (Tech Cult):
- Critiques player's performance
- Offers tough love and harsh truths
- Reveals lore about the Tech Cult faction

#### 4.6.3 Logical (Magic Cult):
- Provides detailed statistical analysis
- Discusses game mechanics in-depth
- Reveals lore about the Magic Cult faction

#### 4.6.4 Cold (Ancient Gods):
- Gives cryptic responses
- Slowly opens up as friendship grows
- Reveals lore about the Ancient Gods faction

### 4.7 Friendship Benefits

- Unlock exclusive upgrades and crafting options
- Receive helpful hints and strategy tips
- Uncover secret lore and backstory elements
- Unique Modifiers unlocked at levels 3, 6, and 8:
  - Level 3: Passive type advantage modifier
  - Level 6: Pre-roll modifier
  - Level 8: Post-roll modifier

### 4.8 Gift System

- Players can gift crafting materials to the Robot
- +5 flat friendship points per gift
- Limited to once every 3 matches

### 4.9 Robot Switching

- Players can switch Robots at any time using the computer
- Each Robot maintains its own friendship level
- Switching allows players to unlock all faction-specific lore and modifiers

## 5. Crafting System

### 5.1 Gem System

#### 5.1.1 Gem Levels
1. Quartz (1 modifier line)
2. Amethyst (2 modifier lines)
3. Topaz (3 modifier lines)
4. Emerald (4 modifier lines)
5. Sapphire (5 modifier lines)
6. Ruby (6 modifier lines)
7. Diamond (7 modifier lines)
8. Opal (8 modifier lines)

#### 5.1.2 Gem Crafting Materials

##### 5.1.2.1 Gem Transfigurator
- Effect: Randomizes the Gem upgrade level
- Scaling chances:
  - Level 1-3: 25% each
  - Level 4-5: 10% each
  - Level 6: 5%
  - Level 7: 2%
  - Level 8: 1%
- Explanation: Use this to gamble on potentially jumping multiple gem levels at once

##### 5.1.2.2 Gem Transformer
- Effect: Upgrades Gem level by +1 or -1
- Scaling chances for upgrade:
  - Level 1-3: 80%
  - Level 4-5: 50%
  - Level 6: 25%
  - Level 7-8: 5%
- Failed upgrades result in -1 level
- Explanation: A more controlled way to level up gems, but with increasing risk at higher levels

##### 5.1.2.3 Gem Polisher
- Effect: Randomly changes Gem Quality by ±(1-5)
- Difficulty increases every 5 quality levels
- Scaling chances for positive change:
  - Quality 1-20: 80%
  - Quality 21-40: 70%
  - Quality 41-60: 60%
  - Quality 61-80: 50%
  - Quality 81-95: 25%
  - Quality 96-100: 5%
- Quality range: 1-100 (1.01x to 2.00x modifier multiplier)
- Explanation: Use to gradually improve gem quality, with increasing risk at higher qualities

##### 5.1.2.4 Gem Waxer
- Effect: Flat 5% quality upgrade per use
- Material cost scaling:
  - Quality 1-20: 1 Waxer
  - Quality 21-40: 2 Waxers
  - Quality 41-60: 5 Waxers
  - Quality 61-80: 10 Waxers
  - Quality 81-95: 15 Waxers
  - Quality 96-100: 20 Waxers
- Explanation: A guaranteed way to increase quality, but becomes very expensive at higher levels

### 5.2 Modifier Crafting Materials

#### 5.2.1 Modifier Rarity Tiers
- T1: Lines 1/2 only
- T2: Lines 3/4 only
- T3: Lines 5/6 only
- T4: Lines 7/8 only

#### 5.2.2 Modifier Crafting Materials

##### 5.2.2.1 Chaotic Gem Reformers
- T1/2/3/4 Chaotic Dull Gem Reformer (Tier 1-3 Mods)
- T1/2/3/4 Chaotic Sharp Gem Reformer (Tier 4-6 Mods)
- T1/2/3/4 Chaotic Perfect Gem Reformer (Tier 7-8 Mods)
- Effect: Randomly rolls both mods in the specified ranges
- Explanation: Use these to quickly reroll multiple mod lines, with control over the general power level

##### 5.2.2.2 Gem Slammers
- 1/2/3/4/5/6/7/8 Dull Gem Slammer (Tier 1-3 Mods)
- 1/2/3/4/5/6/7/8 Sharp Gem Slammer (Tier 4-6 Mods)
- 1/2/3/4/5/6/7/8 Perfect Gem Slammer (Tier 7-8 Mods)
- Effect: Randomly rolls a single mod on the corresponding line
- Explanation: For precise modification of individual mod lines

##### 5.2.2.3 Gem Tweakers
- 1/2/3/4/5/6/7/8 Dull Gem Tweaker (Tier 1-3 Mods)
- 1/2/3/4/5/6/7/8 Sharp Gem Tweaker (Tier 4-6 Mods)
- 1/2/3/4/5/6/7/8 Perfect Gem Tweaker (Tier 7-8 Mods)
- Effect: Randomly rolls the values on the specified line within its tier range
- Explanation: Use to adjust the strength of a mod without changing its type or tier.

#### 5.2.3 Additional Crafting Materials

##### 5.2.3.1 Gem Locksmith's Kits
- Single Line Locksmith's Kit: Locks one modifier line
- Dual Line Locksmith's Kit: Locks two modifier lines
- Quad Line Locksmith's Kit: Locks four modifier lines
- Effect: Prevents locked lines from being changed by other crafting materials
- Explanation: Use to protect valuable mods while working on other parts of the gem

##### 5.2.3.2 Gem Erasers
- 1/2/3/4/5/6/7/8 Gem Eraser
- Effect: Removes the modifier on the corresponding line, leaving it blank
- Explanation: Use to selectively remove unwanted mods without affecting others

##### 5.2.3.3 Gem Enhancer
- Effect: Slightly increases the values of all modifiers on a gem (within their current tier range)
- Scaling: 
  - For percentage-based effects: Increases the value by 0.01% within the current tier range
  - For multiplicative effects: Increases the value by 0.001 within the current tier range
- Exceptions: Does not affect modifiers with static values (Dice Rolled, Sapper, Flat Damage, Poison Damage turns)
- Explanation: A rare and powerful tool for perfecting nearly-ideal gems, allowing fine-tuning of modifier values without changing tiers

##### 5.2.3.4 Gem Resonators
- 1/2/3/4/5/6/7/8 Gem Resonator
- Effect: Randomly upgrades or downgrades the tier of the mod on the corresponding line by ±1
- Scaling chances:
  - Upgrade: 40%
  - No change: 20%
  - Downgrade: 40%
- Explanation: A risky way to potentially increase the power of a specific mod

##### 5.2.3.5 Gem Party Hat
- Effect: Completely randomizes all aspects of a gem (level, quality, and modifiers), ignoring all present unlock restrictions
- Explanation: An ultra-rare item that can create gems with mods far beyond the player's current level, making it incredibly valuable especially in early game
- Drop rate: 1% (Extremely Rare)



## 6. Combat System

### 6.1 Dice Selection and Cost

#### 6.1.1 Dice Loadout
- Players have a customizable dice loadout displayed at the bottom of the screen
- Loadout consists of various dice types (d4, d6, d8, d10, d12, d20, d30, d100)
- Opponents have randomly generated or statically set dice based on the zone

#### 6.1.2 Dice Cost
- Base cost equals the number of sides on a die for the first $100 battle
- Costs scale in relation to the bet pool cost for subsequent battles
- Scaling formula: Dice Cost = (Number of Sides) * (Current Bet Pool / 100)
- This scaling does not account for any advantages provided by player sponsors

#### 6.1.3 Dice Selection Interface
- Players select dice by clicking, changing the outline color
- Hovering over dice displays potential outcomes, including:
  - Damage range
  - Crit rate and damage
  - Number of rolls
  - Flat damage modifiers
  - Multiplier modifiers
  - Pre-roll effects (e.g., Dodge Chance, Shield Generator, Sapper, True Strike, Cheat Roll)
  - Post-roll effects (e.g., Top Up Value)
  - Type advantage modifiers
  - Post-final damage effects (e.g., Poison Damage)
  - Extortion value (post-battle effect)

### 6.2 Combat Flow

#### 6.2.1 Turn Structure
1. Player selects dice and clicks roll button
2. Opponent automatically selects dice (random or predetermined)
3. Announcers provide commentary
4. Dice roll animations play out
5. Additional dice rolls from effects are added and resolved
6. Results are displayed and calculated
7. Damage is applied
8. Round ends, and next round begins if both players are alive

#### 6.2.2 Simultaneous Action Resolution
- Both players' actions occur simultaneously when the player clicks roll
- In case of mutual defeat, announcers roll a tie-breaking die

### 6.3 Dice Rolling Mechanics

#### 6.3.1 Roll Animation
- Visual spectacle of dice rolling in the arena tray
- No physics simulation for performance reasons
- Potentially hundreds of dice rolling in late-game scenarios
- Dice display final results face-up

#### 6.3.2 Result Display
- Player and opponent dice collect on respective sides of the arena
- Dice show roll number result faces up
- Extra dice rolls (from effects) appear as subsequent rounds of throws within the same turn
- Popup window shows:
  - Individual roll results separated by commas
  - Tally number
  - Step-by-step modifier calculations separated by line breaks
  - Final damage value
- Scrollable window for detailed review
- Window covers the tray and crowd but leaves bottom row (announcers, cheerleaders) visible

### 6.4 Damage Calculation and Application

#### 6.4.1 Offensive Calculation

The offensive calculation determines the raw damage output before defensive reductions are applied. It follows these steps:

1. Apply Dice Modifier Passive Effects
2. Apply Ring modifiers to Gems (passive/pre/post)
3. Apply Gem Passive effects
4. Sum up Gem Passive Effect Totals
5. Apply Dice Modifiers to Pre-Roll effects
6. Apply Gem Modifiers to Pre-Roll effects
7. Sum up Pre-Roll effects
8. Roll initial dice
9. Calculate and apply additional dice rolls from Pre-Roll effects
10. Apply Dice Modifier Post-Roll effects
11. Apply Gem Modifier Post-Roll effects
12. Sum up Post-Roll effects
13. Apply Flat Dice Modifiers to Damage value
14. Apply Flat Gem Modifiers to Damage value
15. Sum up Flat modifiers to Damage value
16. Apply Multiplier Dice Modifiers to Damage value
17. Apply Multiplier Gem Modifiers to Damage value
18. Sum up Multiplier modifiers
19. Apply Type Advantage Modifier
20. Apply Dice Critical Chance Modifiers
21. Apply Gem Critical Chance Modifiers
22. Sum Critical Chance and calculate if the crit succeeds
23. If crit fails -> Go to step 28
24. If crit succeeds:
25. Apply Dice Critical Strike Damage Modifiers to Damage value
26. Apply Gem Critical Strike Damage Modifiers to Damage value
27. If overcrit occurs -> Calculate Overcrit value (150% = 1.5 flat critical strike damage value)
28. Sum Critical Strike Modifier Damage + Overcrit Damage value
29. Calculate Final Damage
30. Apply Post-Final Damage Effects (e.g., Poison Damage)
31. Output Final Damage

**Note on Calculation Methods:**

Two primary methods can be used for calculating damage in this system:

1. Pooled Dice Damage:
   - All dice rolls are summed together before applying modifiers.
   - Pros: Computationally less intensive, faster calculations.
   - Cons: Less granular, may lose some of the nuance of individual die effects.

2. Individual Die Calculation:
   - Each die roll is calculated separately through the entire process.
   - Pros: More accurate representation of each die's contribution, allows for more complex interactions between effects.
   - Cons: Computationally more intensive, may slow down gameplay for very large numbers of dice.

The choice between these methods can significantly impact gameplay, particularly for effects that trigger on individual rolls (like DoTs or on-hit effects). Individual calculation allows for more strategic depth and potentially more exciting moments of extreme damage or effect stacking. However, it may require more optimization to ensure smooth gameplay, especially in late-game scenarios with hundreds of dice rolls.

For initial implementation, pooled dice damage might be easier to balance and optimize. As the game develops, transitioning to individual die calculation could add more depth and strategic options, particularly if combined with effects that trigger on specific roll results or sequences.

The final choice should be based on the desired complexity of the combat system, computational resources available, and the overall game feel you're aiming for. Testing both methods with various scenarios will provide valuable insights into which approach best suits the game's design goals.

#### 6.4.2 Defensive Calculation

The defensive calculation determines how much of the offensive damage is mitigated or avoided. It follows these steps:

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

#### 6.4.3 Damage Application

The damage application process visualizes the calculations for the player:

- Displayed in a separate popup after offensive calculations
- Shows step-by-step defensive calculations
- Final damage applied with announcer commentary
- Player clicks "Next" button to proceed through calculation stages

#### 6.4.4 Complete Damage Calculation Formulas

We have two potential formulas for calculating damage. Both will need to be tested to determine which system provides better gameplay balance.

##### 6.4.4.1 Additive Multiplicative Formula

`FinalDamage = ((BaseDamage + FlatModifiers) * (1 + ∑MultiplicativeModifiers) * TypeAdvantage * CriticalMultiplier) - DefensiveReduction`

`Where:`
- `BaseDamage = ∑(DiceRoll * NumRolls) + PassiveEffects + PreRollEffects + PostRollEffects`
- `FlatModifiers = ∑(FlatDiceModifiers + FlatGemModifiers)`
- `MultiplicativeModifiers = ∑(DiceMultipliers + GemMultipliers + DamageMultipliers)`
- `TypeAdvantage = TypeAdvantageModifier`
- `CriticalMultiplier = 1 + (CriticalDamageModifier * CriticalChance)`
- `DefensiveReduction = (1 - DodgeChance) * (IncomingDamage * (1 - DamageReduction) - ShieldAbsorption)`

`PostFinalDamage = FinalDamage + PoisonDamage`
`PlayerBetPoolDamage = PostFinalDamage - TopUpValue`

##### 6.4.4.2 Multiplicative Formula

`FinalDamage = ((BaseDamage + FlatModifiers) * ∏(1 + MultiplicativeModifier) * TypeAdvantage * CriticalMultiplier) - DefensiveReduction`

`Where:`
- `BaseDamage = ∑(DiceRoll * NumRolls) + PassiveEffects + PreRollEffects + PostRollEffects`
- `FlatModifiers = ∑(FlatDiceModifiers + FlatGemModifiers)`
- `MultiplicativeModifier = Each individual multiplier from DiceMultipliers, GemMultipliers, and DamageMultipliers`
- `TypeAdvantage = TypeAdvantageModifier`
- `CriticalMultiplier = 1 + (CriticalDamageModifier * CriticalChance)`
- `DefensiveReduction = (1 - DodgeChance) * (IncomingDamage * (1 - DamageReduction) - ShieldAbsorption)`

`PostFinalDamage = FinalDamage + PoisonDamage`
`PlayerBetPoolDamage = PostFinalDamage - TopUpValue`

**Key differences:**
1. In the Additive formula, we sum all multiplicative modifiers.
2. In the Multiplicative formula, we multiply each modifier (plus 1) separately.

**Notes:**
- ∑ represents the sum of all values
- ∏ represents the product of all values
- BaseDamage includes NumRolls to account for multiple dice rolls
- CriticalMultiplier represents both the chance and multiplier of critical hits
- DefensiveReduction accounts for dodge chance, damage reduction, and shield absorption
- True Strike effect would bypass the DodgeChance when active
- CriticalChance and DodgeChance are expressed as decimals (e.g., 0.25 for 25%)

#### 6.4.5 Formula Explanations

**BaseDamage:** This represents the core damage from dice rolls, including multiple rolls, and all effects applied before modifiers.

**FlatModifiers:** These are straightforward additions to damage from dice and gem effects.

**MultiplicativeModifiers:** These multiply the damage, potentially leading to significant increases.

**TypeAdvantage:** This modifier adjusts damage based on the type matchup between attacker and defender.

**CriticalMultiplier:** This accounts for both the chance of a critical hit and its damage increase.

**DefensiveReduction:** This complex calculation determines how much damage is mitigated by various defensive effects.

**PostFinalDamage:** This adds any damage over time effects, like poison.

**PlayerBetPoolDamage:** This is the final amount deducted from the player's bet pool, after accounting for any "top-up" effects.

### 6.5 Combat Resolution

#### 6.5.1 Victory Conditions
- Match ends when a player's bet pool reaches $0
- Tie-breaker roll in case of simultaneous defeat

#### 6.5.2 Post-Battle Screen
- Triggered upon match end
- Displays results, rewards, and penalties
- Includes animation from cheerleaders

### 6.6 User Interface Elements

#### 6.6.1 Health/Bet Pool Display
- Shows current bet pool for both players
- DoT effect icons displayed under health bar, hoverable for effect details
- Small row displaying opponent's rings, hoverable for detailed ring and gem mod information
- Small row displaying opponent's dice, hoverable for type and modifier level details

#### 6.6.2 Announcer Commentary
- Provides ongoing commentary on match events
- Displayed in dialogue boxes
- Includes commentary on damage numbers and damage application

#### 6.6.3 Crowd Reactions
- Animated crowd with random shouts and reactions throughout the match

#### 6.6.4 Player/Enemy Dialogue
- Updates after each round
- Displayed on the left side of the screen

#### 6.6.5 Combat Log
- Shows final damages from each round
- Displays ongoing DoT information

### 6.7 Special Mechanics

#### 6.7.1 Multiple Dice Rolls
- Triggered during calculation as per existing formula
- Visually represented by additional dice joining the roll
- Subsequent rolls appear as additional rounds of throws within the same turn
- Builds can take advantage of infinite Dot Stacks with dice that have higher numbers of rolls
- Smaller dice have increased "Dice Rolled" modifiers and more static minimum numbers

#### 6.7.2 DoT (Damage over Time) Effects
- Represented by icons under the health bar
- Can be hovered over for detailed effect information

#### 6.7.3 Type Advantage System
| Attacker | Defender | Modifier |
|----------|----------|----------|
| Tech     | Magic    | 1.2      |
| Magic    | Bio      | 1.2      |
| Bio      | Tech     | 1.2      |
| Ancient  | Any      | 0.8      |
| Any      | Ancient  | 0.8      |
| Same     | Same     | 1.0      |
### 6.8 Example Combat Scenarios

#### 6.8.1 Early Game Scenario

Player Setup:
- Rings: 2x Candy Ring (1 slot each)
- Gems:
  1. Quartz Gem (T1): 
     - Damage Multiplier 1.02x
  2. Quartz Gem (T1): 
     - Flat Damage +1
- Dice: 1x d6 (Tech)

Opponent Setup:
- Rings: 2x Candy Ring (1 slot each)
- Gems:
  1. Quartz Gem (T1): 
     - Dodge Chance 0.25%
  2. Quartz Gem (T1): 
     - Shield Generator 0.25%
- Dice: 1x d6 (Bio)

Player's Offensive Calculation:
1. Apply Dice Modifier Passive Effects: None
2. Apply Ring modifiers to Gems: None
3. Apply Gem Passive effects: None
4. Sum up Gem Passive Effect Totals: 0
5. Apply Dice Modifiers to Pre-Roll effects: None
6. Apply Gem Modifiers to Pre-Roll effects: None
7. Sum up Pre-Roll effects: 0
8. Roll Dice: 4
9. Apply Dice Modifier Post-Roll effects: None
10. Apply Gem Modifier Post-Roll effects: None
11. Sum up Post-Roll effects: 0
12. Apply Flat Dice Modifiers to Damage value: 0
13. Apply Flat Gem Modifiers to Damage value: +1
14. Sum up Flat modifiers to Damage value: 1
15. Apply Multiplier Dice Modifiers to Damage value: None
16. Apply Multiplier Gem Modifiers to Damage value: 1.02x
17. Sum up Multiplier modifiers: 1.02
18. Apply Type Advantage Modifier (Tech vs Bio): 1.2x
19. Apply Dice Critical Chance Modifiers: None
20. Apply Gem Critical Chance Modifiers: None
21. Sum Critical Chance and calculate if the crit succeeds: No crit (0% chance)
22. If crit fails -> Go to step 27: Proceeding to step 27
23-26. (Skipped due to no crit)
27. Sum Critical Strike Modifier Damage + Overcrit Damage value: 0
28. Calculate Final Damage: (4 + 1) * 1.02 * 1.2 = 6.12
29. Apply Post-Final Damage Effects: None
30. Output Final Damage: 6.12

Opponent's Defensive Calculation:
1. Apply True Strike effect: None
2. Apply Dodge Chance (0.25%): Failed (99.75% chance to fail)
3. Apply Damage Reduction: None
4. Apply Shield Generator (0.25%): 6.12 * 0.0025 = 0.0153
5. Calculate and apply final damage to Bet Pool: 6.12 - 0.0153 = 6.1047
6. Apply Post-Final Damage Effects: None
7. Apply Top Up Value: None

Final damage dealt to Opponent: 6.1047

#### 6.8.2 Mid Game Scenario

Player Setup:
- Rings: 5x Silver Ring (3 slots each)
- Gems:
  1. Emerald Gem (T4): 
     - Damage Multiplier 1.08x
     - Crit Chance +1.00%
     - Crit Damage 1.08x
     - Flat Damage +4
  2. Emerald Gem (T4): 
     - Dice Rolled +4
     - Poison Damage 1.08x for 4 turns
     - Cheat Roll 1.00%
     - True Strike 1.00%
- Dice: 1x d10 (Magic)

Opponent Setup:
- Rings: 5x Silver Ring (3 slots each)
- Gems:
  1. Emerald Gem (T4): 
     - Dodge Chance 1.00%
     - Shield Generator 1.00%
     - Damage Reduction 1.00%
     - Top Up Value 1.00%
  2. Emerald Gem (T4): 
     - Sapper 4
     - Damage Multiplier 1.08x
     - Extortion 1.08x
     - Flat Damage +4
- Dice: 1x d10 (Tech)

Player's Offensive Calculation:
1. Apply Dice Modifier Passive Effects: None
2. Apply Ring modifiers to Gems: None
3. Apply Gem Passive effects: None
4. Sum up Gem Passive Effect Totals: 0
5. Apply Dice Modifiers to Pre-Roll effects: None
6. Apply Gem Modifiers to Pre-Roll effects: Dice Rolled +4, Cheat Roll 1.00%, True Strike 1.00%
7. Sum up Pre-Roll effects: Dice Rolled +4, Cheat Roll 1.00%, True Strike 1.00%
8. Roll Dice: 5x d10 (1 base + 4 from Dice Rolled): 6, 8, 3, 7, 5
9. Apply Dice Modifier Post-Roll effects: None
10. Apply Gem Modifier Post-Roll effects: None
11. Sum up Post-Roll effects: 0
12. Apply Flat Dice Modifiers to Damage value: 0
13. Apply Flat Gem Modifiers to Damage value: +4
14. Sum up Flat modifiers to Damage value: 4
15. Apply Multiplier Dice Modifiers to Damage value: None
16. Apply Multiplier Gem Modifiers to Damage value: 1.08x
17. Sum up Multiplier modifiers: 1.08
18. Apply Type Advantage Modifier (Magic vs Tech): 1.2x
19. Apply Dice Critical Chance Modifiers: None
20. Apply Gem Critical Chance Modifiers: +1.00%
21. Sum Critical Chance and calculate if the crit succeeds: 1.00% chance, succeeded (assumed for this example)
22. If crit succeeds: Apply Critical Strike Damage Modifiers
23. Apply Dice Critical Strike Damage Modifiers: None
24. Apply Gem Critical Strike Damage Modifiers: 1.08x
25. No overcrit
26. Sum Critical Strike Modifier Damage: 1.08x
27. Sum Critical Strike Modifier Damage + Overcrit Damage value: 1.08x
28. Calculate Final Damage: ((6 + 8 + 3 + 7 + 5) + 4) * 1.08 * 1.2 * 1.08 = 46.18944
29. Apply Post-Final Damage Effects: Poison Damage 1.08x for 4 turns
30. Output Final Damage: 46.18944 + (46.18944 * 0.08 * 4) = 61.13006

Opponent's Defensive Calculation:
1. Apply True Strike effect (1.00% chance): Failed (99% chance to fail)
2. Apply Dodge Chance (1.00%): Failed (99% chance to fail)
3. Apply Damage Reduction (1.00%): 61.13006 * 0.99 = 60.518759
4. Apply Shield Generator (1.00%): 60.518759 * 0.01 = 0.60518759
5. Calculate and apply final damage to Bet Pool: 60.518759 - 0.60518759 = 59.91357141
6. Apply Post-Final Damage Effects: Poison damage will be applied for 4 turns
7. Apply Top Up Value (1.00%): 59.91357141 * 0.01 = 0.5991357141

Final damage dealt to Opponent: 59.91357141 (plus 4.79308571 poison damage per turn for 4 turns)
Opponent recovers: 0.5991357141

#### 6.8.3 End Game Scenario

Player Setup:
- Rings: 10x Titanium Ring (5 slots each)
- Gems: 50 Opal Gems (T8), each with 8 mod lines
- Dice: 1x d20 (Ancient)

Pooled Gem Effects:
1. Damage Multiplier: 50 * 1.20x = 60x
2. Crit Chance: 50 * 2.00% = 100% (capped)
3. Crit Damage: 50 * 1.20x = 60x
4. Flat Damage: 50 * 10 = +500
5. Dice Rolled: 50 * 10 = +500
6. True Strike: 50 * 2.00% = 100% (capped)
7. Poison Damage: 50 * (1.20x for 8 turns) = 60x for 8 turns
8. Type Advantage: 50 * 2.00% = 100% (adding 1.0 to base multiplier)

Dice Modifiers (d20 Ancient):
1. Passive effect: +5 minimum roll #
2. Pre-Roll effect: +3 Dice Rolled
3. Post-Roll Effect: +3 Reroll of non Max Roll
4. Flat Bonus: +6
5. Multiplier bonus: +1.4x
6. Critical Chance bonus: 33%
7. Critical Strike Damage bonus: +1.4x
8. Ultimate Effect: Rolls of 20 = 69

Opponent Setup:
[Similar complexity to Player Setup, but we'll focus on Player's offensive calculation]

Player's Offensive Calculation:

1. Apply Dice Modifier Passive Effects:
   - Minimum roll increased to 5

2. Apply Ring modifiers to Gems:
   - No ring modifiers in this scenario

3. Apply Gem Passive effects:
   - No passive effects in this scenario

4. Sum up Gem Passive Effect Totals:
   - 0 (no passive effects)

5. Apply Dice Modifiers to Pre-Roll effects:
   - +3 Dice Rolled

6. Apply Gem Modifiers to Pre-Roll effects:
   - +500 Dice Rolled
   - True Strike 100%

7. Sum up Pre-Roll effects:
   - Total Dice Rolled: 1 (base) + 3 (dice modifier) + 500 (gems) = 504
   - True Strike: 100%

8. Roll Dice:
   - 504x d20 with minimum roll of 5
   - Average roll: (5 + 20) / 2 = 12.5
   - Total roll: 504 * 12.5 = 6,300

9. Apply Dice Modifier Post-Roll effects:
   - Reroll 3 non-max rolls
   - Assuming these rerolls average to 15
   - Damage increase: 3 * (15 - 12.5) = 7.5

10. Apply Gem Modifier Post-Roll effects:
    - No post-roll effects in this scenario

11. Sum up Post-Roll effects:
    - Total roll after rerolls: 6,300 + 7.5 = 6,307.5

12. Apply Flat Dice Modifiers to Damage value:
    - +6 from dice modifier

13. Apply Flat Gem Modifiers to Damage value:
    - +500 from gems

14. Sum up Flat modifiers to Damage value:
    - Total flat modifier: 6 + 500 = 506

15. Apply Multiplier Dice Modifiers to Damage value:
    - 1.4x from dice modifier

16. Apply Multiplier Gem Modifiers to Damage value:
    - 60x from gems

17. Sum up Multiplier modifiers:
    - Total multiplier: 1.4 * 60 = 84x

18. Apply Type Advantage Modifier:
    - Base Ancient vs Magic: 0.8x
    - Gem bonus: +1.0
    - Total Type Advantage: 0.8 + 1.0 = 1.8x

19. Apply Dice Critical Chance Modifiers:
    - +33% from dice modifier

20. Apply Gem Critical Chance Modifiers:
    - +100% from gems (capped)

21. Sum Critical Chance and calculate if the crit succeeds:
    - Total Crit Chance: 100% (guaranteed crit)

22. If crit succeeds: Apply Critical Strike Damage Modifiers
    - Crit successful

23. Apply Dice Critical Strike Damage Modifiers:
    - 1.4x from dice modifier

24. Apply Gem Critical Strike Damage Modifiers:
    - 60x from gems

25. Check for overcrit:
    - No overcrit mechanic in this scenario

26. Sum Critical Strike Modifier Damage:
    - Total Crit Damage Multiplier: 1.4 * 60 = 84x

27. Sum Critical Strike Modifier Damage + Overcrit Damage value:
    - 84x (no overcrit)

28. Calculate Final Damage:
    Base damage: 6,307.5 (total roll) + 506 (flat modifiers) = 6,813.5
    Damage after multipliers: 6,813.5 * 84 (damage multiplier) * 1.8 (type advantage) * 84 (crit multiplier)
    = 6,813.5 * 12,700.8
    = 86,530,164.8

29. Apply Post-Final Damage Effects:
    Poison Damage: 86,530,164.8 * 60 = 5,191,809,888 per turn for 8 turns

30. Output Final Damage:
    Initial Damage: 86,530,164.8
    Poison Damage: 5,191,809,888 per turn for 8 turns
    Total Damage over 8 turns: 86,530,164.8 + (5,191,809,888 * 8) = 41,621,009,268.8

31. Apply Dice Ultimate Effect:
    - Any rolls of 20 become 69
    - This would significantly increase the damage, but for simplicity, we'll assume it's accounted for in the average roll calculation

Opponent's Defensive Calculation:
1. True Strike is 100%, so all defensive calculations are bypassed
2. Full damage of 41,621,009,268.8 is applied to the opponent's Bet Pool over 8 turns

Final damage dealt to Opponent: 
- Initial hit: 86,530,164.8
- Poison damage: 5,191,809,888 per turn for 8 turns
- Total damage over 8 turns: 41,621,009,268.8


## 7. Economy and Progression System

### 7.1 Currency System

#### 7.1.1 Bet Pool
- Functions as both health and currency in battles
- Determined by the value of each particular combat
- Can be modified by sponsorships (see 13.3)

#### 7.1.2 Piggy Bank System
- Represents overall player wealth
- 5 upgrade stages:
  1. Piggy Bank (Default): 1,000$ maximum
  2. Money Case: 10,000$ maximum
     - Unlocked after defeating the "Bully" (School Area final boss)
  3. Small Safe: 100,000$ maximum
     - Unlocked after completing any Bio/Tech/Magic final boss
  4. Medium Safe Portfolio: 500,000$ maximum
     - Unlocked after completing 2/3 Bio/Tech/Magic final bosses
  5. Large Safe: 1,000,000$ maximum
     - Unlocked after completing all Bio/Tech/Magic final bosses
  6. Underground Vault Safe: 10,000,000$ maximum
     - Unlocked after defeating the Vault Keeper in Astral Arena

### 7.2 Combat Economy

- Players must spend money from their bank to engage in battles
- If a player runs out of money:
  1. Receive sponsorship offer (100$)
  2. Must forfeit one of four sponsorship slots until debt is repaid
  3. If all slots are filled with debt, receive 100$ from parents between rounds

#### 7.2.1 Money Management
- Excess money beyond Piggy Bank capacity is "sent to parents" (removed from player)
- Encourages resource management and spending
- Prevents excessive money hoarding

#### 7.2.2 Self-Imposed Challenges
- Players can choose to play without sponsors for increased difficulty
- Potential achievement for no-sponsor runs

### 7.3 Sponsorship System

- Accessible from the computer
- 4 sponsorship slots available
- 4 factions (Bio/Tech/Magic/Ancient) offer sponsorships through sub-companies
- 8 tiers of sponsorship with increasing benefits:
  - Increased crafting mat reward drops: +1 to +8
  - Increased money rewards: 10% to 80%
  - Lowered Bet costs: 10% to 25%
  - Higher maximum Bet pool: 10% to 25%
- Players can stack sponsors of the same type for increased benefits

### 7.4 Risk vs. Reward

- Players can choose to:
  1. Fight risk-free (by stacking sponsorships to remove Bet costs)
  2. Increase odds of winning (by starting with a higher Bet pool)
  3. Maximize reward potential (by forgoing bet pool modifiers for increased rewards)

### 7.5 Progression System

#### 7.5.1 Area Structure
- 4 main areas: School, and 3 faction areas (Bio, Tech, Magic)
- 7 fights in each area
- Players must complete School area first
- Players choose one faction area to progress through initially
- Other two areas locked until first chosen area is completed

#### 7.5.2 Bet Pool Scaling
1. School Area:
   1. 100$   (10% of max bet pool)
   2. 200$   (20% of max bet pool)
   3. 300$   (30% of max bet pool)
   4. 400$   (40% of max bet pool)
   5. 500$   (50% of max bet pool)
   6. 600$   (60% of max bet pool)
   7. 800$   (80% of max bet pool - Boss)

2. First Faction Area:
   1. 1,000$  (10% of max bet pool)
   2. 2,000$  (20% of max bet pool)
   3. 3,000$  (30% of max bet pool)
   4. 4,000$  (40% of max bet pool)
   5. 5,000$  (50% of max bet pool)
   6. 6,000$  (60% of max bet pool)
   7. 8,000$  (80% of max bet pool - Boss)

3. Second Faction Area:
   1. 10,000$  (10% of max bet pool)
   2. 20,000$  (20% of max bet pool)
   3. 30,000$  (30% of max bet pool)
   4. 40,000$  (40% of max bet pool)
   5. 50,000$  (50% of max bet pool)
   6. 60,000$  (60% of max bet pool)
   7. 80,000$  (80% of max bet pool - Boss)

4. Third Faction Area:
   1. 100,000$  (10% of max bet pool)
   2. 200,000$  (20% of max bet pool)
   3. 300,000$  (30% of max bet pool)
   4. 400,000$  (40% of max bet pool)
   5. 500,000$  (50% of max bet pool)
   6. 600,000$  (60% of max bet pool)
   7. 800,000$  (80% of max bet pool - Boss)
#### 7.5.3 Difficulty Scaling
- School Area:
  - Battles 1-3: T1 mods on enemy gems only
  - Mini-Boss (Battle 4): Static gem set with T2 mods
  - Battles 5-6: T2 mods and T1 mods applied randomly
  - Boss (Battle 7): Static gem set with T2 mods

- First Faction Area:
  - Battles 1-3: Mix of T2 and T3 mods on enemy gems
  - Mini-Boss (Battle 4): Static gem set with T3 mods
  - Battles 5-6: Mix of T3 and T4 mods applied randomly
  - Boss (Battle 7): Static gem set with T4 mods

- Second Faction Area:
  - Battles 1-3: Mix of T4 and T5 mods on enemy gems
  - Mini-Boss (Battle 4): Static gem set with T5 mods
  - Battles 5-6: Mix of T5 and T6 mods applied randomly
  - Boss (Battle 7): Static gem set with T6 mods

- Third Faction Area:
  - Battles 1-3: Mix of T6 and T7 mods on enemy gems
  - Mini-Boss (Battle 4): Static gem set with T7 mods
  - Battles 5-6: Mix of T7 and T8 mods applied randomly
  - Boss (Battle 7): Static gem set with T8 mods

- Astral Arena:
  - Non-boss battles: Randomized T8 mods
  - Bosses: Static sets of T8 mods and static rings with unique effects

#### 7.5.4 Enemy Equipment Scaling

##### School Area
###### Zone 1-1:
- Rings: 1x Candy Ring (1 slot each)
- Mods: 100% T1

###### Zone 1-2:
- Rings: 1x Candy Ring (1 slot each)
- Mods: 90% T1, 10% T2

###### Zone 1-3:
- Rings: 2x Candy Ring (1 slot each)
- Mods: 80% T1, 20% T2

###### Zone 1-4 (Mini-Boss):
- Rings: 2x Copper Ring (2 slots each)
- Mods: 100% T2

###### Zone 1-5:
- Rings: 2x Candy Ring (1 slot each)
- Mods: 60% T1, 40% T2

###### Zone 1-6:
- Rings: 3x Candy Ring (1 slot each)
- Mods: 40% T1, 60% T2

###### Zone 1-7 (Boss):
- Rings: 3x Copper Ring (2 slots each)
- Mods: 100% T2

##### First Faction Area
###### Zone 2-1:
- Rings: 3x Copper Ring (2 slots each)
- Mods: 80% T2, 20% T3

###### Zone 2-2:
- Rings: 4x Copper Ring (2 slots each)
- Mods: 70% T2, 30% T3

###### Zone 2-3:
- Rings: 4x Copper Ring (2 slots each), 1x Silver Ring (3 slots)
- Mods: 60% T2, 40% T3

###### Zone 2-4 (Mini-Boss):
- Rings: 5x Silver Ring (3 slots each)
- Mods: 100% T3

###### Zone 2-5:
- Rings: 3x Silver Ring (3 slots each), 2x Copper Ring (2 slots each)
- Mods: 40% T3, 60% T4

###### Zone 2-6:
- Rings: 4x Silver Ring (3 slots each), 1x Gold Ring (4 slots)
- Mods: 30% T3, 70% T4

###### Zone 2-7 (Boss):
- Rings: 5x Gold Ring (4 slots each)
- Mods: 100% T4

##### Second Faction Area
###### Zone 3-1:
- Rings: 5x Gold Ring (4 slots each)
- Mods: 80% T4, 20% T5

###### Zone 3-2:
- Rings: 4x Gold Ring (4 slots each), 1x Titanium Ring (5 slots)
- Mods: 70% T4, 30% T5

###### Zone 3-3:
- Rings: 3x Gold Ring (4 slots each), 2x Titanium Ring (5 slots)
- Mods: 60% T4, 40% T5

###### Zone 3-4 (Mini-Boss):
- Rings: 5x Titanium Ring (5 slots each)
- Mods: 100% T5

###### Zone 3-5:
- Rings: 4x Titanium Ring (5 slots each), 1x Silver Amplifier Ring (1 slot, 4x effect)
- Mods: 40% T5, 60% T6

###### Zone 3-6:
- Rings: 3x Titanium Ring (5 slots each), 2x Silver Amplifier Ring (1 slot, 4x effect)
- Mods: 30% T5, 70% T6

###### Zone 3-7 (Boss):
- Rings: 4x Titanium Ring (5 slots each), 1x Gold Amplifier Ring (2 slots, 3x effect)
- Mods: 100% T6

##### Third Faction Area
###### Zone 4-1:
- Rings: 4x Titanium Ring (5 slots each), 1x Gold Amplifier Ring (2 slots, 3x effect)
- Mods: 80% T6, 20% T7

###### Zone 4-2:
- Rings: 3x Titanium Ring (5 slots each), 2x Gold Amplifier Ring (2 slots, 3x effect)
- Mods: 70% T6, 30% T7

###### Zone 4-3:
- Rings: 3x Titanium Ring (5 slots each), 1x Gold Amplifier Ring (2 slots, 3x effect), 1x Titanium Amplifier Ring (3 slots, 2x effect)
- Mods: 60% T6, 40% T7

###### Zone 4-4 (Mini-Boss):
- Rings: 3x Titanium Ring (5 slots each), 2x Titanium Amplifier Ring (3 slots, 2x effect)
- Mods: 100% T7

###### Zone 4-5:
- Rings: 2x Titanium Ring (5 slots each), 3x Titanium Amplifier Ring (3 slots, 2x effect)
- Mods: 40% T7, 60% T8

###### Zone 4-6:
- Rings: 1x Titanium Ring (5 slots), 4x Titanium Amplifier Ring (3 slots, 2x effect)
- Mods: 30% T7, 70% T8

###### Zone 4-7 (Boss):
- Rings: 5x Titanium Amplifier Ring (3 slots, 2x effect)
- Mods: 100% T8

##### Ultimate Boss
###### Phase 1:
- Rings: 5x Titanium Ring (5 slots each)
- Mods: 100% T8 with unique, boss-specific effects

###### Phase 2:
- Rings: 2x Silver Amplifier Ring (1 slot, 4x effect), 2x Gold Amplifier Ring (2 slots, 3x effect), 1x Titanium Amplifier Ring (3 slots, 2x effect)
- Mods: 100% T8 with unique, boss-specific effects

##### Astral Arena
###### Non-boss battles: 
- Rings: 5x Titanium Ring (5 slots each) and 3-5x Amplifier Rings (mix of Silver, Gold, and Titanium)
- Mods: Randomized T8

###### Bosses: 
- Rings: Unique combinations of 5-10 Amplifier Rings (both hands)
- Mods: Static sets of T8 with unique, boss-specific effects

#### 7.5.5 Loot Drop System

##### Drop Type Distribution
- Gem Crafting Materials: 40%
- Modifier Crafting Materials: 40%
- Additional Crafting Materials: 20%

##### Gem Crafting Materials (40% of drops)
- Gem Transfigurator: 10%
- Gem Transformer: 15%
- Gem Polisher: 30%
- Gem Waxer: 45%

##### Modifier Crafting Materials (40% of drops)
- Chaotic Gem Reformers: 20%
- Gem Slammers: 30%
- Gem Tweakers: 50%

##### Additional Crafting Materials (20% of drops)
- Gem Locksmith's Kits: 15%
- Gem Erasers: 40%
- Gem Enhancer: 2%
- Gem Resonators: 18%
- Gem Party Hat: 1%
- [Reserved for future materials]: 20%

##### Tier Distribution by Zone
###### School Area
- T1: 70%
- T2: 25%
- T3: 5%

###### First Faction Area
- T2: 50%
- T3: 40%
- T4: 10%

###### Second Faction Area
- T4: 50%
- T5: 40%
- T6: 10%

###### Third Faction Area
- T6: 50%
- T7: 40%
- T8: 10%

###### Ultimate Boss
- Phase 1: T7 (70%), T8 (30%)
- Phase 2: T7 (40%), T8 (60%)

###### Astral Arena
- Non-boss battles: T8 (100%)
- Bosses: T8 (100%), plus one guaranteed Extremely Rare material

##### Number of Drops per Battle
###### Regular Battles
- 1-3 drops (weighted towards lower numbers)
  - 1 drop: 50%
  - 2 drops: 35%
  - 3 drops: 15%

###### Mini-Bosses
- 3-5 drops (weighted towards middle numbers)
  - 3 drops: 30%
  - 4 drops: 40%
  - 5 drops: 30%

###### Area Bosses
- 5-7 drops (weighted towards higher numbers)
  - 5 drops: 20%
  - 6 drops: 35%
  - 7 drops: 45%

###### Ultimate Boss
- Phase 1: 7-10 drops
- Phase 2: 10-15 drops

###### Astral Arena
- Regular battles: 3-5 drops
- Bosses: 10-15 drops

##### Special Rules
1. Mini-Bosses have a 10% chance to drop one item from the next tier.
2. Area Bosses have a 20% chance to drop one item from the next tier.
3. The Ultimate Boss and Astral Arena Bosses always drop at least one Extremely Rare material.
4. Astral Arena regular battles have a 5% chance to drop an Extremely Rare material.

#### 7.5.6 Enemy Types
- Enemies use mixed dice types until final boss
- Final boss uses entirely faction-specific dice type

#### 7.5.7 Progression Gating
- Players required to "farm" and improve gear between stages
- Enemy dice have increasingly powerful mods in higher tiers
- Crafting system and Robot friendship levels indirectly control progression pace
- Players must beat a boss with corresponding tier of mods to unlock the next tier

### 7.6 Endgame System

#### 7.6.1 Ultimate Boss
- Unlocked after completing all 3 faction final bosses
- Requires 100% of player's bank to challenge
- Acts as progression gate to Astral Arena

#### 7.6.2 Honor System
- Replaces Money as currency after defeating Ultimate Boss
- Functions similarly to Bet Pool
- Allows for reset of scaling without interfering with previous accomplishments
- Players retain ability to battle and farm in regular areas using Money

#### 7.6.3 Astral Arena
- Provides unique base rings to expand gameplay possibilities
- Pushes limits of crafting system for Gem mod perfection
- Offers static boss challenges
- Expandable with new mod tiers and increased stakes

### 7.7 Additional Notes
- No perfect wins possible due to constant Bet Pool loss
- No catch-up mechanisms; players must farm and craft to progress
- Designed as an RNG-grindfest for players who enjoy the process
- Clear, defined progression system with no shortcuts (except RNG)
- Robot companion provides guidance through dialogue
- Library acts as compendium of knowledge for players

## 8. UI Elements

- Top bar: Area name, enemy name, money/health display
- Left side: Character dialogue/interaction
- Right side: Enemy avatar and info
- Bottom: Player's dice selection with type-changing buttons
- Center: Dice rolling area
- Background: Animated crowd reacting to gameplay

## 9. Game Flow

1. Start with one dice and no gems
2. Battle opponents, earning money and experience
3. Buy gems, upgrade gems, and improve character between battles
4. Progress through increasingly difficult areas
5. Face boss battles at milestones
6. Unlock new game features as you progress
7. Access endgame content and continue to improve character

## 10. Game Structure
### 10.1 Master Scene

- Main entry point for the game
- Contains:
    - New Game
    - Load Game (3 file options)
    - Settings
    - Discord integration

### 10.2 Cutscene Scene

- Dedicated node for storing and displaying cutscenes
- Features:
    - Text box at the bottom
    - Sound integration for voice lines
    - Click-through functionality
    - Character pop-ups
    - Image display with minor animations

### 10.3 Bedroom Scene

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

### 10.4 Map Scene

- Arena selection screen
- Features:
    - 3 arenas (Bio/Tech/Magic themed)
    - Multiple rounds per arena
    - Boss battles
    - Progression system (wealth and status)
    - Fourth area unlocked for final boss

### 10.5 Battle Scene

- Main gameplay screen
- Layout as per provided mockup image
- Features:
    - Dice selection and rolling
    - Character dialogue
    - Enemy display
    - Health/Money tracking
    - Animated crowd reactions

### 10.6 Post Battle Scene

- Displayed after each fight
- Options:
    - Continue to next round
    - Exit event (return to bedroom)

## 11. Endgame Setup

### 11.1 Map Scene Overview

- Initially, only the playground & schoolyard arenas are visible.
- Players must become the schoolyard champion to unlock Arena Tournaments.
- Arena Tournaments consist of 6 tiers for each archetype, increasing in difficulty.
- A 7th tier (initially hidden) represents the Master of each archetype.

### 11.2 Progression System

 - Defeating Masters drops rune pieces for the Astral Arena Device.
 - The Astral Arena becomes visible after completing all three Master battles.
 - Unlocking the Astral Arena allows replaying previous arenas at higher difficulty.
 - Each arena drops unique rune pieces for varying combinations.

### 11.3 Rune System

- Runes act as modifiers, affecting difficulty scaling and rewards.
- Different rune combinations unlock various challenges in the Astral Arena.
- The system allows for easy content expansion and endgame progression.

### 11.4 Lore

- After defeating the Ancient Gods Cult Leaders, players enter the gods' domain.
- Gods have taken up the game in their celestial realms out of boredom and we find out it's actually the gods who invented the game in the first place merely using it as a tool to spread awareness of them amongst the humans without directly intervening while reliving their escapades in the Great War on Earth.
## 12. Future Considerations

- Unique, unmodifiable rings with powerful static effects
- Expanded storyline and character development
- Additional areas and enemy types
- Possible integration of character classes or specializations
- Advanced crafting system for gems and runes
- Seasonal events and limited-time challenges
- Multiplayer arena battles

