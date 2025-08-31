# MDL Language Reference

For full documentation, visit: https://aaron777collins.github.io/MinecraftDatapackLanguage/docs/

## Basic Structure

```mdl
pack "my_pack" "Description" 82;
namespace "example";
```

## Variables

### Basic Variables
```mdl
var num counter = 0;
var num health = 20;
var num level = 1;
```

### Scoped Variables
```mdl
// Player-specific variables (default behavior)
var num player_score = 0;
var num player_level = 1;

// Global variables (stored on server armor stand)
var num global_counter scope<global> = 0;
var num global_timer scope<global> = 0;

// Player-scoped variables (explicit)
var num player_health scope<@s> = 20;

// Team-scoped variables
var num team_score scope<@a[team=red]> = 0;

// All-player scoped variables
var num allPlayerCounter scope<@a> = 0;
```

### Variable Assignment
```mdl
// Basic assignment (uses default scope)
player_score = 10;

// Scoped variable assignment
player_hello_count<@s> = player_hello_count<@s> + 1;
global_timer<global> = global_timer<global> + 1;
team_score<@a[team=red]> = team_score<@a[team=red]> + 5;
```

### Variable Substitution
```mdl
// Basic variable substitution
say Counter: $counter$;
tellraw @a {"text":"Score: $score$","color":"gold"};

// Scoped variable substitution
say Your score: $player_score<@s>$;
tellraw @a {"text":"Global timer: $global_timer<global>$","color":"blue"};
tellraw @a {"text":"Team score: $team_score<@a[team=red]>$","color":"red"};
```

## Functions

```mdl
function "hello" {
    say Hello, Minecraft!;
    tellraw @a {"text":"Welcome!","color":"green"};
}

function "inner" {
    say [example:inner] This is the inner function;
    tellraw @a {"text":"Running inner","color":"yellow"};
}

function "outer" {
    say [example:outer] This is the outer function;
    function example:inner;  // Call another function
    tellraw @a {"text":"Back in outer","color":"aqua"};
}
```

## Control Structures

### If Statements
```mdl
// Basic conditions
if "$health$ < 10" {
    say Health is low!;
    effect give @s minecraft:regeneration 10 1;
} else {
    say Health is good;
}

// Scoped variable conditions
if "$player_health<@s>$ < 5" {
    say Your health is critical!;
    effect give @s minecraft:regeneration 10 2;
}

if "$global_timer<global>$ > 200" {
    say Global timer is high!;
    global_timer<global> = 0;
}

// If-else if-else
if "$player_level$ >= 10" {
    if "$player_health$ < 10" {
        say Advanced player with low health!;
        effect give @s minecraft:regeneration 10 1;
        player_health = $player_health$ + 10;
    } else {
        say Advanced player with good health;
        effect give @s minecraft:strength 10 1;
    }
} else if "$player_level$ >= 5" {
    say Intermediate player;
    effect give @s minecraft:speed 10 0;
} else {
    say Beginner player;
    effect give @s minecraft:jump_boost 10 0;
}
```

### While Loops
```mdl
// Default recursion method (immediate execution)
while "$counter$ > 0" {
    say Counter: $counter$;
    counter = counter - 1;
}

// Schedule method (spreads across ticks for performance)
counter = 10;
while "$counter$ > 0" method="schedule" {
    say Schedule counter: $counter$;
    counter = counter - 1;
}

// While loops with scoped variables
while "$global_timer<global>$ > 0" {
    global_timer<global> = global_timer<global> - 1;
    say Reducing timer: $global_timer<global>$;
}
```

## Expressions

```mdl
function "expressions" {
    var num a = 10;
    var num b = 5;
    
    // Basic arithmetic
    var num sum = $a$ + $b$;
    var num difference = $a$ - $b$;
    var num product = $a$ * $b$;
    var num quotient = $a$ / $b$;
    
    // Scoped variable arithmetic
    var num player_total = $player_score<@s>$ + $player_bonus<@s>$;
    var num global_calculation = $global_timer<global>$ * 2 + $global_bonus<global>$;
    var num team_average = $team_score<@a[team=red]>$ / 5;
    
    // Complex expressions
    var num total = $health$ + $experience$;
    var num average = $total$ / 2;
    var num bonus = $level$ * 10 + $counter$;
    
    // Variable assignment with expressions
    counter = $counter$ + 1;
    health = $health$ - 5;
    experience = $level$ * 100 + $counter$;
}
```

## Hooks

```mdl
on_load "example:hello";    // Runs when datapack loads
on_tick "example:update";   // Runs every tick
```

## Tags

```mdl
tag function "minecraft:load" {
    add "example:init";
}

tag function "minecraft:tick" {
    add "example:tick";
}

tag item "example:swords" {
    add "minecraft:diamond_sword";
    add "minecraft:netherite_sword";
}
```

## Output Commands

```mdl
say Hello World;                    // Simple text output
tellraw @a {"text":"Hello"};        // JSON text with formatting
tellraw @s {"text":"Your score: $player_score<@s>$","color":"gold"};
```

## Raw Text Blocks

```mdl
function "example" {
    $!raw
    say "To enable the timer, run /function example:enabletimer";
    say "To disable the timer, run /function example:disabletimer";
    raw!$
}
```

## Registry Types

```mdl
// Recipes
recipe "custom_sword" "recipes/sword.json";

// Loot tables
loot_table "treasure" "loot_tables/treasure.json";

// Advancements
advancement "first_sword" "advancements/sword.json";

// Predicates
predicate "has_sword" "predicates/sword.json";

// Item modifiers
item_modifier "sword_nbt" "item_modifiers/sword.json";

// Structures
structure "custom_house" "structures/house.json";
```

## Multi-line Commands

```mdl
function "multiline" {
    tellraw @a         {"text":"This text is really, really long so we split it",         "color":"gold"};
}
```

## Scoped Variable Best Practices

1. **Use `@s` for player-specific data**: When variables should be unique per player
2. **Use `global` for server-wide data**: When variables should be shared across all players
3. **Use `@a` for all-player operations**: When you need to modify all players' scores simultaneously
4. **Be explicit with scopes**: Use `<selector>` syntax when the default scope isn't what you want
5. **Consider performance**: Broad selectors like `@a` can affect many entities at once

## Complete Example

```mdl
// complete_example.mdl
pack "Complete Example" description "Shows all MDL features" pack_format 82;

namespace "example";

// Variables with expressions and scoped variables
var num counter = 0;
var num health = 20;
var num level = 1;
var num experience = 0;

// Scoped variables
var num global_timer scope<global> = 0;
var num player_hello_count scope<@a> = 0;
var num player_timer_enabled scope<@a> = 0;

function "init" {
    say [example:init] Initializing Complete Example...;
    tellraw @a {"text":"Complete Example loaded!","color":"green"};
    counter = 0;
    health = 20;
    level = 1;
    experience = 0;
}

function "tick" {
    counter = counter + 1;
    global_timer<global> = global_timer<global> + 1;
    
    // Full control structure
    if "$health$ < 10" {
        say Health is low!;
        health = health + 5;
        effect give @a minecraft:regeneration 10 1;
    } else if "$level$ > 5" {
        say High level player!;
        effect give @a minecraft:strength 10 1;
    } else {
        say Normal player;
        effect give @a minecraft:speed 10 0;
    }
    
    // Variable substitution
    say Counter: $counter$;
    say Global timer: $global_timer<global>$;
    
    // While loop with scoped variables
    while "$global_timer<global>$ > 200" {
        global_timer<global> = global_timer<global> - 1;
        say Reducing global timer: $global_timer<global>$;
    }
    
    // Expressions with scoped variables
    experience = $level$ * 100 + $counter$;
    say Experience: $experience$;
    
    // Scoped variable operations
    player_hello_count<@s> = player_hello_count<@s> + 1;
    say Your hello count: $player_hello_count<@s>$;
}

// Hooks
on_load "example:init";
on_tick "example:tick";

// Tags
tag function "minecraft:load" {
    add "example:init";
}

tag function "minecraft:tick" {
    add "example:tick";
}
```
