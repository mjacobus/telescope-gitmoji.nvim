local M = {}

local gitmojis = {
  {
    name = ":art: 🎨",
    value = ":art:",
    description = "Improve structure / format of the code.",
    category = "Gitmoji"
  },
  {
    name = ":zap: ⚡️",
    value = ":zap:",
    description = "Improve performance.",
    category = "Gitmoji"
  },
  {
    name = ":fire: 🔥",
    value = ":fire:",
    description = "Remove code or files.",
    category = "Gitmoji"
  },
  {
    name = ":bug: 🐛",
    value = ":bug:",
    description = "Fix a bug.",
    category = "Gitmoji"
  },
  {
    name = ":ambulance: 🚑️",
    value = ":ambulance:",
    description = "Critical hotfix.",
    category = "Gitmoji"
  },
  {
    name = ":sparkles: ✨",
    value = ":sparkles:",
    description = "Introduce new features.",
    category = "Gitmoji"
  },
  {
    name = ":memo: 📝",
    value = ":memo:",
    description = "Add or update documentation.",
    category = "Gitmoji"
  },
  {
    name = ":rocket: 🚀",
    value = ":rocket:",
    description = "Deploy stuff.",
    category = "Gitmoji"
  },
  {
    name = ":lipstick: 💄",
    value = ":lipstick:",
    description = "Add or update the UI and style files.",
    category = "Gitmoji"
  },
  {
    name = ":tada: 🎉",
    value = ":tada:",
    description = "Begin a project.",
    category = "Gitmoji"
  },
  {
    name = ":white_check_mark: ✅",
    value = ":white_check_mark:",
    description = "Add, update, or pass tests.",
    category = "Gitmoji"
  },
  {
    name = ":lock: 🔒️",
    value = ":lock:",
    description = "Fix security issues.",
    category = "Gitmoji"
  },
  {
    name = ":closed_lock_with_key: 🔐",
    value = ":closed_lock_with_key:",
    description = "Add or update secrets.",
    category = "Gitmoji"
  },
  {
    name = ":bookmark: 🔖",
    value = ":bookmark:",
    description = "Release / Version tags.",
    category = "Gitmoji"
  },
  {
    name = ":rotating_light: 🚨",
    value = ":rotating_light:",
    description = "Fix compiler / linter warnings.",
    category = "Gitmoji"
  },
  {
    name = ":construction: 🚧",
    value = ":construction:",
    description = "Work in progress.",
    category = "Gitmoji"
  },
  {
    name = ":green_heart: 💚",
    value = ":green_heart:",
    description = "Fix CI Build.",
    category = "Gitmoji"
  },
  {
    name = ":arrow_down: ⬇️",
    value = ":arrow_down:",
    description = "Downgrade dependencies.",
    category = "Gitmoji"
  },
  {
    name = ":arrow_up: ⬆️",
    value = ":arrow_up:",
    description = "Upgrade dependencies.",
    category = "Gitmoji"
  },
  {
    name = ":pushpin: 📌",
    value = ":pushpin:",
    description = "Pin dependencies to specific versions.",
    category = "Gitmoji"
  },
  {
    name = ":construction_worker: 👷",
    value = ":construction_worker:",
    description = "Add or update CI build system.",
    category = "Gitmoji"
  },
  {
    name = ":chart_with_upwards_trend: 📈",
    value = ":chart_with_upwards_trend:",
    description = "Add or update analytics or track code.",
    category = "Gitmoji"
  },
  {
    name = ":recycle: ♻️",
    value = ":recycle:",
    description = "Refactor code.",
    category = "Gitmoji"
  },
  {
    name = ":heavy_plus_sign: ➕",
    value = ":heavy_plus_sign:",
    description = "Add a dependency.",
    category = "Gitmoji"
  },
  {
    name = ":heavy_minus_sign: ➖",
    value = ":heavy_minus_sign:",
    description = "Remove a dependency.",
    category = "Gitmoji"
  },
  {
    name = ":wrench: 🔧",
    value = ":wrench:",
    description = "Add or update configuration files.",
    category = "Gitmoji"
  },
  {
    name = ":hammer: 🔨",
    value = ":hammer:",
    description = "Add or update development scripts.",
    category = "Gitmoji"
  },
  {
    name = ":globe_with_meridians: 🌐",
    value = ":globe_with_meridians:",
    description = "Internationalization and localization.",
    category = "Gitmoji"
  },
  {
    name = ":pencil2: ✏️",
    value = ":pencil2:",
    description = "Fix typos.",
    category = "Gitmoji"
  },
  {
    name = ":poop: 💩",
    value = ":poop:",
    description = "Write bad code that needs to be improved.",
    category = "Gitmoji"
  },
  {
    name = ":rewind: ⏪️",
    value = ":rewind:",
    description = "Revert changes.",
    category = "Gitmoji"
  },
  {
    name = ":twisted_rightwards_arrows: 🔀",
    value = ":twisted_rightwards_arrows:",
    description = "Merge branches.",
    category = "Gitmoji"
  },
  {
    name = ":package: 📦️",
    value = ":package:",
    description = "Add or update compiled files or packages.",
    category = "Gitmoji"
  },
  {
    name = ":alien: 👽️",
    value = ":alien:",
    description = "Update code due to external API changes.",
    category = "Gitmoji"
  },
  {
    name = ":truck: 🚚",
    value = ":truck:",
    description = "Move or rename resources (e.g.: files, paths, routes).",
    category = "Gitmoji"
  },
  {
    name = ":page_facing_up: 📄",
    value = ":page_facing_up:",
    description = "Add or update license.",
    category = "Gitmoji"
  },
  {
    name = ":boom: 💥",
    value = ":boom:",
    description = "Introduce breaking changes.",
    category = "Gitmoji"
  },
  {
    name = ":bento: 🍱",
    value = ":bento:",
    description = "Add or update assets.",
    category = "Gitmoji"
  },
  {
    name = ":wheelchair: ♿️",
    value = ":wheelchair:",
    description = "Improve accessibility.",
    category = "Gitmoji"
  },
  {
    name = ":bulb: 💡",
    value = ":bulb:",
    description = "Add or update comments in source code.",
    category = "Gitmoji"
  },
  {
    name = ":beers: 🍻",
    value = ":beers:",
    description = "Write code drunkenly.",
    category = "Gitmoji"
  },
  {
    name = ":speech_balloon: 💬",
    value = ":speech_balloon:",
    description = "Add or update text and literals.",
    category = "Gitmoji"
  },
  {
    name = ":card_file_box: 🗃️",
    value = ":card_file_box:",
    description = "Perform database related changes.",
    category = "Gitmoji"
  },
  {
    name = ":loud_sound: 🔊",
    value = ":loud_sound:",
    description = "Add or update logs.",
    category = "Gitmoji"
  },
  {
    name = ":mute: 🔇",
    value = ":mute:",
    description = "Remove logs.",
    category = "Gitmoji"
  },
  {
    name = ":busts_in_silhouette: 👥",
    value = ":busts_in_silhouette:",
    description = "Add or update contributor(s).",
    category = "Gitmoji"
  },
  {
    name = ":children_crossing: 🚸",
    value = ":children_crossing:",
    description = "Improve user experience / usability.",
    category = "Gitmoji"
  },
  {
    name = ":building_construction: 🏗️",
    value = ":building_construction:",
    description = "Make architectural changes.",
    category = "Gitmoji"
  },
  {
    name = ":iphone: 📱",
    value = ":iphone:",
    description = "Work on responsive design.",
    category = "Gitmoji"
  },
  {
    name = ":clown_face: 🤡",
    value = ":clown_face:",
    description = "Mock things.",
    category = "Gitmoji"
  },
  {
    name = ":egg: 🥚",
    value = ":egg:",
    description = "Add or update an easter egg.",
    category = "Gitmoji"
  },
  {
    name = ":see_no_evil: 🙈",
    value = ":see_no_evil:",
    description = "Add or update a .gitignore file.",
    category = "Gitmoji"
  },
  {
    name = ":camera_flash: 📸",
    value = ":camera_flash:",
    description = "Add or update snapshots.",
    category = "Gitmoji"
  },
  {
    name = ":alembic: ⚗️",
    value = ":alembic:",
    description = "Perform experiments.",
    category = "Gitmoji"
  },
  {
    name = ":mag: 🔍️",
    value = ":mag:",
    description = "Improve SEO.",
    category = "Gitmoji"
  },
  {
    name = ":label: 🏷️",
    value = ":label:",
    description = "Add or update types.",
    category = "Gitmoji"
  },
  {
    name = ":seedling: 🌱",
    value = ":seedling:",
    description = "Add or update seed files.",
    category = "Gitmoji"
  },
  {
    name = ":triangular_flag_on_post: 🚩",
    value = ":triangular_flag_on_post:",
    description = "Add, update, or remove feature flags.",
    category = "Gitmoji"
  },
  {
    name = ":goal_net: 🥅",
    value = ":goal_net:",
    description = "Catch errors.",
    category = "Gitmoji"
  },
  {
    name = ":dizzy: 💫",
    value = ":dizzy:",
    description = "Add or update animations and transitions.",
    category = "Gitmoji"
  },
  {
    name = ":wastebasket: 🗑️",
    value = ":wastebasket:",
    description = "Deprecate code that needs to be cleaned up.",
    category = "Gitmoji"
  },
  {
    name = ":passport_control: 🛂",
    value = ":passport_control:",
    description = "Work on code related to authorization, roles and permissions.",
    category = "Gitmoji"
  },
  {
    name = ":adhesive_bandage: 🩹",
    value = ":adhesive_bandage:",
    description = "Simple fix for a non-critical issue.",
    category = "Gitmoji"
  },
  {
    name = ":monocle_face: 🧐",
    value = ":monocle_face:",
    description = "Data exploration/inspection.",
    category = "Gitmoji"
  },
  {
    name = ":coffin: ⚰️",
    value = ":coffin:",
    description = "Remove dead code.",
    category = "Gitmoji"
  },
  {
    name = ":test_tube: 🧪",
    value = ":test_tube:",
    description = "Add a failing test.",
    category = "Gitmoji"
  },
  {
    name = ":necktie: 👔",
    value = ":necktie:",
    description = "Add or update business logic.",
    category = "Gitmoji"
  },
  {
    name = ":stethoscope: 🩺",
    value = ":stethoscope:",
    description = "Add or update healthcheck.",
    category = "Gitmoji"
  },
  {
    name = ":bricks: 🧱",
    value = ":bricks:",
    description = "Infrastructure related changes.",
    category = "Gitmoji"
  },
  {
    name = ":technologist: 🧑‍💻",
    value = ":technologist:",
    description = "Improve developer experience.",
    category = "Gitmoji"
  },
  {
    name = ":money_with_wings: 💸",
    value = ":money_with_wings:",
    description = "Add sponsorships or money related infrastructure.",
    category = "Gitmoji"
  },
  {
    name = ":thread: 🧵",
    value = ":thread:",
    description = "Add or update code related to multithreading or concurrency.",
    category = "Gitmoji"
  },
  {
    name = ":safety_vest: 🦺",
    value = ":safety_vest:",
    description = "Add or update code related to validation.",
    category = "Gitmoji"
  },
}

return { gitmojis = gitmojis }
