# My Agent Skills

This repository contains custom Agent skills I am using with the [Pi](https://pi.dev) coding agent (feel free to use with any other agent!)

## Installation

The cleanest way to use these skills on a new computer is to tell Pi to load them directly from this repository using your global settings file. 

This avoids the need for manual symlinks and ensures you don't accidentally load repository documentation as skills.

### Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url> ~/Code/skills
   ```

2. **Update your Pi settings:**
   Open your global Pi settings file (`~/.pi/agent/settings.json`) and add the absolute path to the `skills` subdirectory of this cloned repository.

   ```json
   {
     "skills": [
       "~/Code/skills/skills"
     ]
   }
   ```

That's it! Pi will automatically discover all custom skills inside the `skills/` directory without picking up `README.md` or other repository files by mistake.

## Validation and Scoring

This repository uses [skill-validator](https://github.com/agent-ecosystem/skill-validator) to ensure all skills are spec-compliant and high quality. The structure, links, and content metrics are checked automatically via a `pre-commit` hook (using `--strict` mode).

You can also use the validator to qualitatively score your skills (e.g., Clarity, Actionability, Novelty) using an LLM.

To manually evaluate a skill and receive actionable feedback:

1. Install the CLI:
   ```bash
   brew tap agent-ecosystem/tap
   brew install skill-validator
   ```

2. Run the scoring command on a specific skill (using the local Claude CLI, or your preferred API provider):
   ```bash
   skill-validator score evaluate --provider claude-cli skills/<skill-name>
   ```