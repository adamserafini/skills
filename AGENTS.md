# Adding a New Agent Skill

To add a new Agent Skill to this project, follow these simple steps:

1. Create a new folder inside the `skills/` directory with the name of your skill (e.g., `skills/my-new-skill/`).
2. Inside this new folder, create a `SKILL.md` file. This file must follow the [Agent Skill standard](https://agentskills.io/specification) and include your skill's frontmatter, instructions, and required workflows.
3. Add your skill's purpose, detailed instructions, and any required tools into the `SKILL.md` file.

Since the `skills/` directory is mapped in your Pi settings (as described in the main repository README), Pi will automatically discover and load the new skill.
