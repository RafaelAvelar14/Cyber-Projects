#!/bin/bash

# Define the project structure
PROJECT_NAME="PasswordManager"
DIRS=(
  "$PROJECT_NAME/src/main/java/com/passwordmanager"
  "$PROJECT_NAME/src/main/java/com/passwordmanager/utils"
  "$PROJECT_NAME/src/main/java/com/passwordmanager/models"
  "$PROJECT_NAME/src/main/java/com/passwordmanager/services"
  "$PROJECT_NAME/test/java/com/passwordmanager"
  "$PROJECT_NAME/resources"
  "$PROJECT_NAME/scripts"
)

# Create directories
echo "Creating project directories..."
for dir in "${DIRS[@]}"; do
  mkdir -p "$dir"
done

# Create essential files
echo "Creating essential files..."
touch "$PROJECT_NAME/src/main/java/com/passwordmanager/Main.java"
touch "$PROJECT_NAME/src/main/java/com/passwordmanager/utils/EncryptionUtils.java"
touch "$PROJECT_NAME/src/main/java/com/passwordmanager/utils/PasswordGenerator.java"
touch "$PROJECT_NAME/src/main/java/com/passwordmanager/models/PasswordEntry.java"
touch "$PROJECT_NAME/src/main/java/com/passwordmanager/services/PasswordManagerService.java"
touch "$PROJECT_NAME/resources/passwords.enc"
touch "$PROJECT_NAME/scripts/setup.sh"
touch "$PROJECT_NAME/test/java/com/passwordmanager/EncryptionUtilsTest.java"
touch "$PROJECT_NAME/test/java/com/passwordmanager/PasswordGeneratorTest.java"
touch "$PROJECT_NAME/README.md"

# Add execution permissions to the script
chmod +x "$PROJECT_NAME/scripts/setup.sh"

echo "Project setup complete!"
