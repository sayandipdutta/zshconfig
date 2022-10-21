# zshconfig

This is my personal zsh config.

---

## Sections
### 1. zshenv
This is loaded every time. Even in non-login shells. So it is the best place to store all the path variables. And any other environment variables that you will want to have access to all the time.

### 2. zprofile
This is loaded at login, before loading zshrc.

### 3. zshrc
All other zsh specific user configuration goes here.

### 4. zlogin
Loaded at login, after loading zshrc. So any task that requires the profile to be fully loaded, should go here.
