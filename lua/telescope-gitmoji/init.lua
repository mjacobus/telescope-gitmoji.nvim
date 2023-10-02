local M = {}

local gitmojis = {
  {
    name = "🎨",
    value = ":art:",
    description = "Improve structure / format of the code.",
    category = "Gitmoji"
  },
  {
    name = "⚡️",
    value = ":zap:",
    description = "Improve performance.",
    category = "Gitmoji"
  },
  {
    name = "🔥",
    value = ":fire:",
    description = "Remove code or files.",
    category = "Gitmoji"
  },
  {
    name = "🐛",
    value = ":bug:",
    description = "Fix a bug.",
    category = "Gitmoji"
  },
  {
    name = "🚑️",
    value = ":ambulance:",
    description = "Critical hotfix.",
    category = "Gitmoji"
  },
  {
    name = "✨",
    value = ":sparkles:",
    description = "Introduce new features.",
    category = "Gitmoji"
  },
  {
    name = "📝",
    value = ":memo:",
    description = "Add or update documentation.",
    category = "Gitmoji"
  },
  {
    name = "🚀",
    value = ":rocket:",
    description = "Deploy stuff.",
    category = "Gitmoji"
  },
  {
    name = "💄",
    value = ":lipstick:",
    description = "Add or update the UI and style files.",
    category = "Gitmoji"
  },
  {
    name = "🎉",
    value = ":tada:",
    description = "Begin a project.",
    category = "Gitmoji"
  },
  {
    name = "✅",
    value = ":white_check_mark:",
    description = "Add, update, or pass tests.",
    category = "Gitmoji"
  },
  {
    name = "🔒️",
    value = ":lock:",
    description = "Fix security issues.",
    category = "Gitmoji"
  },
  {
    name = "🔐",
    value = ":closed_lock_with_key:",
    description = "Add or update secrets.",
    category = "Gitmoji"
  },
  {
    name = "🔖",
    value = ":bookmark:",
    description = "Release / Version tags.",
    category = "Gitmoji"
  },
  {
    name = "🚨",
    value = ":rotating_light:",
    description = "Fix compiler / linter warnings.",
    category = "Gitmoji"
  },
  {
    name = "🚧",
    value = ":construction:",
    description = "Work in progress.",
    category = "Gitmoji"
  },
  {
    name = "💚",
    value = ":green_heart:",
    description = "Fix CI Build.",
    category = "Gitmoji"
  },
  {
    name = "⬇️",
    value = ":arrow_down:",
    description = "Downgrade dependencies.",
    category = "Gitmoji"
  },
  {
    name = "⬆️",
    value = ":arrow_up:",
    description = "Upgrade dependencies.",
    category = "Gitmoji"
  },
  {
    name = "📌",
    value = ":pushpin:",
    description = "Pin dependencies to specific versions.",
    category = "Gitmoji"
  },
  {
    name = "👷",
    value = ":construction_worker:",
    description = "Add or update CI build system.",
    category = "Gitmoji"
  },
  {
    name = "📈",
    value = ":chart_with_upwards_trend:",
    description = "Add or update analytics or track code.",
    category = "Gitmoji"
  },
  {
    name = "♻️",
    value = ":recycle:",
    description = "Refactor code.",
    category = "Gitmoji"
  },
  {
    name = "➕",
    value = ":heavy_plus_sign:",
    description = "Add a dependency.",
    category = "Gitmoji"
  },
  {
    name = "➖",
    value = ":heavy_minus_sign:",
    description = "Remove a dependency.",
    category = "Gitmoji"
  },
  {
    name = "🔧",
    value = ":wrench:",
    description = "Add or update configuration files.",
    category = "Gitmoji"
  },
  {
    name = "🔨",
    value = ":hammer:",
    description = "Add or update development scripts.",
    category = "Gitmoji"
  },
  {
    name = "🌐",
    value = ":globe_with_meridians:",
    description = "Internationalization and localization.",
    category = "Gitmoji"
  },
  {
    name = "✏️",
    value = ":pencil2:",
    description = "Fix typos.",
    category = "Gitmoji"
  },
  {
    name = "💩",
    value = ":poop:",
    description = "Write bad code that needs to be improved.",
    category = "Gitmoji"
  },
  {
    name = "⏪️",
    value = ":rewind:",
    description = "Revert changes.",
    category = "Gitmoji"
  },
  {
    name = "🔀",
    value = ":twisted_rightwards_arrows:",
    description = "Merge branches.",
    category = "Gitmoji"
  },
  {
    name = "📦️",
    value = ":package:",
    description = "Add or update compiled files or packages.",
    category = "Gitmoji"
  },
  {
    name = "👽️",
    value = ":alien:",
    description = "Update code due to external API changes.",
    category = "Gitmoji"
  },
  {
    name = "🚚",
    value = ":truck:",
    description = "Move or rename resources (e.g.: files, paths, routes).",
    category = "Gitmoji"
  },
  {
    name = "📄",
    value = ":page_facing_up:",
    description = "Add or update license.",
    category = "Gitmoji"
  },
  {
    name = "💥",
    value = ":boom:",
    description = "Introduce breaking changes.",
    category = "Gitmoji"
  },
  {
    name = "🍱",
    value = ":bento:",
    description = "Add or update assets.",
    category = "Gitmoji"
  },
  {
    name = "♿️",
    value = ":wheelchair:",
    description = "Improve accessibility.",
    category = "Gitmoji"
  },
  {
    name = "💡",
    value = ":bulb:",
    description = "Add or update comments in source code.",
    category = "Gitmoji"
  },
  {
    name = "🍻",
    value = ":beers:",
    description = "Write code drunkenly.",
    category = "Gitmoji"
  },
  {
    name = "💬",
    value = ":speech_balloon:",
    description = "Add or update text and literals.",
    category = "Gitmoji"
  },
  {
    name = "🗃️",
    value = ":card_file_box:",
    description = "Perform database related changes.",
    category = "Gitmoji"
  },
  {
    name = "🔊",
    value = ":loud_sound:",
    description = "Add or update logs.",
    category = "Gitmoji"
  },
  {
    name = "🔇",
    value = ":mute:",
    description = "Remove logs.",
    category = "Gitmoji"
  },
  {
    name = "👥",
    value = ":busts_in_silhouette:",
    description = "Add or update contributor(s).",
    category = "Gitmoji"
  },
  {
    name = "🚸",
    value = ":children_crossing:",
    description = "Improve user experience / usability.",
    category = "Gitmoji"
  },
  {
    name = "🏗️",
    value = ":building_construction:",
    description = "Make architectural changes.",
    category = "Gitmoji"
  },
  {
    name = "📱",
    value = ":iphone:",
    description = "Work on responsive design.",
    category = "Gitmoji"
  },
  {
    name = "🤡",
    value = ":clown_face:",
    description = "Mock things.",
    category = "Gitmoji"
  },
  {
    name = "🥚",
    value = ":egg:",
    description = "Add or update an easter egg.",
    category = "Gitmoji"
  },
  {
    name = "🙈",
    value = ":see_no_evil:",
    description = "Add or update a .gitignore file.",
    category = "Gitmoji"
  },
  {
    name = "📸",
    value = ":camera_flash:",
    description = "Add or update snapshots.",
    category = "Gitmoji"
  },
  {
    name = "⚗️",
    value = ":alembic:",
    description = "Perform experiments.",
    category = "Gitmoji"
  },
  {
    name = "🔍️",
    value = ":mag:",
    description = "Improve SEO.",
    category = "Gitmoji"
  },
  {
    name = "🏷️",
    value = ":label:",
    description = "Add or update types.",
    category = "Gitmoji"
  },
  {
    name = "🌱",
    value = ":seedling:",
    description = "Add or update seed files.",
    category = "Gitmoji"
  },
  {
    name = "🚩",
    value = ":triangular_flag_on_post:",
    description = "Add, update, or remove feature flags.",
    category = "Gitmoji"
  },
  {
    name = "🥅",
    value = ":goal_net:",
    description = "Catch errors.",
    category = "Gitmoji"
  },
  {
    name = "💫",
    value = ":dizzy:",
    description = "Add or update animations and transitions.",
    category = "Gitmoji"
  },
  {
    name = "🗑️",
    value = ":wastebasket:",
    description = "Deprecate code that needs to be cleaned up.",
    category = "Gitmoji"
  },
  {
    name = "🛂",
    value = ":passport_control:",
    description = "Work on code related to authorization, roles and permissions.",
    category = "Gitmoji"
  },
  {
    name = "🩹",
    value = ":adhesive_bandage:",
    description = "Simple fix for a non-critical issue.",
    category = "Gitmoji"
  },
  {
    name = "🧐",
    value = ":monocle_face:",
    description = "Data exploration/inspection.",
    category = "Gitmoji"
  },
  {
    name = "⚰️",
    value = ":coffin:",
    description = "Remove dead code.",
    category = "Gitmoji"
  },
  {
    name = "🧪",
    value = ":test_tube:",
    description = "Add a failing test.",
    category = "Gitmoji"
  },
  {
    name = "👔",
    value = ":necktie:",
    description = "Add or update business logic.",
    category = "Gitmoji"
  },
  {
    name = "🩺",
    value = ":stethoscope:",
    description = "Add or update healthcheck.",
    category = "Gitmoji"
  },
  {
    name = "🧱",
    value = ":bricks:",
    description = "Infrastructure related changes.",
    category = "Gitmoji"
  },
  {
    name = "🧑‍💻",
    value = ":technologist:",
    description = "Improve developer experience.",
    category = "Gitmoji"
  },
  {
    name = "💸",
    value = ":money_with_wings:",
    description = "Add sponsorships or money related infrastructure.",
    category = "Gitmoji"
  },
  {
    name = "🧵",
    value = ":thread:",
    description = "Add or update code related to multithreading or concurrency.",
    category = "Gitmoji"
  },
  {
    name = "🦺",
    value = ":safety_vest:",
    description = "Add or update code related to validation.",
    category = "Gitmoji"
  },
}

return { gitmojis = gitmojis }
