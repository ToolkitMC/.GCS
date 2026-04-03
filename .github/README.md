# Global Command System (GCS) v3.2.0

A modular, permission-gated command management system for Minecraft Java Edition.  
Supports dialog-based UI, multi-command handlers, waypoints, back, freeze, and more.

**Supported versions:** 1.20.5 – 1.21.11  
**Pack formats:** 48 – 94

---

## Dependencies

### Required — Advanced Macro Engine (AME)

GCS v3.2.0+ requires **[Advanced Macro Engine (AME)](https://github.com/ToolkitMC/macroEngine-dp)** to be installed alongside it.

AME must be loaded **before** GCS. Install it in the same world's `datapacks/` folder.

| Feature | Without AME | With AME |
|---|---|---|
| Handler execution | Works | Works |
| Cooldown system | Inactive | Epoch-based, accurate |
| Execution logging | None | `macro:log/info` |
| Event hooks | None | `gcs.handler_executed` |

If AME is missing, GCS prints a warning on load and continues — but cooldowns will not function.

### Installation Order

1. Place AME zip in `datapacks/`
2. Place GCS zip in `datapacks/`
3. Run `/reload`

---

## Installation

**Step 1 — Place both datapacks**
```
saves/[WorldName]/datapacks/AME_v2.2.x.zip
saves/[WorldName]/datapacks/GCS_v3.2.0.zip
```

**Step 2 — Load**
```
/reload
```

**Step 3 — Grant yourself admin**
```
/scoreboard players set YourName gcs.auth 3
/function gcs:admin/grant_auth {player:"YourName",level:3}
```

**Step 4 — Open the menu**
```
/trigger gcs.ui
```

---

## Usage

```
/trigger gcs.ui              # Admin panel
/trigger gcs.run             # Command execution menu
/trigger gcs.exec set <ID>   # Run handler by ID directly
```

---

## Handler Management

### Add a single-command handler
```
/function gcs:admin/add_handler {name:"spawn",label:"Go to Spawn",description:"Teleports to world spawn",command:"tp @s 0 64 0",auth_level:1,category:"teleport"}
```

### Add a multi-command handler
```
/function gcs:admin/add_multi_handler {name:"buff",label:"Super Buff",description:"Speed + Jump",auth_level:2,category:"ability",commands:["effect give @s speed 300 2","effect give @s jump_boost 300 2"]}
```

### Edit a handler
```
/function gcs:admin/edit_handler {hid:5,name:"fly2",label:"Fly v2",description:"Updated fly",command:"ability @s mayfly true",auth_level:2,category:"ability"}
```

### Delete a handler
```
/function gcs:admin/delete_handler {hid:5}
```
> Minimum handler count is enforced — GCS will not delete below the minimum.

### Toggle active/inactive
```
/function gcs:admin/toggle_handler {hid:5}
```

---

## Permission Levels

| Level | Role | Access |
|---|---|---|
| 1 | User | Basic commands: heal, feed, home, back, random_tp, give_xp |
| 2 | Moderator | World commands: time, weather, fly, kit, nether |
| 3 | Admin | All commands + system management + freeze, smite, tpall, vanish |

```
/function gcs:admin/grant_auth {player:"PlayerName",level:1}
/function gcs:admin/grant_auth {player:"Mod1",level:2}
/function gcs:admin/grant_auth {player:"Admin1",level:3}
/function gcs:admin/list_auth
```

---

## Default Handlers (25)

| ID | Name | Description | Auth |
|---|---|---|---|
| 1 | help | List all commands | 1 |
| 2 | home | Teleport to spawn | 1 |
| 3 | heal | Restore health and hunger | 1 |
| 4 | feed | Restore hunger | 1 |
| 5 | fly | Toggle fly mode | 2 |
| 6 | toggle_time | Toggle day/night | 2 |
| 7 | toggle_weather | Toggle clear/rain | 2 |
| 8 | day | Set time to day | 2 |
| 9 | spawn | Teleport to world spawn | 1 |
| 10 | clear_items | Remove nearby item entities | 3 |
| 11 | god | Resistance IV (god mode) | 3 |
| 12 | speed | Speed boost | 2 |
| 13 | gm | Switch to creative mode | 3 |
| 14 | super_heal | Full heal + buffs + debuff clear (multi) | 1 |
| 15 | back | Return to pre-teleport location | 1 |
| 16 | vanish | Toggle invisibility | 3 |
| 17 | tpall | Teleport all players to you | 3 |
| 18 | kit | Starter iron kit (multi) | 2 |
| 19 | nether | Save location + teleport to Nether (multi) | 2 |
| 20 | freeze | Freeze self toggle (adventure mode + position lock) | 3 |
| 21 | smite | Strike self with lightning | 3 |
| 22 | give_xp | Add 10 XP levels | 2 |
| 23 | random_tp | Spreadplayers to random overworld location | 1 |
| 24 | time_freeze | Toggle doDaylightCycle | 3 |
| 25 | kit_miner | Efficiency V diamond tools kit | 2 |

---

## Waypoint System

```
/function gcs:waypoint/save {name:"base"}     # Save current position
/function gcs:waypoint/go {name:"base"}       # Teleport to saved position
/function gcs:waypoint/list                   # List all waypoints
/function gcs:waypoint/delete {name:"base"}   # Delete a waypoint
```

---

## Back Command

Returns to the position saved before the last teleport.

```
/trigger gcs.exec set 15
# or:
/function gcs:back/go
```

Back is saved automatically when using: `random_tp`, `nether`, `waypoint/go`.

---

## Freeze System

The freeze handler (ID 20) uses a tag-based approach:

- Tag `gcs_frozen` is applied to the target.
- Every tick: `tp @s @s` (position lock) + `gamemode adventure` (no block interaction).
- On unfreeze: tag removed, `gamemode survival` restored.

To freeze another player (requires calling the macro function directly):
```
/function gcs:handlers/builtin_extra/freeze {target:"PlayerName"}
```

---

## AME Event Hook

Other datapacks can listen to GCS handler executions via AME's event system:

```mcfunction
# In your load function:
function macro:event/register {event:"gcs.handler_executed", func:"yourpack:on_gcs_exec"}
```

For bridge setup info:
```
/function gcs:ame/setup
```

---

## Search and Stats

```
/function gcs:admin/list_handlers
/function gcs:admin/search_handler {query:"heal"}
/function gcs:admin/list_by_category
/function gcs:admin/detailed_stats
/function gcs:admin/show_stats
/function gcs:performance/monitor
```

---

## Backup and Export

```
/function gcs:admin/export
/function gcs:backup/create_backup
/function gcs:backup/restore_backup
/data get storage gcs:db handlers
```

To migrate handlers to another world:
```
/data modify storage gcs:db handlers set value [PASTE_JSON_HERE]
```

---

## Maintenance Mode

```
/function gcs:admin/maintenance
```

All handler execution is blocked while maintenance mode is active.

---

## Troubleshooting

**Handler not executing:**
- Check permission: `/scoreboard players get @s gcs.auth`
- Check handler is enabled: `/function gcs:admin/list_handlers`
- Check maintenance mode is off

**Menu not opening:**
- `gcs.auth` score must be >= 1
- Run `/reload`
- Manually enable trigger: `/scoreboard players enable @s gcs.ui`

**Cooldowns not working:**
- AME must be installed and loaded before GCS
- Verify: `/data get storage macro:engine global.loaded` — should return `1b`

**Permission not applying:**
- Player names are case-sensitive
- Set score first: `/scoreboard players set PlayerName gcs.auth 3`
- Then run `grant_auth`

---

## Full Command Reference

```
# Admin
/function gcs:admin/main_menu
/function gcs:admin/add_handler {...}
/function gcs:admin/add_multi_handler {...}
/function gcs:admin/edit_handler {...}
/function gcs:admin/delete_handler {...}
/function gcs:admin/toggle_handler {...}
/function gcs:admin/bulk_toggle
/function gcs:admin/list_handlers
/function gcs:admin/search_handler {query:"..."}
/function gcs:admin/list_by_category
/function gcs:admin/grant_auth {player:"...",level:1}
/function gcs:admin/list_auth
/function gcs:admin/detailed_stats
/function gcs:admin/show_stats
/function gcs:admin/show_last_update
/function gcs:admin/export
/function gcs:admin/import_config
/function gcs:admin/maintenance

# User triggers
/trigger gcs.ui
/trigger gcs.run
/trigger gcs.exec set <ID>
/trigger gcs.undo

# Waypoints
/function gcs:waypoint/save {name:"..."}
/function gcs:waypoint/go {name:"..."}
/function gcs:waypoint/list
/function gcs:waypoint/delete {name:"..."}

# Back
/function gcs:back/go
/function gcs:back/save

# System
/function gcs:utils/reset
/function gcs:backup/create_backup
/function gcs:backup/restore_backup
/function gcs:performance/monitor
/function gcs:ame/setup
/data get storage gcs:db
```

---

## License

MIT License — free to use, modify, and distribute.

---

**Version:** 3.2.0  
**Minecraft:** 1.20.5 – 1.21.11  
**Pack format:** 48 – 94  
**Dependency:** [Advanced Macro Engine (AME)](https://github.com/ToolkitMC/macroEngine-dp)
