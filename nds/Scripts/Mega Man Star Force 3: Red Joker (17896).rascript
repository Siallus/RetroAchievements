// Mega Man Star Force 3: Red Joker
// #ID = 17896

// Access memory
// Game state
game_state = byte(0xea8b4)
game_over_state = byte(0x1b473d)
current_character = bit0(0xfcaad)
control_state = byte(0x112d60)
out_of_battle_state = bit2(0xee2ff)
bottom_menu_state = bit0(0x11263d)
current_bottom_screen_menu = tbyte(0xf7768)
boss_fight_loaded_state = word(0x1081be)
player_overworld_control_state = bit0(0x1b16ee)

tutorial_battles_complete = bit2(0xfcb1f)
spademagnus_scenario_end = bit3(0xfcb27)
diamondice_scenario_end = bit7(0xfcb2f)
clubstrong_scenario_end = bit2(0xfcb37)
queenvirgo_scenario_end = bit7(0xfcb41)
jackcorvus_scenario_end = bit1(0xfcb4c)
arrive_at_orbital_base = bit1(0xfcb5a)
campaign_end = bit6(0xfcb66)

jackcorvus_scripted_encounter_end = bit1(0xfcb37)
acidace_scripted_encounter_end = bit3(0xfcb4f)

diamondice_stage_start = bit6(0xfcb2e)
diamondice_stage_end = bit7(0xfcb2e)
diamondice_defeated = bit1(0xfcb2f)

clubstrong_stage_hazard = byte(0x165ff4)
clubstrong_stage_end = bit3(0xfcb36)
clubstrong_defeated = bit5(0xfcb36)

noise_cluster_event_start = bit3(0xfcb48)
noise_cluster_event1_end = bit4(0xfcb48)
noise_cluster_event_end = bit2(0xfcb4b)
noise_cluster_retry_count = byte(0x1eaa91)

card_minigame_event_start = bit3(0xfcb51)
card_minigame_event_end = bit3(0xfcb52)
card_first_minigame_state = bit0(0xfca92)
card_minigame_cc1_card_state = bit3(0xfca92)
card_minigame_cc2_card_state = bit7(0xfca92)
card_minigame_cc3_card_state = bit3(0xfca93)
card_minigame_pointer_root = tbyte(tbyte(tbyte(0x145978) + 0xc) + 0xc) + 0xc
card_minigame_cc1_state = word(tbyte(tbyte(card_minigame_pointer_root) + 0xc) + 0x1c)
card_minigame_cc2_state = word(tbyte(tbyte(tbyte(card_minigame_pointer_root) + 0xc) + 0xc) + 0x1c)
card_minigame_cc3_state = word(tbyte(card_minigame_pointer_root) + 0x1c)
card_minigame_card_flip_count = bitcount(0xffde8) + bit0(0xffde9)

// Battle
enemy1_id = byte(0xffeb6)
enemy1_variant = byte(0xffeb7)
enemy1_word = word(0xffeb6)
enemy2_word = word(0xffebc)
enemy3_word = word(0xffec2)

enemy1_pointer = tbyte(0x12f5bc) + 0x44
enemy2_pointer = tbyte(0x12f5bc) + 0x48
enemy3_pointer = tbyte(0x12f5bc) + 0x4c
enemy1_health = word(tbyte(enemy1_pointer) + 0xf4)
enemy2_health = word(tbyte(enemy2_pointer) + 0xf4)
enemy3_health = word(tbyte(enemy3_pointer) + 0xf4)

megaman_field_position = byte(0x1c8474)
tile5_pointer = tbyte(0x17d150) + 0x20
tile10_pointer = tbyte(0x17d150) + 0x48
tile15_pointer = tbyte(0x17d150) + 0x70
tile5_broken_state = bit5(tbyte(tile5_pointer) + 0xf4)
tile5_hole_state = bit4(tbyte(tile5_pointer) + 0xf5)
tile10_broken_state = bit5(tbyte(tile10_pointer) + 0xf4)
tile10_hole_state = bit4(tbyte(tile10_pointer) + 0xf5)
tile15_broken_state = bit5(tbyte(tile15_pointer) + 0xf4)
tile15_hole_state = bit4(tbyte(tile15_pointer) + 0xf5)

current_battle_hp = word(0x1c8514)
max_battle_hp = word(0x1c8516)
overworld_hp = word(0x1123a0)

current_noise_form = byte(0xf9a00)
current_noise_type = byte(0x1c853d)
meteor_server_state = byte(0x192a95)
meteor_server_level = byte(0x192a63)

galaxy_advance_formed = word(0x195728)
last_used_chip = word(tbyte(0x1c857c) + 0x2c)

battle_rank = byte(0x199b11)

hertz_count = word(0xf9820)

acidace_wave_command_state = byte(0x1dc3da)

// Overworld
current_map_id = byte(0xfca24)

hpmem10_count = byte(0xf9468)
hpmem20_count = byte(0xf9469)

link_power = word(0xf99f8)
brother1_lp = word(0xfa03a)
brother2_lp = word(0xfa67a)
brother3_lp = word(0xfacba)
brother4_lp = word(0xfb2fa)
brother5_lp = word(0xfb93a)
brother6_lp = word(0xfbf7a)

impct_canon_obtained = bit0(0xfcbbe) // 0x110
big_grenade_obtained = bit3(0xfcbbe) // 0x113
giant_axe_obtained = bit7(0xfcbbe) // 0x117
plat_meteor_obtained = bit1(0xfcbbf) // 0x119
hrrcn_dance_obtained = bit7(0xfcbc2) // 0x137

// CC/Noise/Wave World
diamondice_temp_gauge = byte(0xffde4)

omega_doors_closed = bit3(0xfcac4) + bit6(0xfcac4) + bit7(0xfcac4)

// Logic
// Library Logic
std_library_full_bytes = sum_of(range(0xfcb9d,0xfcbad), addr => bitcount(addr))
std_library_start_bits = bit1(0xfcb9c) + bit2(0xfcb9c) + bit3(0xfcb9c) + bit4(0xfcb9c) + bit5(0xfcb9c) 
        + bit6(0xfcb9c) + bit7(0xfcb9c)
std_library_end_bits = bit0(0xfcbae) + bit1(0xfcbae) + bit2(0xfcbae) + bit3(0xfcbae)
        + bit4(0xfcbae) + bit5(0xfcbae) + bit6(0xfcbae)
std_library_total_cards = std_library_full_bytes + std_library_start_bits + std_library_end_bits

mega_library_full_bytes = sum_of(range(0xfcbaf,0xfcbb3), addr => bitcount(addr))
mega_library_start_bits = bit7(0xfcbae)
mega_library_end_bits = bit0(0xfcbb4) + bit1(0xfcbb4) + bit2(0xfcbb4) + bit3(0xfcbb4)
mega_library_total_cards = mega_library_full_bytes + mega_library_start_bits + mega_library_end_bits

giga_library_total_cards = bit1(0xfcbb5) + bit2(0xfcbb5) + bit3(0xfcbb5) + bit4(0xfcbb5) + bit5(0xfcbb5)

illegal_library_total_cards = sum_of(range(0xfcbb6,0xfcbcc), addr => bitcount(addr)) + bit0(0xfcbcd)
        + bit1(0xfcbcd) + bit2(0xfcbcd) + bit3(0xfcbcd) + bit4(0xfcbcd) + bit5(0xfcbcd)

// Mystery Wave Logic
alohaha_mystery_waves = bit3(0xfcafb) + bit4(0xfcafb) + bit5(0xfcafb) + bit6(0xfcafb) + bit7(0xfcafb) 
        + bit0(0xfcafc) + bit1(0xfcafc) + bit2(0xfcafc) + bit3(0xfcafc) + bit4(0xfcafc) + bit5(0xfcafc)
        + bit2(0xfcb07) + bit3(0xfcb07) + bit4(0xfcb07) + bit4(0xfcb09) + bit5(0xfcb09)+ bit7(0xfcb0c)
        + bit0(0xfcb0d) + bit1(0xfcb0d) + bit4(0xfcb14)

astrowave_mystery_waves = bit0(0xfcafe) + bit1(0xfcafe) + bit2(0xfcafe) + bit3(0xfcafe) + bit6(0xfcb14)

echoridge_mystery_waves = bit0(0xfcaf8) + bit6(0xfcaf8) + bit0(0xfcb05) + bit1(0xfcb05) + bit0(0xfcb09)
        + bit1(0xfcb09) + bit6(0xfcb0a) + bit0(0xfcb0c) + bit1(0xfcb0c) + bit0(0xfcb14)

echoridgeelem_mystery_waves = bit1(0xfcaf8) + bit7(0xfcaf8) + bit1(0xfcaf9) + bit2(0xfcaf9) + bit3(0xfcaf9)
        + bit4(0xfcaf9) + bit5(0xfcaf9) + bit2(0xfcb05) + bit3(0xfcb05) + bit4(0xfcb05) + bit5(0xfcb05)
        + bit6(0xfcb05) + bit6(0xfcb09) + bit7(0xfcb09) + bit7(0xfcb0a) + bit2(0xfcb0c) + bit3(0xfcb0c)
        + bit4(0xfcb0c)

wazahq_mystery_waves = bit6(0xfcafc) + bit7(0xfcafc) + bitcount(0xfcafd) + bit5(0xfcb00) + bit6(0xfcb00)
        + bit7(0xfcb00) + bit1(0xfcb08) + bit2(0xfcb08) + bit4(0xfcb0a) + bit5(0xfcb0a) + bit2(0xfcb0d)
        + bit3(0xfcb0d) + bit5(0xfcb14) + bit0(0xfcb15)

noisewave_mystery_waves = bit4(0xfcafe) + bit5(0xfcafe) + bit6(0xfcafe) + bit0(0xfcb00) + bit1(0xfcb00)
        + bitcount(0xfcb01) + bitcount(0xfcb02) + bitcount(0xfcb03) + bitcount(0xfcb04) + bit7(0xfcb14)
        + bit0(0xfcb1a)

orbitalbase_mystery_waves = bit2(0xfcb00) + bit3(0xfcb00) + bit4(0xfcb00) + bit7(0xfcb08) + bit7(0xfcb0d)
        + bit0(0xfcb0e)

secretshelter_mystery_waves = bit7(0xfcafe) + bitcount(0xfcaff) + bit3(0xfcb08) + bit4(0xfcb08) + bit5(0xfcb08)
        + bit6(0xfcb08) + bit4(0xfcb0d) + bit5(0xfcb0d) + bit6(0xfcb0d)

spicamall_mystery_waves = bit2(0xfcaf8) + bit3(0xfcaf8) + bit4(0xfcaf8) + bit5(0xfcaf8) + bit0(0xfcaf9)
        + bit7(0xfcb05) + bit0(0xfcb06) + bit1(0xfcb06) + bit2(0xfcb06) + bit3(0xfcb06) + bit1(0xfcb07) 
        + bit2(0xfcb09) + bit3(0xfcb09) + bit0(0xfcb0a) + bit1(0xfcb0a) + bit0(0xfcb0b) + bit1(0xfcb0b) 
        + bit2(0xfcb0b) + bit3(0xfcb0b) + bit5(0xfcb0c) + bit1(0xfcb14) + bit2(0xfcb14)

wbgstudios_mystery_waves = bit6(0xfcaf9) + bit7(0xfcaf9) + bitcount(0xfcafa) + bit0(0xfcafb) + bit1(0xfcafb)
        + bit2(0xfcafb) + bit4(0xfcb06) + bit5(0xfcb06) + bit6(0xfcb06) + bit7(0xfcb06) + bit0(0xfcb07) 
        + bit2(0xfcb0a) + bit3(0xfcb0a) + bit4(0xfcb0b) + bit5(0xfcb0b) + bit6(0xfcb0b) + bit7(0xfcb0b)
        + bit6(0xfcb0c) + bit3(0xfcb14)

gold_mystery_waves = sum_of(range(0xfcb16,0xfcb18), addr => bitcount(addr))


// Cipher Code Blocking Logic
card_cipher_code_amount_activated = bit5(0xfcc9c) + bit6(0xfcc9c) + bit7(0xfcc9c) + bit1(0xfcc9d) + bit6(0xfcc9d)
        + bit7(0xfcc9d) + bitcount(0xfcc9e) + bitcount(0xfcc9f) + bitcount(0xfcca0) + bit0(0xfcca1) + bit1(0xfcca1)
        + bit2(0xfcca1) + bit3(0xfcca1)

// Omega-Xis Weapon Logic
omega_weapons_count = sum_of(range(0xf9441,0xf9456), addr => bit0(addr))

// Help Quests Logic
echo_ridge_help_requests = bit1(0xfcd0c) + bit3(0xfcd0c) + bit5(0xfcd0c) + bit3(0xfcd0d) + bit1(0xfcd0e) + bit1(0xfcd0f)
        + bit3(0xfcd10) + bit5(0xfcd10)
spica_mall_help_requests = bit1(0xfcd0d) + bit3(0xfcd11) + bit5(0xfcd11)
wbg_studio_help_requests = bit7(0xfcd0c) + bit5(0xfcd0f) + bit1(0xfcd11)
waza_hq_help_requests = bit5(0xfcd0d) + bit7(0xfcd0d) + bit3(0xfcd0e) + bit5(0xfcd0e) + bit7(0xfcd0e) + bit3(0xfcd0f)
        + bit7(0xfcd0f) + bit1(0xfcd10) + bit7(0xfcd10) + bit1(0xfcd11)


// Challenge Achievement Logic
// Diamond Ice
start_diamondice_challenge = once(
    (prev(current_map_id) == 0x12 && current_map_id == 0x49)
    && diamondice_defeated == 0
)

reset_diamondice_challenge = never(
    !any_of([0x49, 0x4a, 0x4b], (stage) => current_map_id == stage)
)

fail_diamondice_challenge = never(
    diamondice_temp_gauge == 0x0
)

complete_diamondice_challenge = trigger_when(
    current_map_id == 0x4b
    && prev(diamondice_stage_end) == 0
    && diamondice_stage_end == 1
)

// Club Strong
start_clubstrong_challenge = once(
    (prev(current_map_id) == 0x17 && current_map_id == 0x4c)
    && clubstrong_defeated == 0
)

reset_clubstrong_challenge = never(
    !any_of([0x4c, 0x4d, 0x4e], (stage) => current_map_id == stage)
)

fail_clubstrong_challenge = never(
    any_of([0x1, 0x3], (hazard) => clubstrong_stage_hazard == hazard)
)

complete_clubstrong_challenge = trigger_when(
    current_map_id == 0x4e
    && prev(clubstrong_stage_end) == 0
    && clubstrong_stage_end == 1
)

// Jack Corvus Scripted Encounter
start_jackcorvus_scripted_challenge = once(
    enemy1_id == 0x85 
    && enemy1_variant == 0x0
    && current_map_id == 0x15
    && jackcorvus_scripted_encounter_end == 0
    && prev(game_state == 8 || game_state == 9) && game_state == 6
)

fail_jackcorvus_scripted_challenge = never(
    current_battle_hp < max_battle_hp
)

complete_jackcorvus_scripted_challenge = prev(enemy1_health > 1050) 
    && trigger_when(enemy1_health <= 1050)


// Noise Cluster
start_noise_cluster_challenge = once(
    noise_cluster_event_start == 1
    && noise_cluster_event1_end == 0
)

reset_noise_cluster_challenge = never(
    !any_of([0x07, 0x08, 0x2b, 0x47, 0x48, 0x6a, 0x6b, 0x6c], (stage) => current_map_id == stage)
)

fail_noise_cluster_challenge = never(
    noise_cluster_retry_count != 0
)

complete_noise_cluster_challenge = trigger_when(
    current_map_id == 0x2b
    && prev(noise_cluster_event_end) == 0
    && noise_cluster_event_end == 1
)

// Acid Ace Scripted Encounter
start_acidace_scripted_challenge = once(
    enemy1_id == 0x8a 
    && enemy1_variant == 0x1
    && current_map_id == 0x12
    && acidace_scripted_encounter_end == 0
    && prev(game_state == 8 || game_state == 9) && game_state == 6
)

fail_acidace_scripted_challenge = never(
    current_battle_hp < max_battle_hp
)

complete_acidace_scripted_challenge = trigger_when(
    prev(acidace_scripted_encounter_end == 0) && acidace_scripted_encounter_end == 1
)


// Lists
virus_list = [
    { "id": 0, "variant": 0, "name": "Mettenna" },      { "id": 0, "variant": 1, "name": "Mettenna2" },     { "id": 0, "variant": 2, "name": "Mettenna3" },
    { "id": 0, "variant": 3, "name": "MettennaG" },     { "id": 0, "variant": 4, "name": "Mettenna2G" },    { "id": 0, "variant": 5, "name": "Mettenna3G" },
    { "id": 1, "variant": 0, "name": "Crowcar" },       { "id": 1, "variant": 1, "name": "Crowket" },       { "id": 1, "variant": 2, "name": "Crowbus" },
    { "id": 1, "variant": 3, "name": "CrowcarG" },      { "id": 1, "variant": 4, "name": "CrowketG" },      { "id": 1, "variant": 5, "name": "CrowbusG" },
    { "id": 2, "variant": 0, "name": "Smiles" },        { "id": 2, "variant": 1, "name": "Smiling" },       { "id": 2, "variant": 2, "name": "Smiley" },
    { "id": 2, "variant": 3, "name": "SmilesG" },       { "id": 2, "variant": 4, "name": "SmilingG" },      { "id": 2, "variant": 5, "name": "SmileyG" },
    { "id": 3, "variant": 0, "name": "Ku'i" },          { "id": 3, "variant": 1, "name": "Ku'i-ga" },       { "id": 3, "variant": 2, "name": "Ku'i-guru" },
    { "id": 3, "variant": 3, "name": "Ku'iG" },         { "id": 3, "variant": 4, "name": "Ku'i-gaG" },      { "id": 3, "variant": 5, "name": "Ku'i-guruG" },
    { "id": 4, "variant": 0, "name": "DoomCount" },     { "id": 4, "variant": 1, "name": "DoomBomber" },    { "id": 4, "variant": 2, "name": "DoomPlosion" },
    { "id": 4, "variant": 3, "name": "DoomCountG" },    { "id": 4, "variant": 4, "name": "DoomBomberG" },   { "id": 4, "variant": 5, "name": "DoomPlosionG" },
    { "id": 5, "variant": 0, "name": "Boom" },          { "id": 5, "variant": 1, "name": "Bang" },          { "id": 5, "variant": 2, "name": "Ka-Boom" },
    { "id": 5, "variant": 3, "name": "BoomG" },         { "id": 5, "variant": 4, "name": "BangG" },         { "id": 5, "variant": 5, "name": "Ka-BoomG" },
    { "id": 6, "variant": 0, "name": "Scorcher" },      { "id": 6, "variant": 1, "name": "DlxScorcher" },   { "id": 6, "variant": 2, "name": "NeoScorcher" },
    { "id": 6, "variant": 3, "name": "ScorcherG" },     { "id": 6, "variant": 4, "name": "DlxScorcherG" },  { "id": 6, "variant": 5, "name": "NeoScorcherG" },
    { "id": 7, "variant": 0, "name": "Koma" },          { "id": 7, "variant": 1, "name": "Shishi" },        { "id": 7, "variant": 2, "name": "Shisa" },
    { "id": 7, "variant": 3, "name": "KomaG" },         { "id": 7, "variant": 4, "name": "ShishiG" },       { "id": 7, "variant": 5, "name": "ShisaG" },
    { "id": 8, "variant": 0, "name": "Wibbledee" },     { "id": 8, "variant": 1, "name": "Wibbledoo" },     { "id": 8, "variant": 2, "name": "Wibbledum" },
    { "id": 8, "variant": 3, "name": "WibbledeeG" },    { "id": 8, "variant": 4, "name": "WibbledooG" },    { "id": 8, "variant": 5, "name": "WibbledumG" },
    { "id": 9, "variant": 0, "name": "StreamCancro" },  { "id": 9, "variant": 1, "name": "RiverCancro" },   { "id": 9, "variant": 2, "name": "SeaCancro" },
    { "id": 9, "variant": 3, "name": "StreamCancroG" }, { "id": 9, "variant": 4, "name": "RiverCancroG" },  { "id": 9, "variant": 5, "name": "SeaCancroG" },
    { "id": 10, "variant": 0, "name": "BlueShark" },    { "id": 10, "variant": 1, "name": "SandShark" },    { "id": 10, "variant": 2, "name": "GoblinShark" },
    { "id": 10, "variant": 3, "name": "BlueSharkG" },   { "id": 10, "variant": 4, "name": "SandSharkG" },   { "id": 10, "variant": 5, "name": "GoblinSharkG" },
    { "id": 11, "variant": 0, "name": "Spinguin" },     { "id": 11, "variant": 1, "name": "MidSpinguin" },  { "id": 11, "variant": 2, "name": "TopSpinguin" },
    { "id": 11, "variant": 3, "name": "SpinguinG" },    { "id": 11, "variant": 4, "name": "MidSpinguinG" }, { "id": 11, "variant": 5, "name": "TopSpinguinG" },
    { "id": 12, "variant": 0, "name": "Stealth" },      { "id": 12, "variant": 1, "name": "MegaStealth" },  { "id": 12, "variant": 2, "name": "GigaStealth" },
    { "id": 12, "variant": 3, "name": "StealthG" },     { "id": 12, "variant": 4, "name": "MegaStealthG" }, { "id": 12, "variant": 5, "name": "GigaStealthG" },
    { "id": 13, "variant": 0, "name": "ShockMummy" },   { "id": 13, "variant": 1, "name": "ShockTut" },     { "id": 13, "variant": 2, "name": "ShockSeti" },
    { "id": 13, "variant": 3, "name": "ShockMummyG" },  { "id": 13, "variant": 4, "name": "ShockTutG" },    { "id": 13, "variant": 5, "name": "ShockSetiG" },
    { "id": 14, "variant": 0, "name": "Voltragon" },    { "id": 14, "variant": 1, "name": "Wattragon" },    { "id": 14, "variant": 2, "name": "Ampragon" },
    { "id": 14, "variant": 3, "name": "VoltragonG" },   { "id": 14, "variant": 4, "name": "WattragonG" },   { "id": 14, "variant": 5, "name": "AmpragonG" },
    { "id": 15, "variant": 0, "name": "Zapper" },       { "id": 15, "variant": 1, "name": "Zappster" },     { "id": 15, "variant": 2, "name": "Zappattack" },
    { "id": 15, "variant": 3, "name": "ZapperG" },      { "id": 15, "variant": 4, "name": "ZappsterG" },    { "id": 15, "variant": 5, "name": "ZappattackG" },
    { "id": 16, "variant": 0, "name": "Arachnid" },     { "id": 16, "variant": 1, "name": "Arachnod" },     { "id": 16, "variant": 2, "name": "Arachnoid" },
    { "id": 16, "variant": 3, "name": "ArachnidG" },    { "id": 16, "variant": 4, "name": "ArachnodG" },    { "id": 16, "variant": 5, "name": "ArachnoidG" },
    { "id": 17, "variant": 0, "name": "ShuriKen" },     { "id": 17, "variant": 1, "name": "ShuriKen-2" },   { "id": 17, "variant": 2, "name": "ShuriKen-3" },
    { "id": 17, "variant": 3, "name": "ShuriKenG" },    { "id": 17, "variant": 4, "name": "ShuriKen-2G" },  { "id": 17, "variant": 5, "name": "ShuriKen-3G" },
    { "id": 18, "variant": 0, "name": "GrassPollen" },  { "id": 18, "variant": 1, "name": "WeedPollen" },   { "id": 18, "variant": 2, "name": "TreePollen" },
    { "id": 18, "variant": 3, "name": "GrassPollenG" }, { "id": 18, "variant": 4, "name": "WeedPollenG" },  { "id": 18, "variant": 5, "name": "TreePollenG" },
    { "id": 19, "variant": 0, "name": "Nutty" },        { "id": 19, "variant": 1, "name": "Nutsy" },        { "id": 19, "variant": 2, "name": "Nutso" },
    { "id": 19, "variant": 3, "name": "NuttyG" },       { "id": 19, "variant": 4, "name": "NutsyG" },       { "id": 19, "variant": 5, "name": "NutsoG" },
    { "id": 20, "variant": 0, "name": "Raid" },         { "id": 20, "variant": 1, "name": "Ravage" },       { "id": 20, "variant": 2, "name": "Ransack" },
    { "id": 20, "variant": 3, "name": "RaidG" },        { "id": 20, "variant": 4, "name": "RavageG" },      { "id": 20, "variant": 5, "name": "RansackG" },
    { "id": 21, "variant": 0, "name": "Chakram" },      { "id": 21, "variant": 1, "name": "BlueChakram" },  { "id": 21, "variant": 2, "name": "OnyxChakram" },
    { "id": 21, "variant": 3, "name": "ChakramG" },     { "id": 21, "variant": 4, "name": "BlueChakramG" }, { "id": 21, "variant": 5, "name": "OnyxChakramG" },
    { "id": 22, "variant": 0, "name": "Musashi" },      { "id": 22, "variant": 1, "name": "Kotetsu" },      { "id": 22, "variant": 2, "name": "Masamune" },
    { "id": 22, "variant": 3, "name": "MusashiG" },     { "id": 22, "variant": 4, "name": "KotetsuG" },     { "id": 22, "variant": 5, "name": "MasamuneG" },
    { "id": 23, "variant": 0, "name": "BoneArcher" },   { "id": 23, "variant": 1, "name": "SkeleArcher" },  { "id": 23, "variant": 2, "name": "GhoulArcher" },
    { "id": 23, "variant": 3, "name": "BoneArcherG" },  { "id": 23, "variant": 4, "name": "SkeleArcherG" }, { "id": 23, "variant": 5, "name": "GhoulArcherG" },
    { "id": 24, "variant": 0, "name": "BaseMortar" },   { "id": 24, "variant": 1, "name": "BaseGunner" },   { "id": 24, "variant": 2, "name": "BaseSniper" },
    { "id": 24, "variant": 3, "name": "BaseMortarG" },  { "id": 24, "variant": 4, "name": "BaseGunnerG" },  { "id": 24, "variant": 5, "name": "BaseSniperG" },
    { "id": 25, "variant": 0, "name": "MuDefender" },   { "id": 25, "variant": 1, "name": "MuProtector" },  { "id": 25, "variant": 2, "name": "MuGuardian" },
    { "id": 25, "variant": 3, "name": "MuDefenderG" },  { "id": 25, "variant": 4, "name": "MuProtectorG" }, { "id": 25, "variant": 5, "name": "MuGuardianG" },
    { "id": 26, "variant": 0, "name": "NoiseWzrdB1" },  { "id": 26, "variant": 1, "name": "NoiseWzrdB2" },  { "id": 26, "variant": 2, "name": "NoiseWzrdR1" },
    { "id": 26, "variant": 3, "name": "NoiseWzrdR2" },  { "id": 26, "variant": 4, "name": "NoiseWzrdS1" },  { "id": 26, "variant": 5, "name": "NoiseWzrdS2" },
    { "id": 27, "variant": 0, "name": "MalWizard" },    { "id": 27, "variant": 1, "name": "MalWizard2" },   { "id": 27, "variant": 2, "name": "MalWizard3" },
    { "id": 27, "variant": 3, "name": "MalWizardG" },   { "id": 27, "variant": 4, "name": "MalWizard2G" },  { "id": 27, "variant": 5, "name": "MalWizard3G" },
    { "id": 28, "variant": 0, "name": "Grabity" },      { "id": 28, "variant": 1, "name": "Grabotron" },    { "id": 28, "variant": 2, "name": "Grabaklone" },
    { "id": 28, "variant": 3, "name": "GrabityG" },     { "id": 28, "variant": 4, "name": "GrabotronG" },   { "id": 28, "variant": 5, "name": "GrabakloneG" },
    { "id": 29, "variant": 0, "name": "OmegaXCopyG" },  { "id": 29, "variant": 1, "name": "OmegaXCopyY" },  { "id": 29, "variant": 2, "name": "OmegaXCopyR" },
    { "id": 29, "variant": 3, "name": "OmegaXCopyW" },  { "id": 29, "variant": 4, "name": "OmegaXCopyP" },  { "id": 29, "variant": 5, "name": "OmegaXCopyB" },
]

boss_list = [
    { "id": 129, "variant": 0, "name": "Spade Magnus",      "leaderboard_id": 160302 },
    { "id": 129, "variant": 1, "name": "Spade Magnus V2",   "leaderboard_id": 160303 },
    { "id": 129, "variant": 2, "name": "Spade Magnus V3",   "leaderboard_id": 160304 },
    { "id": 129, "variant": 3, "name": "Spade Magnus R",    "leaderboard_id": 160305 },
    { "id": 129, "variant": 4, "name": "Spade Magnus Ω",    "leaderboard_id": 160306 },
    { "id": 130, "variant": 0, "name": "Diamond Ice",       "leaderboard_id": 160307 },
    { "id": 130, "variant": 1, "name": "Diamond Ice V2",    "leaderboard_id": 160308 },
    { "id": 130, "variant": 2, "name": "Diamond Ice V3",    "leaderboard_id": 160309 },
    { "id": 130, "variant": 3, "name": "Diamond Ice R",     "leaderboard_id": 160310 },
    { "id": 130, "variant": 4, "name": "Diamond Ice Ω",     "leaderboard_id": 160311 },
    { "id": 131, "variant": 0, "name": "Club Strong",       "leaderboard_id": 160312 },
    { "id": 131, "variant": 1, "name": "Club Strong V2",    "leaderboard_id": 160313 },
    { "id": 131, "variant": 2, "name": "Club Strong V3",    "leaderboard_id": 160314 },
    { "id": 131, "variant": 3, "name": "Club Strong R",     "leaderboard_id": 160315 },
    { "id": 131, "variant": 4, "name": "Club Strong Ω",     "leaderboard_id": 160316 },
    { "id": 132, "variant": 0, "name": "Queen Virgo",       "leaderboard_id": 160317 },
    { "id": 132, "variant": 1, "name": "Queen Virgo V2",    "leaderboard_id": 160318 },
    { "id": 132, "variant": 2, "name": "Queen Virgo V3",    "leaderboard_id": 160319 },
    { "id": 132, "variant": 3, "name": "Queen Virgo R",     "leaderboard_id": 160320 },
    { "id": 132, "variant": 4, "name": "Queen Virgo Ω",     "leaderboard_id": 160321 },
    { "id": 133, "variant": 0, "name": "Jack Corvus",       "leaderboard_id": 160322 },
    { "id": 133, "variant": 1, "name": "Jack Corvus V2",    "leaderboard_id": 160323 },
    { "id": 133, "variant": 2, "name": "Jack Corvus V3",    "leaderboard_id": 160324 },
    { "id": 133, "variant": 3, "name": "Jack Corvus R",     "leaderboard_id": 160325 },
    { "id": 133, "variant": 4, "name": "Jack Corvus Ω",     "leaderboard_id": 160326 },
    { "id": 134, "variant": 0, "name": "Dread Joker",       "leaderboard_id": 160327 },
    { "id": 134, "variant": 1, "name": "Dread Joker V2",    "leaderboard_id": 160328 },
    { "id": 134, "variant": 2, "name": "Dread Joker V3",    "leaderboard_id": 160329 },
    { "id": 134, "variant": 3, "name": "Dread Joker R",     "leaderboard_id": 160330 },
    // Unobtainable without Wi-Fi connectivity
    //{ "id": 134, "variant": 4, "name": "Dread Joker RR",  "leaderboard_id":  },
    { "id": 135, "variant": 0, "name": "Crimson Dragon",    "leaderboard_id": 160331 },
    //{ "id": 135, "variant": 1, "name": "Crimson Dragon",  },"leaderboard_id": 160333 },
    { "id": 135, "variant": 2, "name": "Crimson Dragon SP", "leaderboard_id": 160332 },
    //{ "id": 135, "variant": 3, "name": "Crimson Dragon",  },"leaderboard_id": 160333 },
    { "id": 135, "variant": 4, "name": "Crimson Dragon Σ",  "leaderboard_id": 160333 },
    { "id": 136, "variant": 0, "name": "Taurus Fire",       "leaderboard_id": 160334 },
    { "id": 136, "variant": 1, "name": "Taurus Fire V2",    "leaderboard_id": 160335 },
    { "id": 136, "variant": 2, "name": "Taurus Fire V3",    "leaderboard_id": 160336 },
    { "id": 136, "variant": 3, "name": "Taurus Fire R",     "leaderboard_id": 160337 },
    { "id": 136, "variant": 4, "name": "Taurus Fire Ω",     "leaderboard_id": 160338 },
    { "id": 137, "variant": 0, "name": "Rogue",             "leaderboard_id": 160339 },
    { "id": 137, "variant": 1, "name": "Rogue V2",          "leaderboard_id": 160340 },
    { "id": 137, "variant": 2, "name": "Rogue V3",          "leaderboard_id": 160341 },
    { "id": 137, "variant": 3, "name": "Rogue Z",           "leaderboard_id": 160342 },
    { "id": 137, "variant": 4, "name": "Rogue ZZ",          "leaderboard_id": 160343 },
    { "id": 138, "variant": 0, "name": "Acid Ace",          "leaderboard_id": 160344 },
    { "id": 138, "variant": 1, "name": "Acid Ace B",        "leaderboard_id": 160345 },
    { "id": 138, "variant": 2, "name": "Acid Ace V3",       "leaderboard_id": 160346 },
    { "id": 138, "variant": 3, "name": "Acid Ace R",        "leaderboard_id": 160347 },
    // Unobtainable without Wi-Fi connectivity
    //{ "id": 138, "variant": 4, "name": "Acid Ace BB",     "leaderboard_id":  },
    { "id": 139, "variant": 0, "name": "Dark Phantom",      "leaderboard_id": 160348 },
    { "id": 139, "variant": 1, "name": "Dark Phantom V2",   "leaderboard_id": 160349 },
    { "id": 139, "variant": 2, "name": "Dark Phantom V3",   "leaderboard_id": 160350 },
    { "id": 139, "variant": 3, "name": "Dark Phantom R",    "leaderboard_id": 160351 },
    { "id": 139, "variant": 4, "name": "Dark Phantom Ω",    "leaderboard_id": 160352 },
    { "id": 140, "variant": 0, "name": "Cygnus Wing",       "leaderboard_id": 160353 },
    { "id": 140, "variant": 1, "name": "Cygnus Wing V2",    "leaderboard_id": 160354 },
    { "id": 140, "variant": 2, "name": "Cygnus Wing V3",    "leaderboard_id": 160355 },
    { "id": 140, "variant": 3, "name": "Cygnus Wing R",     "leaderboard_id": 160356 },
    { "id": 140, "variant": 4, "name": "Cygnus Wing Ω",     "leaderboard_id": 160357 },
    { "id": 141, "variant": 0, "name": "Wolf Woods",        "leaderboard_id": 160358 },
    { "id": 141, "variant": 1, "name": "Wolf Woods V2",     "leaderboard_id": 160359 },
    { "id": 141, "variant": 2, "name": "Wolf Woods V3",     "leaderboard_id": 160360 },
    { "id": 141, "variant": 3, "name": "Wolf Woods R",      "leaderboard_id": 160361 },
    { "id": 141, "variant": 4, "name": "Wolf Woods Ω",      "leaderboard_id": 160362 },
    { "id": 142, "variant": 0, "name": "Moon Destroyer",    "leaderboard_id": 160363 },
    { "id": 142, "variant": 1, "name": "Moon Destroyer V2", "leaderboard_id": 160364 },
    { "id": 142, "variant": 2, "name": "Moon Destroyer V3", "leaderboard_id": 160365 },
    { "id": 142, "variant": 3, "name": "Moon Destroyer R",  "leaderboard_id": 160366 },
    { "id": 142, "variant": 4, "name": "Moon Destroyer Σ",  "leaderboard_id": 160367 },
    { "id": 143, "variant": 0, "name": "Apollo Flame",      "leaderboard_id": 160368 },
    { "id": 143, "variant": 1, "name": "Apollo Flame V2",   "leaderboard_id": 160369 },
    { "id": 143, "variant": 2, "name": "Apollo Flame V3",   "leaderboard_id": 160370 },
    { "id": 143, "variant": 4, "name": "Apollo Flame Σ",    "leaderboard_id": 160372 },
    { "id": 144, "variant": 0, "name": "Sirius",            "leaderboard_id": 160373 },
    { "id": 144, "variant": 1, "name": "Sirius V2",         "leaderboard_id": 160374 },
    { "id": 144, "variant": 2, "name": "Sirius V3",         "leaderboard_id": 160375 },
    { "id": 144, "variant": 4, "name": "Sirius Σ",          "leaderboard_id": 160377 },
]

virus_dict = {}
for virus in virus_list {
    key = virus["id"] + (virus["variant"] * 256)
    virus_dict[key] = virus["name"]
}

boss_dict = {}
for boss in boss_list {
    key = boss["id"] + (boss["variant"] * 256)
    boss_dict[key] = boss["name"]
}

location_dict = {
    // Echo Ridge
    0x00: "Echo Ridge",
    0x01: "Geo's LvRm",
    0x02: "Geo's Room",
    0x03: "Luna's Room",
    0x04: "Bud's Room",
    0x05: "Zack's Room",
    0x06: "BIG WAVE",
    0x2c: "Doghouse Noise",
    0x34: "Ctrl Panel Noise",
    0x35: "Bud's Bed Noise",
    0x5c: "Luna's House CC",
    0x68: "Info Kiosk CC",
    0x69: "ERidge Wicket CC",
    0x89: "School Gate CC",
    
    // Echo Ridge Elementary
    0x07: "Sci. Club Room",
    0x08: "1st Floor Hall",
    0x09: "2nd Floor Hall",
    0x0a: "Class 5-A",
    0x0b: "Roof",
    0x0f: "Roof (Night)",
    0x2b: "School Noise",
    0x2d: "Principal Noise",
    0x36: "Podium Noise",
    0x37: "Hoop Noise",
    0x47: "Rocket CC1",
    0x48: "Rocket CC2",
    0x5d: "Memorial Tree CC",
    0x6a: "Trophy CC",
    0x6b: "Moth Display CC",
    0x6c: "Human Model CC",
    0x6d: "Sprinkler CC",
    0x99: "Principal CC",
    
    // Spica Mall
    0x0c: "Spica Mall",
    0x0d: "Mall Event Area",
    0x0e: "Candy Shop",
    0x2e: "Shop Front Noise",
    0x2f: "Lighting Noise",
    0x30: "Video Game Noise",
    0x38: "Bathroom Noise",
    0x5e: "Security Sys CC",
    0x6e: "Spica Wicket CC",
    0x6f: "Trash Can CC",
    0x70: "Spimo the Cat CC",
    0x75: "Gum Machine CC",
    0x8a: "Dentist CC",
    0x9a: "Shooting Game CC",
    
    // WBG Studios
    0x10: "WBG Studios",
    0x11: "WBG Main Bldg",
    0x12: "Event Stage",
    0x13: "Event Stage",
    0x31: "Tennis Crt Noise",
    0x32: "Water Ctrl Noise",
    0x33: "Tree Noise",
    0x39: "WBG Logo Noise",
    0x49: "Event Stage CC1",
    0x4a: "Event Stage CC2",
    0x4b: "Event Stage CC3",
    0x5f: "Stunt Car CC",
    0x60: "Prop Cabinet CC",
    0x71: "WBG Wicket CC",
    0x72: "Water Ctrl CC",
    0x73: "Studio Set CC",
    0x74: "Card Vendor CC",
    0x9b: "Regulator CC",
    
    // Alohaha
    0x14: "Alohaha",
    0x15: "Beach (Day)",
    0x16: "Beach (Night)",
    0x17: "Alohaha Castle",
    0x3a: "Ship Noise",
    0x3b: "Fish Dsply Noise",
    0x4c: "Enviro Sys CC1",
    0x4d: "Enviro Sys CC2",
    0x4e: "Enviro Sys CC3",
    0x4f: "CC Abyss1",
    0x50: "CC Abyss2",
    0x51: "CC Abyss3",
    0x52: "CC Abyss4",
    0x61: "Stone Wall CC",
    0x62: "IslandDisplay CC",
    0x76: "Alohaha Dog CC",
    0x77: "Dragon Statue CC",
    0x8b: "Food Stand CC",
    
    // National WAZA HQ
    0x18: "Natl WAZA HQ",
    0x19: "SatellaPolice HQ",
    0x1a: "Command Center",
    0x1b: "Natl WAZA HQ (Shields up)",
    0x1c: "SatellaPolice HQ",
    0x1d: "SatellaPolice HQ",
    0x1e: "Command Center",
    0x3c: "World Map Noise",
    0x3d: "Cactus Noise",
    0x56: "Meteor Server1",
    0x57: "Meteor Server2",
    0x58: "Meteor Server3",
    0x59: "Meteor Server4",
    0x63: "Info Board CC",
    0x64: "Main Computer CC",
    0x7a: "Mini Antenna CC",
    0x7b: "Desk CC",
    0x88: "Mr. Hertz Square",
    0x9c: "Admin Monitor CC",
    
    // Orbital Base
    0x22: "Orbital Base",
    0x40: "Port Noise",
    0x67: "Meteor G Ctrl CC",
    0x7f: "Giant Monitor CC",
    
    // Astro Wave
    0xa9: "Natl Astro Wave1",
    0xaa: "Natl Astro Wave2",
    
    // Secret Shelter
    0x1f: "Secret Shelter",
    0x20: "Crimson Factory",
    0x21: "Dealer Base",
    0x3e: "Wooden Box Noise",
    0x3f: "Coin Noise",
    0x53: "Crimson Mchn CC1",
    0x54: "Crimson Mchn CC2",
    0x55: "Crimson Mchn CC3",
    0x65: "King Wall CC",
    0x66: "Crimson Tank CC",
    0x7c: "AC System CC",
    0x7d: "Air Duct CC",
    0x7e: "Analysis Unit CC",
    
    // Noise Wave
    0x25: "Noise Wave1",
    0x26: "Noise Wave2",
    0x27: "Noise Wave3",
    0x28: "Noise Wave4",
    0x29: "Noise Wave5",
    0x2a: "Noise Wave6",
    0x5a: "Black Hole Srvr1",
    0x5b: "Black Hole Srvr2",
    0xab: "OuterAstro Wave1",
    0xac: "OuterAstro Wave2",
    0xad: "PlntFMAstroWave1",
    0xae: "PlntFMAstroWave2",
    0xaf: "PlntFMAstroWave3",
    
    // Misc
    0x23: "Outer Space",
    0x24: "Meteor Explosion",
    0x41: "Jamming Noise1",
    0x42: "Jamming Noise2",
    0x43: "Jamming Noise3",
    0x44: "Jamming Noise4",
    0x45: "Jamming Noise5",
    0x46: "Jamming Noise6",
    0xb0: "Debug"
}

abilities_list = [
    [0xf9540,0xf95c2,0xf95ee,0xf961a],         // HP +50
    [0xf9542,0xf95c4,0xf95f0,0xf961c],         // HP +100
    [0xf9546,0xf95c6,0xf95f2,0xf961e],         // HP +200
    [0xf954a,0xf95c8,0xf95f4,0xf9620],         // HP +300
    [0xf954c,0xf95ca,0xf95f6,0xf9622],         // HP +400
    [0xf954e,0xf95cc,0xf95f8,0xf9624,0xf963c], // HP +500
    [0xf9472,0xf9596,0xf95d2,0xf95fe],         // Under Shirt
    [0xf9474,0xf9598,0xf95d4,0xf9600,0xf962a], // Air Shoes
    [0xf9476,0xf959a,0xf95d6,0xf9602,0xf962c], // Float Shoes
    [0xf9478,0xf959c,0xf95d8,0xf9604,0xf962e], // Reflect
    [0xf947a,0xf959e],                         // Super Armor
    [0xf947c,0xf947c],                         // No Flash
    [0xf947e,0xf95a2],                         // No Gravity
    [0xf9480,0xf95a4],                         // No Paralyze
    [0xf9482,0xf95a6],                         // No Freeze
    [0xf9484,0xf95a8],                         // No Bubble
    [0xf9488,0xf95aa,0xf95da,0xf9606],         // First Barrier            
    [0xf948a,0xf95ac],                         // First Aura
    [0xf95ce,0xf95fa,0xf9626,0xf963e],         // Mega Class +1
    [0xf9554,0xf95d0,0xf95fc,0xf9628],         // Giga Class +1
    [0xf948c,0xf95ae,0xf95dc,0xf9608],         // + V-Shot
    [0xf948e,0xf95b0,0xf95de,0xf960a,0xf9630], // + X-Shot
    [0xf9490,0xf95b2,0xf95e0,0xf960c,0xf9632], // + Spread Shot
    [0xf9492,0xf95b4,0xf95e2,0xf960e,0xf9634], // + Wood Panel
    [0xf9494,0xf95b6,0xf95e4,0xf9610,0xf9636], // + Ice Panel
    [0xf9496,0xf95b8,0xf95e6,0xf9612,0xf9638], // + Paralyze Panel
    [0xf9498,0xf95ba,0xf95e8,0xf9614,0xf963a], // + Guard Null Panel
    [0xf949a,0xf95bc,0xf95ea,0xf9616],         // + Poison Panel
    [0xf94bc],                                 // Auto-Lock
    [0xf94be,0xf95be],                         // Quick Gauge
    [0xf94c0,0xf95c0,0xf95ec,0xf9618],         // Anti-Damage
    [0xf94c2],                                 // Diagonal Lock
    [0xf94c4],                                 // Side Lock
    [0xf94c6],                                 // Joker Program
    [0xf94d4],                                 // Area Eater Support
    [0xf94d6],                                 // Double Stone Support
    [0xf94de],                                 // Panel Format Support
    [0xf94c8],                                 // Humor Word
    [0xf94ca],                                 // Humor Buster 1
    [0xf94cc],                                 // Humor Buster 2
]

fire_chip_ids = [0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x7b,0xd3,0xd4,0xd5,0xd6,0xd7,0xd8,0xe8,0xf1
    ,0x120,0x121,0x122,0x139,0x13a]
aqua_chip_ids = [0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,0x40,0x41,0x42,0x43,0x44,0xea,0xee,0xf4,0xfb,0x123,0x124
    ,0x125,0x126]
elec_chip_ids = [0x4,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,0x50,0x6f,0x70,0x71,0xec,0xef,0xfb
    ,0x102,0x103,0x104,0x111,0x127,0x128,0x129,0x12a,0x135,0x140]
sword_chip_ids = [0xc,0xd,0xe,0x13,0x14,0x15,0x16,0x54,0x55,0x56,0x5d,0x5e,0x5f,0x60,0x61,0x62,0x6c,0x6d,0x6e
    ,0x7b,0xd0,0xd1,0xd2,0xef,0xf0,0xf1,0xf2,0xfb,0x105,0x106,0x107,0x108,0x109,0x10a,0x115,0x117,0x12c,0x12f
    ,0x130,0x134,0x138,0x141,0x142,0x143]

current_character_lookup = {
    0: "Geo",
    1: "Mega Man",
}

std_library_emoji_lookup = {
    150: "🗂"
}

mega_library_emoji_lookup = {
    45: "🗂"
}

giga_library_emoji_lookup = {
    5: "🗂"
}


// Functions
function finished_battle() => prev(byte(0xea8b4)) == 6 && byte(0xea8b4) == 10
function at_results_screen() => byte(0xea8b4) == 10
function in_battle() => game_state == 6
function in_battle_or_results_screen() => game_state == 6 || game_state == 10
function at_title_screen() => game_state == 0 || game_state == 2 || game_state == 3 || game_state == 4
function game_over() => in_battle_or_results_screen() && game_over_state == 1
function in_overworld() => game_state == 5
function save_corrupted() => game_state == 1
function in_battle_vs_viruses() => in_battle_or_results_screen() && enemy1_id < 30
function in_battle_vs_boss() => in_battle_or_results_screen() && enemy1_id > 128
function fighting_three_viruses() => tbyte(enemy3_pointer) != 0
function fighting_two_viruses() => tbyte(enemy2_pointer) != 0
function fighting_one_virus() => tbyte(enemy1_pointer) != 0
function viewing_messages() => current_bottom_screen_menu == 0x287888
function viewing_library() => current_bottom_screen_menu == 0x28d260
function viewing_profile() => current_bottom_screen_menu == 0x28ee68
function viewing_folder() => current_bottom_screen_menu == 0x29da70
function editing_folder() => current_bottom_screen_menu == 0x297878
function viewing_brothers() => current_bottom_screen_menu == 0x298930
function viewing_items() => current_bottom_screen_menu == 0x29cd78
function viewing_abilities() => current_bottom_screen_menu == 0x29ef30
function viewing_megaman() => current_bottom_screen_menu == 0x2a0cf0
function viewing_network() => current_bottom_screen_menu == 0x2a00b8
function viewing_omega() => current_bottom_screen_menu == 0x2a3df4
function watching_credits() => current_bottom_screen_menu == 0x2a63e8 
function not_in_submenu() => current_bottom_screen_menu == 0x285cec
function in_shop() => current_bottom_screen_menu == 0x29ca34 
function loading_into_battle() => (byte(0xea8b4) == 8 || byte(0xea8b4) == 9) || !fighting_one_virus() && byte(0xea8b4) == 6
function player_movement_allowed() => control_state = 0
function player_movement_not_allowed() => control_state != 0
function bottom_menu_open() => bottom_menu_state == 1
function on_wave_road_or_cc() => out_of_battle_state != 1
//function enemy1_just_deleted() => prev(enemy1_health) > 0 && enemy1_health == 0
//function enemy2_just_deleted() => prev(enemy2_health) > 0 && enemy2_health == 0
//function enemy3_just_deleted() => prev(enemy3_health) > 0 && enemy3_health == 0
function enemy1_just_deleted() => prev(tbyte(enemy1_pointer)) > 0 && tbyte(enemy1_pointer) == 0 && game_state == 6
function enemy2_just_deleted() => prev(tbyte(enemy2_pointer)) > 0 && tbyte(enemy2_pointer) == 0 && game_state == 6
function enemy3_just_deleted() => prev(tbyte(enemy3_pointer)) > 0 && tbyte(enemy3_pointer) == 0 && game_state == 6
function any_enemy_just_deleted() => enemy1_just_deleted() || enemy2_just_deleted() || enemy3_just_deleted()
function tile5_is_broken() => tile5_broken_state == 1
function tile5_is_hole() => tile5_hole_state == 1
function tile10_is_broken() => tile10_broken_state == 1
function tile10_is_hole() => tile10_hole_state == 1
function tile15_is_broken() => tile15_broken_state == 1
function tile15_is_hole() => tile15_hole_state == 1
function megaman_on_left_tile() => megaman_field_position == 0
function megaman_on_middle_tile() => megaman_field_position == 1
function megaman_on_right_tile() => megaman_field_position == 2
function s_ranked_battle() => battle_rank == 0x11
function cipher_code_protection() => card_cipher_code_amount_activated == 0
function first_card_minigame_incomplete() => card_first_minigame_state == 1
function card_cc1_incomplete() => card_minigame_cc1_card_state == 1
function card_cc2_incomplete() => card_minigame_cc2_card_state == 1
function card_cc3_incomplete() => card_minigame_cc3_card_state == 1
function boss_fight_loaded() => boss_fight_loaded_state != 0xffff
function player_overworld_movement_allowed() => player_overworld_control_state == 1
function player_overworld_movement_disallowed() => player_overworld_control_state == 0
function acidace_wave_command_input_successful() => prev(acidace_wave_command_state) == 1 && acidace_wave_command_state == 0
function card_minigame_cc1_card_flipped() => 
    current_map_id == 0x53 
    && card_cc1_incomplete() 
    && prev(card_minigame_cc1_state) != 0x6f55
    && (prev(card_minigame_cc1_state) == 0x705d || card_minigame_cc1_state == 0x705d)
    && prev(card_minigame_card_flip_count) != card_minigame_card_flip_count
function card_minigame_cc2_card_flipped() => 
    current_map_id == 0x54 
    && card_cc2_incomplete() 
    && prev(card_minigame_cc2_state) != 0x6f55
    && (prev(card_minigame_cc1_state) == 0x705d || card_minigame_cc1_state == 0x705d)
    && prev(card_minigame_card_flip_count) != card_minigame_card_flip_count 
function card_minigame_cc3_card_flipped() => 
    current_map_id == 0x55 
    && card_cc3_incomplete() 
    && prev(card_minigame_cc3_state) != 0x6f55
    && (prev(card_minigame_cc1_state) == 0x705d || card_minigame_cc1_state == 0x705d)
    && prev(card_minigame_card_flip_count) != card_minigame_card_flip_count
function event_chip_protection() {
    event_chips = [0x183, 0x184, 0x185, 0xce, 0xcf]
    
    return all_of(range(0xf9846, 0xf9880, 2), chip_slot =>
        none_of(event_chips, chip => word(chip_slot) == chip)
    )
}
function real_brother_protection() => brother1_lp + brother2_lp + brother3_lp + brother4_lp + brother5_lp + brother6_lp == 0
function event_chip_usage_count() {
    event_chips = [0x183, 0x184, 0x185, 0xce, 0xcf]
    
    return all_of(range(0xf9846, 0xf9880, 2), chip_slot =>
        sum_of(event_chips, chip => word(chip_slot) == chip)
    )
}

unique_abilities_accumulated = []
for abilities in abilities_list {
    array_push(unique_abilities_accumulated, once(any_of(abilities, addr => byte(addr) > 0)))
}
gained_any_ability = any_of(abilities_list, variants => 
    any_of(variants, addr => prev(byte(addr)) == 0 && byte(addr) > 0)
)

card_flip_allotment = []
for i in range(1, 92) {
    array_push(card_flip_allotment, once(always_true()))   
}
array_push(card_flip_allotment, deduct(card_minigame_cc1_card_flipped()))
array_push(card_flip_allotment, deduct(card_minigame_cc2_card_flipped()))
array_push(card_flip_allotment, deduct(card_minigame_cc3_card_flipped()))

function any_chip_used() {
    return prev(last_used_chip) != last_used_chip
}

function is_correct_chip(chip_list) {
    return any_of(chip_list, (id) => last_used_chip == id)
}

function deleted_virus_within_one_second(chip_list) {
    frames_in_1_second = 60
  
    timer_active = once(any_chip_used())
    timer_expired = repeated(frames_in_1_second, timer_active && always_true())

    return timer_active
        && never(timer_expired)
        && is_correct_chip(chip_list)
        && trigger_when(any_enemy_just_deleted())
}

// Achievements
// Warning
achievement(
    id = 610837,
    type = "progression",
    title = "Read the Forum Post",
    description = "Achievement restrictions are in place",
    points = 0,
    trigger = prev(game_state) == 4
        && game_state == 5
        && tutorial_battles_complete == 0
)

// Progression/Win
achievement(
    id = 605904,
    type = "progression",
    title = "You Really Missed School, Huh?",
    description = "Clear the viruses out of the Sprinkler CC and introduce yourself to the Science Club",
    points = 1,
    trigger = prev(tutorial_battles_complete) == 0
        && tutorial_battles_complete == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605654,
    type = "progression",
    title = "Houston, We Have a Solution",
    description = "Defeat Spade Magnus and clear the way for a successful launch",
    points = 3,
    trigger = prev(spademagnus_scenario_end) == 0
        && spademagnus_scenario_end == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    // TODO: Wording
    id = 608170,
    type = "missable",
    title = "What Are You Doing Here?",
    description = "Discover and defeat any V2 story boss before arriving at Orbital Base",
    points = 3,
    trigger = (
            (enemy1_id == 0x81 && current_map_id == 0x0)
            || (enemy1_id == 0x82 && current_map_id == 0x10)
            || (enemy1_id == 0x83 && current_map_id == 0x17)
            || (enemy1_id == 0x8b && current_map_id == 0xaa)
            || (enemy1_id == 0x84 && current_map_id == 0x1a)
            || (enemy1_id == 0x85 && (current_map_id == 0xb || current_map_id == 0xf))
            || (enemy1_id == 0x86 && current_map_id == 0x20)
        )
        && enemy1_variant == 0x01
        && arrive_at_orbital_base == 0x00
        && prev(game_state == 0x6) && trigger_when(game_state == 0xa)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605655,
    type = "progression",
    title = "The Show Must Go On",
    description = "Defeat Diamond Ice and return to the stage for Sonia's final song",
    points = 5,
    trigger = prev(diamondice_scenario_end) == 0
        && diamondice_scenario_end == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605656,
    type = "progression",
    title = "Strong Suit",
    description = "Defeat Club Strong and uncover some hard truths about Dealer",
    points = 5,
    trigger = prev(clubstrong_scenario_end) == 0
        && clubstrong_scenario_end == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605657,
    type = "progression",
    title = "Regal Flush",
    description = "Defeat Queen Virgo and put an end to Dealer's relentless assault on WAZA HQ",
    points = 10,
    trigger = prev(queenvirgo_scenario_end) == 0
        && queenvirgo_scenario_end == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605659,
    type = "progression",
    title = "Landslide Victory",
    description = "Defeat Jack Corvus and watch the new class president get elected",
    points = 10,
    trigger = prev(jackcorvus_scenario_end) == 0
        && jackcorvus_scenario_end == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605660,
    type = "win_condition",
    title = "A Stelar Reunion",
    description = "Defeat Crimson Dragon and see Earth's Purpose fulfilled, making your family whole again",
    points = 25,
    trigger = prev(campaign_end) == 0
        && campaign_end == 1
        && in_overworld()
        && player_movement_not_allowed()
        && event_chip_protection()
        && cipher_code_protection()
        && real_brother_protection()
)

// Challenge
achievement(
    id = 600311,
    type = "missable",
    title = "Frostbite Free",
    description = "Reach Diamond Ice without getting frozen in a single session",
    points = 3,
    trigger = start_diamondice_challenge
        && reset_diamondice_challenge
        && fail_diamondice_challenge
        && complete_diamondice_challenge
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605907,
    type = "missable",
    title = "Alohaha Acrobat",
    description = "Reach Club Strong without tripping or falling in a single session",
    points = 3,
    trigger = start_clubstrong_challenge
        && reset_clubstrong_challenge
        && fail_clubstrong_challenge
        && complete_clubstrong_challenge
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607086,
    type = "missable",
    title = "Playing with Fire",
    description = "Survive your first encounter with Jack Corvus without taking damage",
    points = 5,
    trigger = start_jackcorvus_scripted_challenge
        && fail_jackcorvus_scripted_challenge
        && complete_jackcorvus_scripted_challenge
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607087,
    type = "missable",
    title = "Curtain Call",
    description = "Defeat Cygnus Wing with an S rank before the end of their introduction chapter",
    points = 5,
    trigger = enemy1_id == 0x8c
        && current_map_id == 0x19
        && queenvirgo_scenario_end == 0
        && trigger_when(s_ranked_battle())
        && prev(byte(0xea8b4)) == 6 && trigger_when(byte(0xea8b4) == 10)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605908,
    type = "missable",
    title = "Straight A's in Noise Control",
    description = "Don't miss any noise clusters in the noise monster minigames without leaving Echo Ridge Elementary in a single session",
    points = 5,
    trigger = start_noise_cluster_challenge
        && reset_noise_cluster_challenge
        && fail_noise_cluster_challenge
        && complete_noise_cluster_challenge
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    //TODO: Trigger
    id = 607089,
    type = "missable",
    title = "Flawless Evaluation",
    description = "Survive your encounter with Acid Ace without taking damage",
    points = 5,
    trigger = start_acidace_scripted_challenge
        && fail_acidace_scripted_challenge
        && complete_acidace_scripted_challenge
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607090,
    type = "missable",
    title = "Bark Worse than His Bite",
    description = "Defeat Wolf Woods with an S rank before the end of their introduction chapter",
    points = 5,
    trigger = enemy1_id == 0x8d
        && current_map_id == 0x0b
        && jackcorvus_scenario_end == 0
        && trigger_when(s_ranked_battle())
        && prev(byte(0xea8b4)) == 6 && trigger_when(byte(0xea8b4) == 10)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607091,
    type = "missable",
    title = "Disaster Averted",
    description = "Defeat Moon Destroyer with an S rank before the end of their introduction chapter",
    points = 5,
    trigger = enemy1_id == 0x8e
        && current_map_id == 0xaa
        && campaign_end == 0
        && trigger_when(s_ranked_battle())
        && prev(byte(0xea8b4)) == 6 && trigger_when(byte(0xea8b4) == 10)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607092,
    type = "missable",
    title = "Card Counting",
    description = "Restore all wave roads in Crimson Factory by flipping no more than 92 cards in a single session ",
    points = 5,
    trigger = (
        cipher_code_protection() 
        && real_brother_protection()
        && once(
            prev(current_map_id) == 0x20
            && current_map_id == 0x53
            && card_minigame_event_start == 0
            && first_card_minigame_incomplete()
        )
        && prev(card_minigame_event_end) == 0
        && trigger_when(
            current_map_id == 0x55 
            && card_minigame_event_end == 1
        )
        && never(tally(
            93, 
            card_minigame_cc1_card_flipped(),
            card_minigame_cc2_card_flipped(),
            card_minigame_cc3_card_flipped()
        )) 
        && (
            // Credit to Souzooka for the forced alt measured structure
            bit0(0x0) == prev(bit0(0x0))
            || measured(tally(92, card_flip_allotment))
        )
    )
)

achievement(
    id = 607094,
    title = "Opposites Detract",
    description = "Defeat Spade Magnus R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x81
        && enemy1_variant == 0x3
        && (current_map_id == 0x7a || current_map_id == 0x28)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607095,
    title = "Clear-Cut Victory",
    description = "Defeat Club Strong R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x83
        && enemy1_variant == 0x3
        && (current_map_id == 0x5c || current_map_id == 0x29)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607096,
    title = "Smoke and Mirrors",
    description = "Defeat Dark Phantom R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x8b
        && enemy1_variant == 0x3
        && (current_map_id == 0x7d || current_map_id == 0xab)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607097,
    title = "Flawless Cut",
    description = "Defeat Diamond Ice R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x82
        && enemy1_variant == 0x3
        && (current_map_id == 0x77 || current_map_id == 0xab)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607098,
    title = "No Fly Zone",
    description = "Defeat Cygnus Wing R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x8c
        && enemy1_variant == 0x3
        && (current_map_id == 0x8a || current_map_id == 0xac)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607099,
    title = "Crying Wolf",
    description = "Defeat Wolf Woods R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x8d
        && enemy1_variant == 0x3
        && (current_map_id == 0x73 || current_map_id == 0xac)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607100,
    title = "Supernova Disarmament",
    description = "Defeat Moon Destroyer R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x8e
        && enemy1_variant == 0x3
        && (current_map_id == 0x5d || current_map_id == 0xad)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607101,
    title = "Well Done",
    description = "Defeat Taurus Fire R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x88
        && enemy1_variant == 0x3
        && (current_map_id == 0x7e || current_map_id == 0xad)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607102,
    title = "Swift Dethroning",
    description = "Defeat Queen Virgo R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x84
        && enemy1_variant == 0x3
        && (current_map_id == 0x70 || current_map_id == 0xae)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607103,
    title = "Discarded Jack",
    description = "Defeat Jack Corvus R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x85
        && enemy1_variant == 0x3
        && (current_map_id == 0x64 || current_map_id == 0xae)
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607104,
    title = "Dread Naught",
    description = "Defeat Dread Joker R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x86
        && enemy1_variant == 0x3
        && current_map_id == 0x5a
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607105,
    title = "Perfectly Neutralized",
    description = "Defeat Acid Ace R with an S rank",
    points = 10,
    trigger = s_ranked_battle()
        && enemy1_id == 0x8a
        && enemy1_variant == 0x3
        && current_map_id == 0x5a
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

// Feature Display/Fun
achievement(
    //TODO: Trigger;
    id = 607106,
    title = "Wave Command Accepted",
    description = "Successfully perform a second slash with any AcidAce card",
    points = 3,
    trigger = acidace_wave_command_input_successful()
        && in_battle()
        && (last_used_chip == 0xa9 || last_used_chip == 0xaa || last_used_chip == 0xab || last_used_chip == 0x16e)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607107,
    type = "missable",
    title = "Off the Books",
    description = "Perform a Galaxy Advance which results in an illegal card that's not yet registered in the library",
    points = 5,
    trigger = game_state == 6
        && prev(galaxy_advance_formed == 0xffff)
        && (
            (galaxy_advance_formed == 0x110 && impct_canon_obtained == 0)
            || (galaxy_advance_formed == 0x113 && big_grenade_obtained == 0)
            || (galaxy_advance_formed == 0x117 && giant_axe_obtained == 0)
            || (galaxy_advance_formed == 0x119 && plat_meteor_obtained == 0)
            || (galaxy_advance_formed == 0x137 && hrrcn_dance_obtained == 0)
        )
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 606435,
    title = "Air Superiority",
    description = "Defeat a virus while over a broken or hole tile with Cygnus Noise",
    points = 5,
    trigger =
        in_battle()
        && current_noise_form == 2
        && any_enemy_just_deleted()
        && ((
            megaman_on_left_tile() 
            && (tile5_is_broken() || tile5_is_hole())
        ) || (
            megaman_on_middle_tile() 
            && (tile10_is_broken() || tile10_is_hole()) 
        ) || (
            megaman_on_right_tile() 
            && (tile15_is_broken() || tile15_is_hole()) 
        ))
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607108,
    title = "Fanning the Flames",
    description = "Delete a virus within 1 second using a non-dimming fire card while in Taurus Noise without using the same chip twice in a row",
    points = 5,
    trigger = current_noise_type != 0xc
        && current_noise_form == 0x7
        && deleted_virus_within_one_second(fire_chip_ids)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607109,
    title = "Tidal Wave",
    description = "Delete a virus within 1 second using a non-dimming aqua card while in Virgo Noise without using the same chip twice in a row",
    points = 5,
    trigger = current_noise_type != 0xc
        && current_noise_form == 0x8
        && deleted_virus_within_one_second(aqua_chip_ids)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607110,
    title = "Shock and Awe",
    description = "Delete a virus within 1 second using a non-dimming elec card while in Crown Noise without using the same chip twice in a row",
    points = 5,
    trigger = current_noise_type != 0xc
        && current_noise_form == 0x9
        && deleted_virus_within_one_second(elec_chip_ids)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607111,
    title = "Feral Slash",
    description = "Delete a virus within 1 second using a non-dimming sword card excluding Muramasa while in Wolf Noise without using the same chip twice in a row",
    points = 5,
    trigger = current_noise_type != 0xc
        && current_noise_form == 0xa
        && deleted_virus_within_one_second(sword_chip_ids)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607112,
    title = "Black Ace Frequency",
    description = "Transform into Libra Noise, Corvus Noise, Cancer Noise, Gemini Noise, or Ophiuca Noise",
    points = 5,
    trigger = (
            (prev(current_noise_form != 0x1) && current_noise_form == 0x1)
            || (prev(current_noise_form != 0x2) && current_noise_form == 0x2)
            || (prev(current_noise_form != 0x3) && current_noise_form == 0x3)
            || (prev(current_noise_form != 0x4) && current_noise_form == 0x4)
            || (prev(current_noise_form != 0x5) && current_noise_form == 0x5)
        )
        && game_state == 6
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607113,
    title = "Going Rogue",
    description = "Transform into Rogue Noise",
    points = 5,
    trigger = prev(current_noise_form != 0xb) && current_noise_form == 0xb
        && game_state == 6
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607114,
    title = "Access Requested",
    description = "Activate Level 1 or greater Meteor Server Access",
    points = 3,
    trigger = meteor_server_level >= 0
        && prev(meteor_server_state == 0) && meteor_server_state == 1
        && in_battle()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607115,
    title = "Access Granted",
    description = "Activate Level 6 or greater Meteor Server Access",
    points = 5,
    trigger = meteor_server_level >= 5
        && prev(meteor_server_state == 0) && meteor_server_state == 1
        && in_battle()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607116,
    title = "Access Elevated",
    description = "Activate Level 11 Meteor Server Access",
    points = 10,
    trigger = meteor_server_level >= 0xa
        && prev(meteor_server_state == 0) && meteor_server_state == 1
        && in_battle()
        && cipher_code_protection()
        && real_brother_protection()
)

// Collection/Completion
achievement(
    id = 599555,
    title = "Hometown Hoarder",
    description = "Collect every blue and purple Mystery Wave in Echo Ridge",
    points = 5,
    trigger = prev(echoridge_mystery_waves) == 1
        && measured(10 - echoridge_mystery_waves == 10, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599556,
    title = "Wave Road Scholar",
    description = "Collect every blue and purple Mystery Wave in Echo Ridge Elementary",
    points = 5,
    trigger = prev(echoridgeelem_mystery_waves) == 1
        && measured(18 - echoridgeelem_mystery_waves == 18, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599561,
    title = "Bargain Hunter VG",
    description = "Collect every blue and purple Mystery Wave in Spica Mall",
    points = 5,
    trigger = prev(spicamall_mystery_waves) == 1
        && measured(22 - spicamall_mystery_waves == 22, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599562,
    title = "Props and Drops",
    description = "Collect every blue and purple Mystery Wave in WBG Studios",
    points = 5,
    trigger = prev(wbgstudios_mystery_waves) == 1 
        && measured(26 - wbgstudios_mystery_waves == 26, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599553,
    title = "Tropical Beachcomber",
    description = "Collect every blue and purple Mystery Wave in Alohaha",
    points = 5,
    trigger = prev(alohaha_mystery_waves) == 1
        && measured(20 - alohaha_mystery_waves == 20, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599557,
    title = "Top Secret Clearance",
    description = "Collect every blue and purple Mystery Wave in National WAZA HQ",
    points = 5,
    trigger = prev(wazahq_mystery_waves) == 1
        && measured(21 - wazahq_mystery_waves == 21, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599559,
    title = "Zero-G Scavenger",
    description = "Collect every blue and purple Mystery Wave in Orbital Base",
    points = 5,
    trigger = prev(orbitalbase_mystery_waves) == 1
        && measured(6 - orbitalbase_mystery_waves == 6, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599554,
    title = "Cosmic Collector",
    description = "Collect every blue and purple Mystery Wave in Astro Wave",
    points = 5,
    trigger = prev(astrowave_mystery_waves) == 1
        && measured(5 - astrowave_mystery_waves == 5, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599560,
    title = "Dealer's Stash",
    description = "Collect every blue and purple Mystery Wave in Secret Shelter",
    points = 5,
    trigger = prev(secretshelter_mystery_waves) == 1
        && measured(16 - secretshelter_mystery_waves == 16, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 599558,
    title = "Signal in the Static",
    description = "Collect every blue and purple Mystery Wave in Noise Waves",
    points = 5,
    trigger = prev(noisewave_mystery_waves) == 1
        && measured(39 - noisewave_mystery_waves == 39, on_wave_road_or_cc())
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 605903,
    title = "The Golden Frequency",
    description = "Collect your first gold mystery wave",
    points = 5,
    trigger = prev(gold_mystery_waves) == 1
        && 1 - gold_mystery_waves == 1
        && in_overworld()
        && on_wave_road_or_cc()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607117,
    title = "Hometown Hero",
    description = "Complete all help requests in Echo Ridge",
    points = 10,
    trigger = prev(echo_ridge_help_requests) == 7
        && measured(echo_ridge_help_requests == 8, in_overworld())
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607118,
    title = "Spica Samaritan",
    description = "Complete all help requests in Spica Mall",
    points = 10,
    trigger = prev(spica_mall_help_requests) == 2
        && measured(spica_mall_help_requests == 3, in_overworld())
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607119,
    title = "Production Assistant",
    description = "Complete all help requests in WBG Studios",
    points = 10,
    trigger = prev(wbg_studio_help_requests) == 2
        && measured(wbg_studio_help_requests == 3, in_overworld())
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607120,
    title = "WAZA Employee of the Month",
    description = "Complete all help requests in WAZA HQ",
    points = 10,
    trigger = prev(waza_hq_help_requests) == 8
        && measured(waza_hq_help_requests == 9, in_overworld())
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607121,
    title = "Brothers in Arms",
    description = "Obtain 900 Link Power from in-game Brothers",
    points = 10,
    trigger = prev(link_power < 900) && measured(link_power == 900)
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607122,
    title = "Boundless Links",
    description = "Collect at least 1 variant of every uniquely named ability",
    points = 10,
    trigger = measured(tally(length(abilities_list), unique_abilities_accumulated))
        && (game_state == 5 || game_state == 6 || game_state == 0xa)
        && gained_any_ability
        && never(at_title_screen())
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607123,
    title = "Maximum Vitality",
    description = "Obtain 1000 HP without abilities",
    points = 10,
    trigger = in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
        // Normalize pickup counts to Mega Man HP display value for measured
        && (prev(100 + (hpmem10_count * 10) + (hpmem20_count * 20) == 980) 
            || prev(100 + (hpmem10_count * 10) + (hpmem20_count * 20) == 990))
        && measured(100 + (hpmem10_count * 10) + (hpmem20_count * 20) == 1000)

)

achievement(
    id = 600265,
    title = "Xis Marks the Spot",
    description = "Obtain every Omega-Xis weapon",
    points = 25,
    trigger = in_overworld()
        && prev(omega_weapons_count) == 21 && measured(omega_weapons_count == 22)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607124,
    title = "The Gang's All Here",
    description = "Rescue 47 Hertz",
    points = 5, 
    trigger = at_results_screen()
        && prev(hertz_count == 46) && measured(hertz_count == 47)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607125,
    title = "Lawless Loadout",
    description = "Obtain 30 unique illegal cards",
    points = 5,
    trigger = prev(illegal_library_total_cards == 29) && measured(illegal_library_total_cards == 30, game_state == 0x5 || game_state == 0xa)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607126,
    title = "Omega Keymaster",
    description = "Open all 3 doors requiring Omega Pieces",
    points = 10,
    trigger = prev(omega_doors_closed == 1)
        && measured(3 - omega_doors_closed == 3)
        && in_overworld()
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 596503,
    title = "Standard Issue",
    description = "Complete the Standard chip library",
    points = 10,
    trigger = prev(std_library_total_cards) == 149 
        && measured(std_library_total_cards == 150, game_state == 0x5 || game_state == 0xa)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 596504,
    title = "Mega Stockpile",
    description = "Complete the Mega chip library",
    points = 10,
    trigger = prev(mega_library_total_cards) == 44 
        && measured(mega_library_total_cards == 45, game_state == 0x5 || game_state == 0xa)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 596505,
    title = "Giga Archive",
    description = "Complete the Giga chip library",
    points = 10,
    trigger = prev(giga_library_total_cards) == 4 
        && measured(giga_library_total_cards == 5, game_state == 0x5 || game_state == 0xa)
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607127,
    title = "The Omega Syndicate",
    description = "Defeat QueenVirgoΩ or JackCorvusΩ",
    points = 10,
    trigger = (current_map_id == 0xad || current_map_id == 0xae || current_map_id == 0xaf)
        && (enemy1_id == 84 || enemy1_id == 84)
        && enemy1_variant == 4
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 611120,
    title = "Dawn of the Sun God",
    description = "Defeat Apollo Flame",
    points = 10,
    trigger = current_map_id == 0x2a
        && enemy1_id == 0x8f
        && enemy1_variant == 0
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607128,
    title = "Event Horizon",
    description = "Defeat Sirius",
    points = 10,
    trigger = current_map_id == 0x5d
        && enemy1_id == 90
        && enemy1_variant == 0
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607129,
    title = "Catching ZZ's",
    description = "Defeat Rogue ZZ",
    points = 25,
    trigger = current_map_id == 0x67
        && enemy1_id == 89
        && enemy1_variant == 4
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607130,
    title = "Sigma-Level Defusal",
    description = "Defeat Moon Destroyer Σ",
    points = 25,
    trigger = current_map_id == 0x27
        && enemy1_id == 0x8e
        && enemy1_variant == 4
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607131,
    title = "Twilight of the Sun God",
    description = "Defeat Apollo Flame Σ",
    points = 25,
    trigger = current_map_id == 0x5d
        && enemy1_id == 0x8f
        && enemy1_variant == 4
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607132,
    title = "Supermassive Singularity",
    description = "Defeat Sirius Σ",
    points = 25,
    trigger = current_map_id == 0x22
        && enemy1_id == 90
        && enemy1_variant == 4
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)

achievement(
    id = 607133,
    title = "Crimson Legend",
    description = "Defeat Crimson Dragon Σ",
    points = 50,
    trigger = (current_map_id == 0xab || current_map_id == 0xac)
        && enemy1_id == 87
        && enemy1_variant == 4
        && finished_battle() 
        && cipher_code_protection()
        && real_brother_protection()
)


// Leaderboards
// Boss records
for boss in boss_list {
    leaderboard(
        id = boss["leaderboard_id"],
        title = format("{0} Speed Deletion", boss["name"]),
        description = format("Defeat {0} as fast as possible", boss["name"]),
        start = finished_battle() 
            && enemy1_id == boss["id"] 
            && enemy1_variant == boss["variant"],
        cancel = always_false(),
        submit = always_true(),
        value = dword(0x18f040) * 2,
        format = "frames",
        lower_is_better = true
    )
}

// Protection
//leaderboard(
    //id = ,
//    title = "",
//    description = "",
//    start = ,
//    cancel = always_false(),
//    submit = always_true(),
//    value = event_chip_usage_count(),
//    format = "value",
//    lower_is_better = false
//)

//leaderboard(
    //id = ,
//    title = "",
//    description = "",
//    start = prev(card_cipher_code_amount_activated) < card_cipher_code_amount_activated
//        && current_map_id == 0x06,
//    cancel = always_false(),
//    submit = always_true(),
//    value = card_cipher_code_amount_activated,
//    format = "value",
//    lower_is_better = false
//)

leaderboard(
    id = 162754,
    title = "DO NOT SAVE - Card Cipher Codes Entered",
    description = "DO NOT SAVE - You are now ineligable to earn any more achievements. Please reset your game.",
    start = prev(card_cipher_code_amount_activated) < card_cipher_code_amount_activated
        && current_map_id == 0x06,
    cancel = always_false(),
    submit = always_true(),
    value = card_cipher_code_amount_activated,
    format = "value",
    lower_is_better = false
)


// Rich Presence
rich_presence_conditional_display(in_shop(), "Shopping 🛍️")
rich_presence_conditional_display(save_corrupted(), "Restoring Mega Man from backups 💿")
rich_presence_conditional_display(at_title_screen(), "Preparing for what lies ahead 🌎")
rich_presence_conditional_display(game_over(), "Mega Man was deleted 💥")
rich_presence_conditional_display(watching_credits(), "The galaxy is saved 🌌✨")
rich_presence_conditional_display(loading_into_battle(),"Preparing for battle ⚔️")
rich_presence_conditional_display(viewing_messages(), "Reading messages 📨")
rich_presence_conditional_display(viewing_library(), "Viewing library 🗃️")
rich_presence_conditional_display(viewing_profile(), "Checking profile 👤")
rich_presence_conditional_display(viewing_folder(), "Viewing folders 📁🗂")
rich_presence_conditional_display(editing_folder(), "Stacking folder 📂")
rich_presence_conditional_display(viewing_brothers(), "Viewing brothers 👥")
rich_presence_conditional_display(viewing_items(), "Checking items 🔋🔧")
rich_presence_conditional_display(viewing_abilities(), "Managing abilities 🦾")
rich_presence_conditional_display(viewing_megaman(), "Reviewing Mega Man's stats 🙎📊")
rich_presence_conditional_display(viewing_network(), "Preparing to network 🛜")
rich_presence_conditional_display(viewing_omega(), "Reviewing Omega's stats 🤖📊")
rich_presence_conditional_display(at_results_screen(),"Reaping the rewards of battle 🎁")
rich_presence_conditional_display(player_movement_not_allowed() && !bottom_menu_open(),"Watching events unfold 💡")
rich_presence_conditional_display(
    in_overworld(),// && not_in_submenu(),
    "Exploring as {0} | 🛣️{1} | {2}Std: {3}/150 | {4}Mega: {5}/45 | {6}Giga: {7}/5",
    rich_presence_lookup("Character", current_character, current_character_lookup),
    rich_presence_lookup("Location", current_map_id, location_dict, "Unknown Location"),
    rich_presence_lookup("StdEmoji", std_library_total_cards, std_library_emoji_lookup,"📁️"),
    rich_presence_value("Number", std_library_total_cards),
    rich_presence_lookup("MegaEmoji", mega_library_total_cards, mega_library_emoji_lookup,"📁️"),
    rich_presence_value("Number", mega_library_total_cards),
    rich_presence_lookup("GigaEmoji", giga_library_total_cards, giga_library_emoji_lookup,"📁️"),
    rich_presence_value("Number", giga_library_total_cards)
)
rich_presence_conditional_display(
    in_battle_vs_boss(), // && not_in_submenu(), 
    "Battling {0} | 🛣️{1} | HP: {2}/{3}",
    rich_presence_lookup("Boss", enemy1_word, boss_dict),
    rich_presence_lookup("Location", current_map_id, location_dict, "Unknown Location"),
    rich_presence_macro("Number", current_battle_hp),
    rich_presence_macro("Number", max_battle_hp)
)
rich_presence_conditional_display(
    fighting_three_viruses(),// && not_in_submenu(),
    "Deleting viruses | 🛣️{0} | HP: {1}/{2} | {3}, {4}, {5}",
    rich_presence_lookup("Location", current_map_id, location_dict, "Unknown Location"),
    rich_presence_macro("Number", current_battle_hp),
    rich_presence_macro("Number", max_battle_hp),
    rich_presence_lookup("Virus", enemy1_word, virus_dict),
    rich_presence_lookup("Virus", enemy2_word, virus_dict),
    rich_presence_lookup("Virus", enemy3_word, virus_dict)
)
rich_presence_conditional_display(
    fighting_two_viruses(),// && not_in_submenu(),
    "Deleting viruses | 🛣️{0} | HP: {1}/{2} | {3}, {4}",
    rich_presence_lookup("Location", current_map_id, location_dict, "Unknown Location"),
    rich_presence_macro("Number", current_battle_hp),
    rich_presence_macro("Number", max_battle_hp),
    rich_presence_lookup("Virus", enemy1_word, virus_dict),
    rich_presence_lookup("Virus", enemy2_word, virus_dict)
)
rich_presence_conditional_display(
    fighting_one_virus(),// && not_in_submenu(),
    "Deleting viruses | 🛣️{0} | HP: {1}/{2} | {3}",
    rich_presence_lookup("Location", current_map_id, location_dict, "Unknown Location"),
    rich_presence_macro("Number", current_battle_hp),
    rich_presence_macro("Number", max_battle_hp),
    rich_presence_lookup("Virus", enemy1_word, virus_dict)
)

rich_presence_display("Playing poker with Dealer 🂡")


