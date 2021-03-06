
<cardTable>
    <div>
        <h1>Ironclad Cards</h1>
        <div class="inputBox">
        <input ref="searchFilter" placeholder="Search Cards..." onkeyup="{doFilter}">
        </div>

        <table>
            <thead>
                <tr>
                    <th class="cssTier">Overall (0-10)</th>
                    <th class="cssTier">Regular Tier (0-5)</th>
                    <th class="cssTier">Potential Tier (0-5)</th>
                    <th class="cssName">Name</th>
                    <th class="cssPicture">Picture</th>
                    <th class="cssRarity">Rarity</th>
                    <th class="cssType">Type</th>
                    <th class="cssEnergy">Energy Cost</th>
                    <th class="cssDescription">Description/Comments</th>
                </tr>
            </thead>
            <tbody>
                <tr id="cardInd" each={ filteredCardList }>
                    <td class="cssTier">{ TierRegPot }</td>
                    <td class="cssTier">{ TierRegular }</td>
                    <td class="cssTier">{ TierPotential }</td>
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
                "Description": "High upgrade priority. Heavy cycle",
                "Energy": "2",
                "Name": "A Thousand Cuts",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/ae/G%3Fa-thousand-cuts.png/revision/latest/scale-to-width-down/222?cb=20180119212833",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Power"
            },
            {
                "Description": "Cloak And Dagger, Blade Dance, Burst, Infinite Blades",
                "Energy": "1",
                "Name": "Accuracy",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5a/G%3Faccuracy.png/revision/latest/scale-to-width-down/222?cb=20180119213144",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "6",
                "TierRegular": "1",
                "Type": "Power"
            },
            {
                "Description": "High upgrade priority. Burst.",
                "Energy": "1",
                "Name": "Acrobatics",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/fb/G%3Facrobatics.png/revision/latest/scale-to-width-down/222?cb=20180119213238",
                "Rarity": "Common",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Burst, Bottled Lightning",
                "Energy": "1",
                "Name": "Adrenaline",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cb/G%3Fadrenaline.png/revision/latest/scale-to-width-down/222?cb=20180119213253",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Skill"
            },
            {
                "Description": "Heavy cycle",
                "Energy": "1",
                "Name": "After Image",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b2/G%3Fafter-image.png/revision/latest/scale-to-width-down/222?cb=20180119213308",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Power"
            },
            {
                "Description": "Burst. Play it every combat to look for Dex potions and save them for final boss. Anti-synergy with Sozu",
                "Energy": "1 (0)",
                "Name": "Alchemize",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/7d/Alchemize.png/revision/latest/scale-to-width-down/220?cb=20180220170246",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Skill"
            },
            {
                "Description": "Not that much better than Dagger Spray, even without card reduction",
                "Energy": "1",
                "Name": "All Out Attack",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/24/G%3Fall-out-attack.png/revision/latest/scale-to-width-down/222?cb=20180119213436",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. Secret Technique, Girya, Peace Pipe, Shovel, Bottled Lightning. Allows you to use campfires on other actions. Not great if you have already upgraded all your key cards and have no alternate campfire actions.",
                "Energy": "2 (1)",
                "Name": "Apotheosis",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/93/Apotheosis.png/revision/latest/scale-to-width-down/220?cb=20180120052009",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "Burst, Footwork, Calculated Gambit, Deflect, Slice, Overmaneuver, Bullet Time, Grand Finale",
                "Energy": "1",
                "Name": "Backflip",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/1d/G%3Fbackflip.png/revision/latest/scale-to-width-down/222?cb=20180119213541",
                "Rarity": "Common",
                "TierPotential": "5",
                "TierRegPot": "9",
                "TierRegular": "4",
                "Type": "Skill"
            },
            {
                "Description": "",
                "Energy": "0",
                "Name": "Backstab",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bb/G%3Fbackstab.png/revision/latest/scale-to-width-down/222?cb=20180119213606",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Attack"
            },
            {
                "Description": "Burst, Nightmare, Strange Spoon, Card draw. Can help to reactivate Runic Dodecahedron if you take a bit of damage.",
                "Energy": "0",
                "Name": "Bandage Up",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/4e/BandageUp.png/revision/latest/scale-to-width-down/220?cb=20180120052133",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Skill\n"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Bane",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/14/G%3Fbane.png/revision/latest/scale-to-width-down/222?cb=20180119213636",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Bite",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/41/G%3Fbite.png/revision/latest/scale-to-width-down/222?cb=20180119213717",
                "Rarity": "Common",
                "TierPotential": "",
                "TierRegPot": "",
                "TierRegular": "",
                "Type": ""
            },
            {
                "Description": "Accuracy, Burst, Choke, Dead Branch",
                "Energy": "1",
                "Name": "Blade Dance",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b3/G%3Fblade-dance.png/revision/latest/scale-to-width-down/222?cb=20180119213754",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "7",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Card draw, Paper Krane, Burst.",
                "Energy": "0",
                "Name": "Blind",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/68/Blind.png/revision/latest/scale-to-width-down/220?cb=20180120052154",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Skill\n"
            },
            {
                "Description": "Good to upgrade. Footwork, Calipers.",
                "Energy": "1",
                "Name": "Blur",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/57/G%3Fblur.png/revision/latest/scale-to-width-down/222?cb=20180119213820",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Burst, Snecko Eye + Nightmare",
                "Energy": "2",
                "Name": "Bouncing Flask",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b5/R_bouncing-flask.png/revision/latest/scale-to-width-down/222?cb=20180119213843",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Card draw + expensive cards, snecko eye",
                "Energy": "3 (2)",
                "Name": "Bullet Time",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/37/R_bullet-time.png/revision/latest/scale-to-width-down/222?cb=20180119213908",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Backflip, Acrobatics, Adrenaline, Outmaneuver, Burst, Malaise, Leg Sweep, Bouncing Flask, Blur",
                "Energy": "1",
                "Name": "Burst",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/af/R_burst.png/revision/latest/scale-to-width-down/223?cb=20180119213938",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "9",
                "TierRegular": "4",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Acrobatics, Backflip, Tactician. Needs draw. It's possible to not upgrade this if you don't have much draw/energy, just to draw into your powers earlier and exhaust it. ",
                "Energy": "0",
                "Name": "Calculated Gamble",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f9/R_calculated-gamble.png/revision/latest/scale-to-width-down/222?cb=20180119214006",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "7",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "Good to upgrade.",
                "Energy": "1",
                "Name": "Caltrops",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/9d/R_caltrops.png/revision/latest/scale-to-width-down/222?cb=20180119214107",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Power"
            },
            {
                "Description": "High upgrade priority. Burst, Nightmare",
                "Energy": "1",
                "Name": "Catalyst",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/8f/R_catalyst.png/revision/latest/scale-to-width-down/222?cb=20180119214142",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "6",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "Necronomicon, Cycle, Cloak And Dagger, Blade Dance, Snecko Eye + Nightmare",
                "Energy": "2",
                "Name": "Choke",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e6/R_choke.png/revision/latest/scale-to-width-down/222?cb=20180119214216",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Attack"
            },
            {
                "Description": "Burst, Accuracy, Kunai, Shuriken, Finisher, Choke, Dead Branch",
                "Energy": "1",
                "Name": "Cloak And Dagger",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/77/R_cloak-and-dagger.png/revision/latest/scale-to-width-down/222?cb=20180119214248",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Acrobatics, Backflip, Tactician, Ice Cream, Endless Agony",
                "Energy": "0",
                "Name": "Concentrate",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d2/R_concentrate.png/revision/latest/scale-to-width-down/222?cb=20180119214343",
                "Rarity": "Unommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "Bouncing Flask + Catalyst, Deadly Poison + Burst. Hard to use. Stacks with vulnerable.",
                "Energy": "2",
                "Name": "Corpse Explosion",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/6f/R_corpse-explosion.png/revision/latest/scale-to-width-down/223?cb=20180119214416",
                "Rarity": "Rare",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Paper Krane",
                "Energy": "2",
                "Name": "Crippling Poison",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/dd/R_crippling-poison.png/revision/latest/scale-to-width-down/222?cb=20180119214450",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "Carries you through the Sewers. Less good in Act 3",
                "Energy": "1",
                "Name": "Dagger Spray",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/32/R_dagger-spray.png/revision/latest/scale-to-width-down/222?cb=20180119214525",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "7",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "Tactician",
                "Energy": "1",
                "Name": "Dagger Throw",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/3f/R_dagger-throw.png/revision/latest/scale-to-width-down/222?cb=20180119214610",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority, Card draw. Nightmare(just discard the extra copies for later), Strange Spoon. Helps to set up powers early.",
                "Energy": "0",
                "Name": "Dark Shackles",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/79/DarkShackles.png/revision/latest/scale-to-width-down/220?cb=20180120052215",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "High upgrade priority. Necronomicon, Snecko Eye + Nightmare",
                "Energy": "2",
                "Name": "Dash",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/62/R_dash.png/revision/latest/scale-to-width-down/222?cb=20180119214643",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "9",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Deadly Poison",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/8b/R_deadly-poison.png/revision/latest/scale-to-width-down/222?cb=20180119214720",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "Nightmare, Burst, High upgrade priority.",
                "Energy": "0",
                "Name": "Deep Breath",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/62/DeepBreath.png/revision/latest/scale-to-width-down/220?cb=20180120052441",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Skill\n"
            },
            {
                "Description": "Fletchettes, Escape Plan, Footwork make this better than Strike.",
                "Energy": "1",
                "Name": "Defend",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d9/R_defend.png/revision/latest/scale-to-width-down/222?cb=20180119223119",
                "Rarity": "Common",
                "TierPotential": "2",
                "TierRegPot": "3",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "Card draw, Footwork, Kunai + synergy",
                "Energy": "0",
                "Name": "Deflect",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d0/R_deflect.png/revision/latest/scale-to-width-down/222?cb=20180119214802",
                "Rarity": "Common",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Great early, less good later.",
                "Energy": "1",
                "Name": "Die Die Die",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c9/R_die-die-die.png/revision/latest/scale-to-width-down/223?cb=20180119214840",
                "Rarity": "Rare",
                "TierPotential": "3",
                "TierRegPot": "7",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "Guessing at values. Haven't played much with this.",
                "Energy": "1 (0)",
                "Name": "Distraction",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e2/R_distraction.png/revision/latest/scale-to-width-down/222?cb=20180119214924",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "Blur/Calipers + Kunai/Footwork",
                "Energy": "1",
                "Name": "Dodge and Roll",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/e1/R_dodge-and-roll.png/revision/latest/scale-to-width-down/222?cb=20180119215004",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Malaise, Skewer.p",
                "Energy": "X",
                "Name": "Doppelganger",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/90/R_doppelganger.png/revision/latest/scale-to-width-down/223?cb=20180119215033",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "",
                "Energy": "0",
                "Name": "Dramatic Entrance",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/42/DramaticEntrance.png/revision/latest/scale-to-width-down/220?cb=20180120054657",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Attack\n"
            },
            {
                "Description": "Good to upgrade. Just 0 energy, 12 damage at best without synergy. Concentrate, cycle.",
                "Energy": "0",
                "Name": "Endless Agony",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/04/R_endless-agony.png/revision/latest/scale-to-width-down/222?cb=20180119215258",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. Well-Laid Plans, Card draw, Expensive reusable cards.",
                "Energy": "0",
                "Name": "Enlightenment",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/60/Enlightment.png/revision/latest/scale-to-width-down/220?cb=20180120060356",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Skill\n"
            },
            {
                "Description": "Bad without Snecko Skull generally. Blade Dance/Cloak and Dagger + Burst, Riddle With Holes",
                "Energy": "2 (1)",
                "Name": "Envenom",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b5/R_envenom.png/revision/latest/scale-to-width-down/223?cb=20180119223409",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Power"
            },
            {
                "Description": "Footwork",
                "Energy": "0",
                "Name": "Escape Plan",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/37/R_escape-plan.png/revision/latest/scale-to-width-down/222?cb=20180119215411",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Prepared, Acrobatics, Tools of the Trade, Concentrate",
                "Energy": "4",
                "Name": "Eviscerate",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/2f/R_eviscerate.png/revision/latest/scale-to-width-down/222?cb=20180119215433",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Expertise",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b8/Expertise.png/revision/latest/scale-to-width-down/220?cb=20180214074732",
                "Rarity": "Uncommon",
                "TierPotential": "",
                "TierRegPot": "",
                "TierRegular": "",
                "Type": "Skill"
            },
            {
                "Description": "Burst, Footwork, Kunai + synergy.",
                "Energy": "0",
                "Name": "Finesse",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/67/Finesse.png/revision/latest/scale-to-width-down/220?cb=20180120054708",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "High upgrade priority. Burst + Blade Dance/Cloak and Dagger, Infinite Blades, Cycle",
                "Energy": "1",
                "Name": "Finisher",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/bf/R_finisher.png/revision/latest/scale-to-width-down/222?cb=20180119215522",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Nightmare, Card draw, Kunai, Shuriken, Finisher",
                "Energy": "0",
                "Name": "Flash of Steel",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/30/FlashOfSteel.png/revision/latest/scale-to-width-down/220?cb=20180120054717",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Attack\n"
            },
            {
                "Description": "High upgrade priority.",
                "Energy": "1",
                "Name": "Flechettes",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a4/R_flechettles.png/revision/latest/scale-to-width-down/222?cb=20180119215716",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Attack"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Flying Knee",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/82/R_flying-knee.png/revision/latest/scale-to-width-down/222?cb=20180119215805",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. Calipers, Blur, Deflect, Escape Plan",
                "Energy": "1",
                "Name": "Footwork",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a8/R_footwork.png/revision/latest/scale-to-width-down/222?cb=20180119215836",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "10",
                "TierRegular": "5",
                "Type": "Power"
            },
            {
                "Description": "High upgrade priority. Great early, less good later. ",
                "Energy": "1",
                "Name": "Glass Knife",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/ca/R_glass-knife.png/revision/latest/scale-to-width-down/223?cb=20180119215903",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "Nightmare, Card draw, Footwork, Kunai + synergy",
                "Energy": "0",
                "Name": "Good Instincts",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b8/GoodInstincts.png/revision/latest/scale-to-width-down/220?cb=20180120054728",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "Well-Laid Plans, Nightmare, Heavy cycle with some cards which draw 1",
                "Energy": "1",
                "Name": "Grand Finale",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/32/R_grand-finale.png/revision/latest/scale-to-width-down/223?cb=20180119215926",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "6",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Low payout for jumping through hoop and bloating your deck.",
                "Energy": "1",
                "Name": "Heel Hook",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/56/R_heel-hook.png/revision/latest/scale-to-width-down/222?cb=20180119220015",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Slow card. Accuracy, Kunai, Shuriken, Finisher, Choke. Bad on level 3 without synergy. ",
                "Energy": "1",
                "Name": "Infinite Blades",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b8/R_infinite-blades.png/revision/latest/scale-to-width-down/222?cb=20180119220035",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Power"
            },
            {
                "Description": "High upgrade priority. Burst, Nightmare, Strange Spoon, Card draw. Cloak And Dagger, Blade Dance, Burst, Infinite Blades, Endless Agony, Finisher, Fletchettes, Skewer",
                "Energy": "0",
                "Name": "J.A.X",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5f/JAX.png/revision/latest/scale-to-width-down/220?cb=20180120053408",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill\n"
            },
            {
                "Description": "High upgrade priority. Burst, Card draw.",
                "Energy": "0",
                "Name": "Jack Of All Trades",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/d9/JackOfAllTrades.png/revision/latest/scale-to-width-down/220?cb=20180120054739",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "Paper Krane, Burst",
                "Energy": "2",
                "Name": "Leg Sweep",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/41/R_leg-sweep.png/revision/latest/scale-to-width-down/222?cb=20180119220056",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Nightmare, Burst, Card draw, Small deck. Try to 'target' a card by playing cards you don't want to target first.",
                "Energy": "1(0)",
                "Name": "Madness",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/ee/Madness.png/revision/latest/scale-to-width-down/220?cb=20180120054801",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "Good to upgrade. wins games vs awakened, time eater. Ice Cream, Outmaneuver, Flying Knee, Tactician, Burst",
                "Energy": "X",
                "Name": "Malaise",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/14/R_malaise.png/revision/latest/scale-to-width-down/222?cb=20180119220115",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Good to upgrade. Strange Spoon, Burst, Nightmare. Especially helps to draw into and setup powers early.",
                "Energy": "0",
                "Name": "Master Of Strategy",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/33/MasterOfStrategy.png/revision/latest/scale-to-width-down/220?cb=20180120060415",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Skill\n"
            },
            {
                "Description": "Payout too low for jumping through tricky hoop. Foiled by Status/Curse without discard. Doesn't synergize with itself.",
                "Energy": "0",
                "Name": "Masterful Stab",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/6d/R_masterful-stab.png/revision/latest/scale-to-width-down/222?cb=20180119220138",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Nightmare, Dead Branch + Shiv.",
                "Energy": "0",
                "Name": "Mind Blast",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/26/MindBlast.png/revision/latest/scale-to-width-down/220?cb=20180120054812",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Attack\n"
            },
            {
                "Description": "High upgrade priority.",
                "Energy": "0",
                "Name": "Neutralize",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/30/R_neutralize.png/revision/latest/scale-to-width-down/222?cb=20180119220159",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. Snecko Eye, Catalyst, Footwork, Backflip, Prepared, Escape Plan, Setup + Expensive card.",
                "Energy": "3 (2)",
                "Name": "Nightmare",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/9b/Nightmare.png/revision/latest/scale-to-width-down/220?cb=20180119224504",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "7",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "Slow card. Nice AOE and debuff resistance removal. Snecko Skull. Gets worse after Act 1 without Synergy.",
                "Energy": "1",
                "Name": "Noxious Fumes",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/3f/R_noxious-fumes.png/revision/latest/scale-to-width-down/222?cb=20180119220246",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Power"
            },
            {
                "Description": "Burst, Malaise, Card draw, Ice Cream. The first copy is always good, the second is worse.",
                "Energy": "1",
                "Name": "Outmaneuver",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/be/R_outmaneuver.png/revision/latest/scale-to-width-down/222?cb=20180119220309",
                "Rarity": "Common",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Burst, Card draw",
                "Energy": "0",
                "Name": "Panacea",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/37/Panacea.png/revision/latest/scale-to-width-down/220?cb=20180120054820",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "High upgrade priority. Nightmare, Card draw, Energy gain, Cycle.",
                "Energy": "0",
                "Name": "Panache",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/19/Panache.png/revision/latest/scale-to-width-down/220?cb=20180120060427",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Power\n"
            },
            {
                "Description": "High upgrade priority. Pen Nib, Well-Laid Plans",
                "Energy": "2 (1)",
                "Name": "Phantasmal Killer",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c3/R_phantasmal-killer.png/revision/latest/scale-to-width-down/223?cb=20180119223505",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "Keeps you alive",
                "Energy": "1",
                "Name": "Piercing Wail",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/99/R_piercing-wail.png/revision/latest/scale-to-width-down/222?cb=20180119220415",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Poisoned Stab",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/85/R_poisoned-stab.png/revision/latest/scale-to-width-down/222?cb=20180119222535",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Attack"
            },
            {
                "Description": "Good to upgrade. Necronomicon, Snecko Eye + Nightmare",
                "Energy": "2",
                "Name": "Predator",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/4/41/R_predator.png/revision/latest/scale-to-width-down/222?cb=20180119220632",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "9",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority.",
                "Energy": "0",
                "Name": "Prepared",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/c0/R_prepared.png/revision/latest/scale-to-width-down/222?cb=20180119220658",
                "Rarity": "Common",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Card draw, Well-Laid Plans. It's not as good as removal because you already paid the price of drawing the cards, and you need to have the bad cards together with Purity.",
                "Energy": "0",
                "Name": "Purity",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a2/Purity.png/revision/latest/scale-to-width-down/220?cb=20180120054830",
                "Rarity": "Uncommon",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Skill\n"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Quick Slash",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/e/eb/R_quick-slash.png/revision/latest/scale-to-width-down/222?cb=20180119220726",
                "Rarity": "Common",
                "TierPotential": "3",
                "TierRegPot": "6",
                "TierRegular": "3",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. Tools of the Trade, Calculated Gambit.",
                "Energy": "",
                "Name": "Reflex",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/2/29/R_reflex.png/revision/latest/scale-to-width-down/222?cb=20180119220746",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "Strength. Necronomicon.",
                "Energy": "2",
                "Name": "Riddle With Holes",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/06/R_riddle-with-holes.png/revision/latest/scale-to-width-down/222?cb=20180119220809",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Noxious Fumes, Envenom + Shiv/Fletchettes/Finisher",
                "Energy": "0",
                "Name": "Sadistic Nature",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a8/SadisticNature.png/revision/latest/scale-to-width-down/220?cb=20180120060439",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Power\n"
            },
            {
                "Description": "Apotheosis.",
                "Energy": "0",
                "Name": "Secret Technique",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5c/SecretTechnique.png/revision/latest/scale-to-width-down/220?cb=20180120060449",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "",
                "Energy": "0",
                "Name": "Secret Weapon",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5a/SecretWeapon.png/revision/latest/scale-to-width-down/220?cb=20180120060501",
                "Rarity": "Rare",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Skill\n"
            },
            {
                "Description": "Nightmare, Bullet Time, Choke, Well-Laid Plans",
                "Energy": "1 (0)",
                "Name": "Setup",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f6/R_setup.png/revision/latest/scale-to-width-down/222?cb=20180119223613",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "",
                "Energy": "0",
                "Name": "Shiv",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b6/Shiv.png/revision/latest/scale-to-width-down/220?cb=20180120053608",
                "Rarity": "Common",
                "TierPotential": "",
                "TierRegPot": "",
                "TierRegular": "",
                "Type": "Attack\n"
            },
            {
                "Description": "High upgrade priority. Outmaneuver, Ice Cream, Tactician",
                "Energy": "X",
                "Name": "Skewer",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/b/b1/R_skewer.png/revision/latest/scale-to-width-down/222?cb=20180119220853",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Attack"
            },
            {
                "Description": "Card draw, Kunai, Shuriken, Finisher",
                "Energy": "0",
                "Name": "Slice",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/d/da/R_slice.png/revision/latest/scale-to-width-down/222?cb=20180119220917",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. Accuracy, Acrobatics, Backflip, Kunai, Shuriken, Tingsha, Tough Bandages",
                "Energy": "2",
                "Name": "Storm of Steel",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/a/a9/R_storm-of-steel.png/revision/latest/scale-to-width-down/223?cb=20180119220938",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "5",
                "TierRegular": "1",
                "Type": "Skill"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/5d/R_strike.png/revision/latest/scale-to-width-down/222?cb=20180119221000",
                "Rarity": "Common",
                "TierPotential": "1",
                "TierRegPot": "2",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Paper Krane",
                "Energy": "1",
                "Name": "Sucker Punch",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/6a/R_sucker-punch.png/revision/latest/scale-to-width-down/222?cb=20180119221024",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "8",
                "TierRegular": "4",
                "Type": "Attack"
            },
            {
                "Description": "",
                "Energy": "1",
                "Name": "Survivor",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/67/R_survivor.png/revision/latest/scale-to-width-down/222?cb=20180119221044",
                "Rarity": "Common",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Skill"
            },
            {
                "Description": "Card draw, Kunai, Shuriken, Finisher",
                "Energy": "0",
                "Name": "Swift Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/8/8b/SwiftStrike.png/revision/latest/scale-to-width-down/220?cb=20180120054843",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Attack\n"
            },
            {
                "Description": "High upgrade priority. Well-Laid Plans, Acrobatics, Prepared, Dagger Throw, Tools of the Trade. Incredibly powerful and not hard to make it work.",
                "Energy": "",
                "Name": "Tactician",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/7/7f/R_tactician.png/revision/latest/scale-to-width-down/223?cb=20180119221516",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "7",
                "TierRegular": "2",
                "Type": "Skill"
            },
            {
                "Description": "Insane vs single targets except with poison",
                "Energy": "1 (0)",
                "Name": "Terror",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/5/55/R_terror.png/revision/latest/scale-to-width-down/222?cb=20180119221531",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "9",
                "TierRegular": "4",
                "Type": "Skill"
            },
            {
                "Description": "Nightmare.",
                "Energy": "0",
                "Name": "Thinking Ahead",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/0/0c/ThinkingAhead.png/revision/latest/scale-to-width-down/220?cb=20180120060512",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "Mitigates curses and statuses. Reflex, Tactician. The second copy is much worse.",
                "Energy": "1 (0)",
                "Name": "Tools of the Trade",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/9/9c/R_tools-of-the-trade.png/revision/latest/scale-to-width-down/223?cb=20180119221547",
                "Rarity": "Rare",
                "TierPotential": "5",
                "TierRegPot": "8",
                "TierRegular": "3",
                "Type": "Power"
            },
            {
                "Description": "High upgrade priority. Card draw, Ice Cream. Nearly all upgrade colorless cards cost 0, so you want more card draw to balance out the extra 0 cost cards. Fun but inconsistent probably. Save energy with Ice Cream to play a bigger Transmutation, which gives you lots of 0 cost cards, which save more energy for your Ice Cream.",
                "Energy": "X",
                "Name": "Transmutation",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cd/Transmutation.png/revision/latest/scale-to-width-down/220?cb=20180120060525",
                "Rarity": "Rare",
                "TierPotential": "4",
                "TierRegPot": "7",
                "TierRegular": "3",
                "Type": "Skill\n"
            },
            {
                "Description": "Card draw, Burst.",
                "Energy": "0",
                "Name": "Trip",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/c/cf/Trip.png/revision/latest/scale-to-width-down/220?cb=20180120054900",
                "Rarity": "Uncommon",
                "TierPotential": "4",
                "TierRegPot": "6",
                "TierRegular": "2",
                "Type": "Skill\n"
            },
            {
                "Description": "Low payout for bloating your deck. Hurts you against spikey enemies.",
                "Energy": "",
                "Name": "Underhanded Strike",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/3/38/R_underhanded-strike.png/revision/latest/scale-to-width-down/222?cb=20180119222400",
                "Rarity": "Common",
                "TierPotential": "2",
                "TierRegPot": "3",
                "TierRegular": "1",
                "Type": "Attack"
            },
            {
                "Description": "Tactician, Reflex. Anti-synergy with Well-Laid Plans, which is otherwise great.",
                "Energy": "1",
                "Name": "Unload",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/6/68/R_unload.png/revision/latest/scale-to-width-down/223?cb=2011180119222417",
                "Rarity": "Rare",
                "TierPotential": "3",
                "TierRegPot": "5",
                "TierRegular": "2",
                "Type": "Attack"
            },
            {
                "Description": "High upgrade priority. One copy is enough. Tactician, Acrobatics, Burst, Nightmare, Grand Finale, Pen Nib, Phastasmal Killer, Skewer, Malaise",
                "Energy": "0",
                "Name": "Well-Laid Plans",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/f/f6/R_well-laid-plans.png/revision/latest/scale-to-width-down/222?cb=20180119222439",
                "Rarity": "Uncommon",
                "TierPotential": "5",
                "TierRegPot": "9",
                "TierRegular": "4",
                "Type": "Skill"
            },
            {
                "Description": "High upgrade priority. Expensive. Heavy cycle.",
                "Energy": "3",
                "Name": "Wraith Form",
                "Picture": "https://vignette.wikia.nocookie.net/slay-the-spire/images/1/1c/R_wraith-form.png/revision/latest/scale-to-width-down/223?cb=20180119223950",
                "Rarity": "Rare",
                "TierPotential": "3",
                "TierRegPot": "4",
                "TierRegular": "1",
                "Type": "Power"
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
