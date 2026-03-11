# Pi Skills

This repository contains custom skills for the Pi coding agent.

## Installation

To use these skills on a new computer, you need to clone this repository and symlink (or copy) the skill directories into your local Pi skills folder (`~/.agents/skills/`).

### Setup Instructions

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url> ~/Code/skills
   cd ~/Code/skills
   ```

2. **Create the local skills directory** (if it doesn't already exist):
   ```bash
   mkdir -p ~/.agents/skills
   ```

3. **Symlink the skills:**
   Run the following command in the root of this repository to symlink all skill folders into the Pi agents directory:
   ```bash
   for d in */ ; do
       ln -shf "$(pwd)/${d%/}" ~/.agents/skills/${d%/}
   done
   ```

Alternatively, you can manually symlink individual skills:
```bash
ln -s ~/Code/skills/git-commit ~/.agents/skills/git-commit
```
