
<cardTable>
    <div>
        <h1>Ironclad Cards</h1>
        <div class="inputBox">
        <input ref="searchFilter" placeholder="Search Cards..." onkeyup="{doFilter}">
        </div>

        <table>
            <thead>
                <tr>
                    <th class="cssTier">Tier (Lower is better)</th>
                    <th class="cssTier">Upgraded Tier (Lower is better)</th>
                    <th class="cssName">Name</th>
                    <th class="cssPicture">Picture</th>
                    <th class="cssRarity">Rarity</th>
                    <th class="cssType">Type</th>
                    <th class="cssEnergy">Energy Cost</th>
                    <th class="cssDescription">Description</th>
                </tr>
            </thead>
            <tbody>
                <tr id="cardInd" each={ filteredCardList }>
                    <td class="cssTier">{ Tier }</td>
                    <td class="cssTier">{ UpTier }</td>
                    <td class="cssName">{ Name }</td>
                    <td class="cssPicture"><img width="176" height="229" src="{ Picture }"</td>
                    <td class="cssRarity">{ Rarity }</td>
                    <td class="cssType">{ Type }</td>
                    <td class="cssEnergy">{ Energy }</td>
                    <td class="cssDescription">{ Description }</td>

                </tr>

            </tbody>
        </table>
    </div>

    <script>


        var my_cardlist = [
            {
                "Description": "Deal 4(6) damage. Place a copy of this card in your discard pile.",
                "Energy": "0",
                "Name": "Anger",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a6/R%3Fanger.png/revision/latest/scale-to-width-down/176?cb=20171229054628",
                "Rarity": "Common",
                "Tier": "2",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Upgrade ALL of your cards for the rest of combat. Exhaust.",
                "Energy": "2 (1)",
                "Name": "Apotheosis",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/93/Apotheosis.png/revision/latest/scale-to-width-down/220?cb=20180120052009",
                "Rarity": "Rare",
                "Tier": "1",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Gain 5 Block. Upgrade a(ALL) card(s) in your hand for the rest of combat.",
                "Energy": "1",
                "Name": "Armaments",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/3e/R%3Farmaments.png/revision/latest/scale-to-width-down/176?cb=20171229054651",
                "Rarity": "Common",
                "Tier": "9",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Heal 4 (6) HP. Exhaust.",
                "Energy": "0",
                "Name": "Bandage Up",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/4e/BandageUp.png/revision/latest/scale-to-width-down/220?cb=20180120052133",
                "Rarity": "Uncommon",
                "Tier": "7",
                "Type": "Skill ",
                "UpTier": "5"
            },
            {
                "Description": "Block no longer expires at the start of your turn.",
                "Energy": "3(2)",
                "Name": "Barricade",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/9d/R%3Fbarricade.png/revision/latest/scale-to-width-down/176?cb=20171229060946",
                "Rarity": "Rare",
                "Tier": "8",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "Deal 8(10) damage. Apply Vulnerable for 2(3) turns.",
                "Energy": "2",
                "Name": "Bash",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f2/R-bash.png/revision/latest/scale-to-width-down/176?cb=20171229053856",
                "Rarity": "Basic",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Draw 3(4) cards. You cannot draw additional cards this turn.",
                "Energy": "0",
                "Name": "Battle Trance",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/ad/R%3Fbattle-trance.png/revision/latest/scale-to-width-down/176?cb=20171229055437",
                "Rarity": "Uncommon",
                "Tier": "1",
                "Type": "Skill",
                "UpTier": ""
            },
            {
                "Description": "If your HP is below 50%, gain 1 energy at the start of each turn.",
                "Energy": "1(0)",
                "Name": "Berserk",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/54/W_berserk.png/revision/latest/scale-to-width-down/176?cb=20171229061025",
                "Rarity": "Rare",
                "Tier": "6",
                "Type": "Power",
                "UpTier": "4"
            },
            {
                "Description": "Apply 2 Weak (to ALL enemies).",
                "Energy": "0",
                "Name": "Blind",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/68/Blind.png/revision/latest/scale-to-width-down/220?cb=20180120052154",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Cost 1 less energy for each time you lose HP in combat. Deal 16(18) damage.",
                "Energy": "4",
                "Name": "Blood for Blood",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/45/R%3Fblood-for-blood.png/revision/latest/scale-to-width-down/176?cb=20171229055616",
                "Rarity": "Uncommon",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": "6"
            },
            {
                "Description": "Gain 1 (2) energy. Lose 3 HP.",
                "Energy": "0",
                "Name": "Bloodletting",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/53/W_blood-letting.png/revision/latest/scale-to-width-down/176?cb=20171229055637",
                "Rarity": "Uncommon",
                "Tier": "6",
                "Type": "Skill",
                "UpTier": "3"
            },
            {
                "Description": "Deal 32(42) damage.",
                "Energy": "3",
                "Name": "Bludgeon",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c8/R%3Fbludgeon.png/revision/latest/scale-to-width-down/176?cb=20171229061008",
                "Rarity": "Rare",
                "Tier": "6",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Deal damage equal to your current Block.",
                "Energy": "1(0)",
                "Name": "Body Slam",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b2/R%3Fbody-slam.png/revision/latest/scale-to-width-down/176?cb=20171229054730",
                "Rarity": "Common",
                "Tier": "3",
                "Type": "Attack",
                "UpTier": "0"
            },
            {
                "Description": "(Innate) At the start of your turn, lose 1 HP and draw 1 card.",
                "Energy": "0",
                "Name": "Brutality",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/7c/W_brutality.png/revision/latest/scale-to-width-down/176?cb=20171229061041",
                "Rarity": "Rare",
                "Tier": "4",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "Exhaust 1 card. Draw 2(3) cards.",
                "Energy": "1",
                "Name": "Burning Pact",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f8/W_burning-pact.png/revision/latest/scale-to-width-down/176?cb=20171229055706",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Ethereal. Deal 18(26) damage.",
                "Energy": "2",
                "Name": "Carnage",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c6/R-Carnage.png/revision/latest/scale-to-width-down/176?cb=20171231215439",
                "Rarity": "Uncommon",
                "Tier": "",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Can only be played if every card in your hand is an Attack. Deal 14(18) damage.",
                "Energy": "0",
                "Name": "Clash",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cc/R%3Fclash.png/revision/latest/scale-to-width-down/176?cb=20171229054845",
                "Rarity": "Common",
                "Tier": "5",
                "Type": "Attack",
                "UpTier": "2"
            },
            {
                "Description": "Deal 7(10) damage to ALL enemies.",
                "Energy": "1",
                "Name": "Cleave",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/19/R%3Fcleave.png/revision/latest/scale-to-width-down/176?cb=20171229061957",
                "Rarity": "Common",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": "5"
            },
            {
                "Description": "Deal 12(14) damage. Apply 2(3) Weak.",
                "Energy": "2",
                "Name": "Clothesline",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bc/R%3Fclothesline.png/revision/latest/scale-to-width-down/176?cb=20171229054911",
                "Rarity": "Common",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "At the end of your turn, lose 1 HP and deal 4(5) damage to ALL enemies.",
                "Energy": "1",
                "Name": "Combust",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/52/R%3Fcombust.png/revision/latest/scale-to-width-down/176?cb=20171229055731",
                "Rarity": "Uncommon",
                "Tier": "9",
                "Type": "Power",
                "UpTier": "7"
            },
            {
                "Description": "Skills cost 0. Whenever you play a Skill, Exhaust it.",
                "Energy": "3(2)",
                "Name": "Corruption",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e5/R%3Fcorruption.png/revision/latest/scale-to-width-down/176?cb=20171229055754",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "Whenever a card is Exhausted, draw 1 card.",
                "Energy": "2(1)",
                "Name": "Dark Embrace",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/03/R%3Fdark-embrace.png/revision/latest/scale-to-width-down/176?cb=20171231220413",
                "Rarity": "Rare",
                "Tier": "9",
                "Type": "Power",
                "UpTier": "1"
            },
            {
                "Description": "Enemy loses 9 (15) Strength for the rest of this turn. Exhaust.",
                "Energy": "0",
                "Name": "Dark Shackles",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/79/DarkShackles.png/revision/latest/scale-to-width-down/220?cb=20180120052215",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Shuffle your discard pile into your draw pile. Draw 1 (2) card(s).",
                "Energy": "0",
                "Name": "Deep Breath",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/62/DeepBreath.png/revision/latest/scale-to-width-down/220?cb=20180120052441",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Gain 5(8) Block.",
                "Energy": "1",
                "Name": "Defend",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cc/R%3Fdefend.png/revision/latest/scale-to-width-down/176?cb=20171229054503",
                "Rarity": "Basic",
                "Tier": "12",
                "Type": "Skill",
                "UpTier": ""
            },
            {
                "Description": "At the start of each turn, gain 2(3) Strength.",
                "Energy": "3",
                "Name": "Demon Form",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/ac/R%3Fdemon-form.png/revision/latest/scale-to-width-down/176?cb=20171229061055",
                "Rarity": "Rare",
                "Tier": "11",
                "Type": "Power",
                "UpTier": "8"
            },
            {
                "Description": "Enemy loses 2(3) Strength. Exhaust.",
                "Energy": "1",
                "Name": "Disarm",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/be/R%3Fdisarm.png/revision/latest/scale-to-width-down/176?cb=20171229055814",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Skill",
                "UpTier": "8"
            },
            {
                "Description": "This turn, your next (2) Attack(s) is played twice.",
                "Energy": "1",
                "Name": "Double Tap",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e1/R%3Fdouble-tap.png/revision/latest/scale-to-width-down/176?cb=20171229061117",
                "Rarity": "Rare",
                "Tier": "4",
                "Type": "Skill",
                "UpTier": "0"
            },
            {
                "Description": "Innate. Deal 6 (8) damage to ALL enemies. Exhaust.",
                "Energy": "0",
                "Name": "Dramatic Entrance",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/42/DramaticEntrance.png/revision/latest/scale-to-width-down/220?cb=20180120054657",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Attack ",
                "UpTier": ""
            },
            {
                "Description": "Deal 5(8) damage. If the target is Vulnerable, gain 1 energy and draw 1 card.",
                "Energy": "1",
                "Name": "Dropkick",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/75/R%3Fdropkick.png/revision/latest/scale-to-width-down/176?cb=20171229055832",
                "Rarity": "Uncommon",
                "Tier": "7",
                "Type": "Attack",
                "UpTier": "1"
            },
            {
                "Description": "Create a(2) copy(s) of an Attack or Power card in your hand.",
                "Energy": "1",
                "Name": "Dual Wield",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/7c/R%3Fdual-wield.png/revision/latest/scale-to-width-down/176?cb=20171229054936",
                "Rarity": "Common",
                "Tier": "7",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Reduce the cost of cards in your hand to 1 this turn (combat).",
                "Energy": "0",
                "Name": "Enlightenment",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/60/Enlightment.png/revision/latest/scale-to-width-down/220?cb=20180120060356",
                "Rarity": "Rare",
                "Tier": "8",
                "Type": "Skill ",
                "UpTier": "2"
            },
            {
                "Description": "Double your current Block.",
                "Energy": "2(1)",
                "Name": "Entrench",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/44/R-Entrench.png/revision/latest/scale-to-width-down/176?cb=20171231215511",
                "Rarity": "Uncommon",
                "Tier": "",
                "Type": "Skill",
                "UpTier": ""
            },
            {
                "Description": "Shuffle 2 Wounds into your draw pile. Whenever you draw a Wound, draw 1(2) card(s).",
                "Energy": "1",
                "Name": "Evolve",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/17/R%3Fevolve.png/revision/latest/scale-to-width-down/176?cb=20171229055855",
                "Rarity": "Uncommon",
                "Tier": "6",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "Choose an Exhausted card and put it in your hand. Exhaust.",
                "Energy": "1(0)",
                "Name": "Exhume",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/67/R%3Fexhume.png/revision/latest/scale-to-width-down/176?cb=20171229061138",
                "Rarity": "Rare",
                "Tier": "6",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Deal 10(12) damage. If this kills the enemy, gain 3(4) permanent Max HP. Exhaust.",
                "Energy": "1",
                "Name": "Feed",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/1d/R%3Ffeed.png/revision/latest/scale-to-width-down/176?cb=20171229061156",
                "Rarity": "Rare",
                "Tier": "3",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Whenever a card is Exhausted, gain 4(6) Block.",
                "Energy": "1",
                "Name": "Feel No Pain",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5d/R%3Ffeel-no-pain.png/revision/latest/scale-to-width-down/176?cb=20171229055910",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "Exhaust your hand. Deal 7(10) damage for each Exhausted card. Exhaust.",
                "Energy": "2",
                "Name": "Fiend Fire",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/72/R%3Ffiend-fire.png/revision/latest/scale-to-width-down/176?cb=20171229061223",
                "Rarity": "Rare",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": "5"
            },
            {
                "Description": "Gain 2 (4) Block. Draw 1 card.",
                "Energy": "0",
                "Name": "Finesse",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/67/Finesse.png/revision/latest/scale-to-width-down/220?cb=20180120054708",
                "Rarity": "Uncommon",
                "Tier": "2",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "At the end of your turn, for each Attack played this turn deal 1 damage to ALL enemies.",
                "Energy": "1(0)",
                "Name": "Fire Breathing",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/0d/R%3Ffire-breathing.png/revision/latest/scale-to-width-down/176?cb=20171229055940",
                "Rarity": "Uncommon",
                "Tier": "7",
                "Type": "Power",
                "UpTier": "4"
            },
            {
                "Description": "Gain 12(16) Block. Whenever you are attacked this turn, deal 4(6) damage to the attacker.",
                "Energy": "2",
                "Name": "Flame Barrier",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/03/R%3Fflame-barrier.png/revision/latest/scale-to-width-down/176?cb=20171229055957",
                "Rarity": "Uncommon",
                "Tier": "8",
                "Type": "Skill",
                "UpTier": "5"
            },
            {
                "Description": "Deal 3 (6) damage. Draw 1 card.",
                "Energy": "0",
                "Name": "Flash of Steel",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/30/FlashOfSteel.png/revision/latest/scale-to-width-down/220?cb=20180120054717",
                "Rarity": "Uncommon",
                "Tier": "1",
                "Type": "Attack ",
                "UpTier": ""
            },
            {
                "Description": "Gain 2(4) Strength. At the end of your turn, lose 2(4) Strength.",
                "Energy": "0",
                "Name": "Flex",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c4/R%3Fflex.png/revision/latest/scale-to-width-down/176?cb=20171229061941",
                "Rarity": "Common",
                "Tier": "5",
                "Type": "Skill",
                "UpTier": "2"
            },
            {
                "Description": "Ethereal. Gain 10(13) Block.",
                "Energy": "1",
                "Name": "Ghostly Armor",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/6c/Ghostly_Armor.jpg/revision/latest/scale-to-width-down/176?cb=20180112134519",
                "Rarity": "Uncommon",
                "Tier": "",
                "Type": "Skill",
                "UpTier": ""
            },
            {
                "Description": "Gain 4 (7) Block.",
                "Energy": "0",
                "Name": "Good Instincts",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b8/GoodInstincts.png/revision/latest/scale-to-width-down/220?cb=20180120054728",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Skill ",
                "UpTier": "4"
            },
            {
                "Description": "Play the top card of your draw pile and Exhaust it.",
                "Energy": "1(0)",
                "Name": "Havoc",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/86/R%3Fhavoc.png/revision/latest/scale-to-width-down/176?cb=20171229054955",
                "Rarity": "Common",
                "Tier": "9",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Deal 9(12) damage. Place a card from your discard pile on top of your draw pile.",
                "Energy": "1",
                "Name": "Headbutt",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/3f/R%3Fheadbutt.png/revision/latest/scale-to-width-down/176?cb=20171229055046",
                "Rarity": "Common",
                "Tier": "2",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Deal 14 damage. Strength affects Heavy Blade 3(5) times.",
                "Energy": "2",
                "Name": "Heavy Blade",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/9f/R%3Fheavy-blade.png/revision/latest/scale-to-width-down/176?cb=20171229055103",
                "Rarity": "Common",
                "Tier": "5",
                "Type": "Attack",
                "UpTier": "1"
            },
            {
                "Description": "Lose 3(2) HP. Deal 14(18) damage.",
                "Energy": "1",
                "Name": "Hemokinesis",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/7a/R%3Fhemokinesis.png/revision/latest/scale-to-width-down/176?cb=20171229060028",
                "Rarity": "Uncommon",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": "6"
            },
            {
                "Description": "Exhaust 1 card. If the chosen card was a Status or Curse, deal 10(15) damage to ALL enemies.",
                "Energy": "1",
                "Name": "Immolate",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/8c/R%3Fimmolate.png/revision/latest/scale-to-width-down/176?cb=20171229061243",
                "Rarity": "Rare",
                "Tier": "11",
                "Type": "Attack",
                "UpTier": "3"
            },
            {
                "Description": "Gain 30(40) Block. Exhaust.",
                "Energy": "2",
                "Name": "Impervious",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d3/R%3Fimpervious.png/revision/latest/scale-to-width-down/176?cb=20171229061258",
                "Rarity": "Rare",
                "Tier": "6",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Add a random Attack to your hand. It costs 0 this turn. Exhaust.",
                "Energy": "1(0)",
                "Name": "Infernal Blade",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/ad/R%3Finfernal-blade.png/revision/latest/scale-to-width-down/176?cb=20171229060051",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Skill",
                "UpTier": "2"
            },
            {
                "Description": "Gain 2(3) Strength.",
                "Energy": "1",
                "Name": "Inflame",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ed/R%3Finflame.png/revision/latest/scale-to-width-down/176?cb=20171229060121",
                "Rarity": "Uncommon",
                "Tier": "3",
                "Type": "Power",
                "UpTier": "1"
            },
            {
                "Description": "Apply 1(2) Weak to ALL enemies. Exhaust.",
                "Energy": "0",
                "Name": "Intimidate",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bc/R%3Fintimidate.png/revision/latest/scale-to-width-down/176?cb=20171229060141",
                "Rarity": "Uncommon",
                "Tier": "7",
                "Type": "Skill",
                "UpTier": "5"
            },
            {
                "Description": "Gain 5(7) Block. Deal 5(7) damage.",
                "Energy": "1",
                "Name": "Iron Wave",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cd/R%3Firon-wave.png/revision/latest/scale-to-width-down/176?cb=20171229055125",
                "Rarity": "Common",
                "Tier": "4",
                "Type": "Attack",
                "UpTier": "3"
            },
            {
                "Description": "Lose 3 HP. Gain 2 (3) Strength. Exhaust. (Obtained from event: Drug Dealer).",
                "Energy": "0",
                "Name": "J.A.X",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5f/JAX.png/revision/latest/scale-to-width-down/220?cb=20180120053408",
                "Rarity": "Common",
                "Tier": "5",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Add 1 (2) random Colorless card(s) to your hand. Exhaust.",
                "Energy": "0",
                "Name": "Jack Of All Trades",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d9/JackOfAllTrades.png/revision/latest/scale-to-width-down/220?cb=20180120054739",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Whenever you gain Block, deal 3(5) damage to ALL enemies.",
                "Energy": "2",
                "Name": "Juggernaut",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/35/R%3Fjuggernaut.png/revision/latest/scale-to-width-down/176?cb=20171229061329",
                "Rarity": "Rare",
                "Tier": "8",
                "Type": "Power",
                "UpTier": "7"
            },
            {
                "Description": "Double your Strength. Exhaust(Don't Exhaust).",
                "Energy": "1",
                "Name": "Limit Break",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5c/R%3Flimit-break.png/revision/latest/scale-to-width-down/176?cb=20171229061348",
                "Rarity": "Rare",
                "Tier": "6",
                "Type": "Skill",
                "UpTier": "2"
            },
            {
                "Description": "A random card in your hand costs 0 for the rest of combat. Exhaust. (Obtained from event: Winding Halls)",
                "Energy": "1(0)",
                "Name": "Madness",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ee/Madness.png/revision/latest/scale-to-width-down/220?cb=20180120054801",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Skill ",
                "UpTier": "1"
            },
            {
                "Description": "Draw 3 (4) cards. Exhaust.",
                "Energy": "0",
                "Name": "Master Of Strategy",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/33/MasterOfStrategy.png/revision/latest/scale-to-width-down/220?cb=20180120060415",
                "Rarity": "Rare",
                "Tier": "1",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "At the end of your turn, gain 3(4) Block.",
                "Energy": "1",
                "Name": "Metallicize",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/fd/R%3Fmetallicize.png/revision/latest/scale-to-width-down/176?cb=20171229060200",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "(Innate). Deal damage equal to the number of cards in your draw pile.",
                "Energy": "0",
                "Name": "Mind Blast",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/26/MindBlast.png/revision/latest/scale-to-width-down/220?cb=20180120054812",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Attack ",
                "UpTier": "2"
            },
            {
                "Description": "Lose 4 HP. Gain 2 energy. Draw 3(5) cards. Exhaust.",
                "Energy": "0",
                "Name": "Offering",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/84/W_offering.png/revision/latest/scale-to-width-down/176?cb=20171229061417",
                "Rarity": "Rare",
                "Tier": "0",
                "Type": "Skill",
                "UpTier": "0"
            },
            {
                "Description": "Gain 1 (2) Artifact. Exhaust.",
                "Energy": "0",
                "Name": "Panacea",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/37/Panacea.png/revision/latest/scale-to-width-down/220?cb=20180120054820",
                "Rarity": "Uncommon",
                "Tier": "6",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Every time you play 5 cards in a single turn, deal 10 (14) damage to ALL enemies.",
                "Energy": "0",
                "Name": "Panache",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/19/Panache.png/revision/latest/scale-to-width-down/220?cb=20180120060427",
                "Rarity": "Rare",
                "Tier": "8",
                "Type": "Power ",
                "UpTier": "2"
            },
            {
                "Description": "Deal 6 damage. Deals an additional +2(3) damage for ALL of your cards containing \"Strike\".",
                "Energy": "2",
                "Name": "Perfected Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a1/R-perfected-strike.png/revision/latest/scale-to-width-down/176?cb=20171229055147",
                "Rarity": "Common",
                "Tier": "5",
                "Type": "Attack",
                "UpTier": "2"
            },
            {
                "Description": "Deal 9(10) damage. Draw 1(2) card(s).",
                "Energy": "1",
                "Name": "Pommel Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/78/R-pommel-strike.png/revision/latest/scale-to-width-down/176?cb=20171229055204",
                "Rarity": "Common",
                "Tier": "1",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Add 2 Wounds to your hand. Gain 15(20) Block.",
                "Energy": "1",
                "Name": "Power Through",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5f/W_power-through.png/revision/latest/scale-to-width-down/176?cb=20171229060218",
                "Rarity": "Uncommon",
                "Tier": "6",
                "Type": "Skill",
                "UpTier": "2"
            },
            {
                "Description": "Deal 2 damage 4(5) times. Exhaust.",
                "Energy": "1",
                "Name": "Pummel",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/67/W_pummel.png/revision/latest/scale-to-width-down/176?cb=20171229060249",
                "Rarity": "Uncommon",
                "Tier": "6",
                "Type": "Attack",
                "UpTier": "2"
            },
            {
                "Description": "Choose and exhaust 3 (5) cards in your hand. Exhaust.",
                "Energy": "0",
                "Name": "Purity",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a2/Purity.png/revision/latest/scale-to-width-down/220?cb=20180120054830",
                "Rarity": "Uncommon",
                "Tier": "8",
                "Type": "Skill ",
                "UpTier": "5"
            },
            {
                "Description": "Whenever you play an Attack this turn, gain 4(6) Block",
                "Energy": "1",
                "Name": "Rage",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ee/W_rage.png/revision/latest/scale-to-width-down/176?cb=20171229060308",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Deal 8 damage. Every time this card is played, increase its damage by 4(8) for this combat.",
                "Energy": "1",
                "Name": "Rampage",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/db/W_rampage.png/revision/latest/scale-to-width-down/176?cb=20171229060501",
                "Rarity": "Uncommon",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": "5"
            },
            {
                "Description": "Deal 4(5) damage to ALL enemies. Heal for unBlocked damage. Exhaust.",
                "Energy": "2",
                "Name": "Reaper",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e0/W_reaper.png/revision/latest/scale-to-width-down/176?cb=20171229061629",
                "Rarity": "Rare",
                "Tier": "5",
                "Type": "Attack",
                "UpTier": "1"
            },
            {
                "Description": "Gain 1 Vulnerable. Deal 9(12) damage.",
                "Energy": "0",
                "Name": "Reckless Charge",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/22/W_reckless-charge.png/revision/latest/scale-to-width-down/176?cb=20171229060520",
                "Rarity": "Uncommon",
                "Tier": "6",
                "Type": "Attack",
                "UpTier": "4"
            },
            {
                "Description": "Whenever you lose HP from a card, gain 1 Strength.",
                "Energy": "1(0)",
                "Name": "Rupture",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c1/W_rupture.png/revision/latest/scale-to-width-down/176?cb=20171229061809",
                "Rarity": "Uncommon",
                "Tier": "7",
                "Type": "Power",
                "UpTier": "2"
            },
            {
                "Description": "Whenever you apply a Debuff to an enemy, they take 3 (4) damage.",
                "Energy": "0",
                "Name": "Sadistic Nature",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a8/SadisticNature.png/revision/latest/scale-to-width-down/220?cb=20180120060439",
                "Rarity": "Rare",
                "Tier": "8",
                "Type": "Power ",
                "UpTier": "5"
            },
            {
                "Description": "Deal 12(16+) damage. Can be upgraded any number of times.",
                "Energy": "2",
                "Name": "Searing Blow",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/08/W_searing-blow.png/revision/latest/scale-to-width-down/176?cb=20171229060621",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Exhaust all non-Attack cards in your hand and gain 5(7) Block for each.",
                "Energy": "1",
                "Name": "Second Wind",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f7/W_second-wind.png/revision/latest/scale-to-width-down/176?cb=20171229060638",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Skill",
                "UpTier": "4"
            },
            {
                "Description": "Choose a Skill from your draw pile and place it into your hand. Exhaust. (Don't Exhaust)",
                "Energy": "0",
                "Name": "Secret Technique",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5c/SecretTechnique.png/revision/latest/scale-to-width-down/220?cb=20180120060449",
                "Rarity": "Rare",
                "Tier": "1",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Choose an Attack from your draw pile and place it into your hand. Exhaust. (Don't Exhaust)",
                "Energy": "0",
                "Name": "Secret Weapon",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5a/SecretWeapon.png/revision/latest/scale-to-width-down/220?cb=20180120060501",
                "Rarity": "Rare",
                "Tier": "1",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Gain 2 energy. Exhaust.",
                "Energy": "1(0)",
                "Name": "Seeing Red",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/2f/W_seeing-red.png/revision/latest/scale-to-width-down/176?cb=20171229060656",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Skill",
                "UpTier": "2"
            },
            {
                "Description": "Gain 5(8) Block. If this card is Exhausted, gain 2(3) energy.",
                "Energy": "1",
                "Name": "Sentinel",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f6/W_sentinel.png/revision/latest/scale-to-width-down/176?cb=20171229060714",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Skill",
                "UpTier": "2"
            },
            {
                "Description": "Exhaust all non-Attack cards in your hand. Deal 16(20) damage.",
                "Energy": "2",
                "Name": "Sever Soul",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a2/W_sever-soul.png/revision/latest/scale-to-width-down/176?cb=20171229060736",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Attack",
                "UpTier": "6"
            },
            {
                "Description": "Deal 4 (6) damage. Exhaust. (Obtained from the effects of various cards.)",
                "Energy": "0",
                "Name": "Shiv",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b6/Shiv.png/revision/latest/scale-to-width-down/220?cb=20180120053608",
                "Rarity": "Common",
                "Tier": "",
                "Type": "Attack ",
                "UpTier": ""
            },
            {
                "Description": "Apply 3(5) Weak and Vulnerable to ALL enemies.",
                "Energy": "2",
                "Name": "Shockwave",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/1f/W_shockwave.png/revision/latest/scale-to-width-down/176?cb=20171229060803",
                "Rarity": "Uncommon",
                "Tier": "11",
                "Type": "Skill",
                "UpTier": ""
            },
            {
                "Description": "Gain 8(11) Block. Draw 1 card.",
                "Energy": "1",
                "Name": "Shrug it Off",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e9/R-shrug-it-off.png/revision/latest/scale-to-width-down/176?cb=20171229055222",
                "Rarity": "Common",
                "Tier": "2",
                "Type": "Skill",
                "UpTier": ""
            },
            {
                "Description": "If an enemy intends to attack, gain 3(4) Strength.",
                "Energy": "1",
                "Name": "Spot Weakness",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/84/W_spot-weakness.png/revision/latest/scale-to-width-down/176?cb=20171229060835",
                "Rarity": "Uncommon",
                "Tier": "3",
                "Type": "Skill",
                "UpTier": "1"
            },
            {
                "Description": "Deal 6(9) damage.",
                "Energy": "1",
                "Name": "Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/25/R-strike.png/revision/latest/scale-to-width-down/176?cb=20171229054559",
                "Rarity": "Basic",
                "Tier": "11",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Deal 5 (8) damage.",
                "Energy": "0",
                "Name": "Swift Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/8b/SwiftStrike.png/revision/latest/scale-to-width-down/220?cb=20180120054843",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Attack ",
                "UpTier": "4"
            },
            {
                "Description": "Deal 3 damage to a random enemy 3(4) times.",
                "Energy": "1",
                "Name": "Sword Boomerang",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e4/R-sword-boomerang.png/revision/latest/scale-to-width-down/176?cb=20171229055241",
                "Rarity": "Common",
                "Tier": "8",
                "Type": "Attack",
                "UpTier": "4"
            },
            {
                "Description": "Draw 2 cards. Place a card from your hand on top of your draw pile. Exhaust. (Don't Exhaust)",
                "Energy": "0",
                "Name": "Thinking Ahead",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/0c/ThinkingAhead.png/revision/latest/scale-to-width-down/220?cb=20180120060512",
                "Rarity": "Rare",
                "Tier": "2",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Deal 4(7) damage and apply 1 Vulnerable to ALL enemies.",
                "Energy": "1",
                "Name": "Thunderclap",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/fa/R-thunder-clap.png/revision/latest/scale-to-width-down/176?cb=20171229055256",
                "Rarity": "Common",
                "Tier": "5",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Add X random (Upgraded) colorless cards into your hand. Exhaust.",
                "Energy": "X",
                "Name": "Transmutation",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cd/Transmutation.png/revision/latest/scale-to-width-down/220?cb=20180120060525",
                "Rarity": "Rare",
                "Tier": "5",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Apply 2 Vulnerable (to ALL enemies).",
                "Energy": "0",
                "Name": "Trip",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cf/Trip.png/revision/latest/scale-to-width-down/220?cb=20180120054900",
                "Rarity": "Uncommon",
                "Tier": "4",
                "Type": "Skill ",
                "UpTier": ""
            },
            {
                "Description": "Gain 7(9) Block. Exhaust a random(not random) card from your hand.",
                "Energy": "1",
                "Name": "True Grit",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/4c/R-true-grit.png/revision/latest/scale-to-width-down/176?cb=20171229055313",
                "Rarity": "Common",
                "Tier": "12",
                "Type": "Skill",
                "UpTier": "5"
            },
            {
                "Description": "Deal 5(7) damage twice.",
                "Energy": "1",
                "Name": "Twin Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/2f/R-twin-strike.png/revision/latest/scale-to-width-down/176?cb=20171229055336",
                "Rarity": "Common",
                "Tier": "7",
                "Type": "Attack",
                "UpTier": "5"
            },
            {
                "Description": "Deal 13 damage. Apply 1(2) Weak. Apply 1(2) Vulnerable.",
                "Energy": "2",
                "Name": "Uppercut",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/1c/W_uppercut.png/revision/latest/scale-to-width-down/176?cb=20171229060852",
                "Rarity": "Uncommon",
                "Tier": "5",
                "Type": "Attack",
                "UpTier": ""
            },
            {
                "Description": "Draw 2 cards. Place a card from your hand on top of your draw pile. Exhaust.",
                "Energy": "1(0)",
                "Name": "Warcry",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f4/R-warcry.png/revision/latest/scale-to-width-down/176?cb=20171229055403",
                "Rarity": "Common",
                "Tier": "8",
                "Type": "Skill",
                "UpTier": "3"
            },
            {
                "Description": "Spend all energy. Deal 5(8) damage to ALL enemies X times.",
                "Energy": "X",
                "Name": "Whirlwind",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/ab/W_whirlwind.png/revision/latest/scale-to-width-down/176?cb=20171229060920",
                "Rarity": "Uncommon",
                "Tier": "7",
                "Type": "Attack",
                "UpTier": "5"
            },
            {
                "Description": "Deal 12(17) damage. Shuffle a Wound into your draw pile.",
                "Energy": "1",
                "Name": "Wild Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/fa/R-wild-strike.png/revision/latest/scale-to-width-down/176?cb=20171229055418",
                "Rarity": "Common",
                "Tier": "7",
                "Type": "Attack",
                "UpTier": "6"
            }
        ]


        var self = this
        self.cardList = my_cardlist

        self.filteredCardList = []
        console.log(self.cardList)

        self.doFilter = function() {
            self.filteredCardList = []
            var filter = self.refs.searchFilter.value
            if (filter == '') {
                return
            }
            self.cardList.forEach(function (card){
                if (card.Name.toLowerCase().indexOf(filter.toLowerCase()) > -1) {
                    self.filteredCardList.push(card)
                }
            })
            self.update()
        }

    </script>
</cardTable>
