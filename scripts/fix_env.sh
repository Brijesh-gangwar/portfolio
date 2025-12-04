#!/usr/bin/env bash
# Helper script to detect and output commands to set JAVA_HOME and FLUTTER root

echo "Detecting Java and Flutter SDKs..."

which java &>/dev/null
if [ $? -eq 0 ]; then
  JAVACMD=$(which java)
  # Try to find JAVA_HOME via java -XshowSettings:properties -version (works on Oracle/OpenJDK)
  JAVA_HOME_DETECTED=
  JAVA_HOME_DETECTED=$(java -XshowSettings:properties -version 2>&1 | grep 'java.home' | sed -E 's/.*= //')
  if [ -n "$JAVA_HOME_DETECTED" ]; then
    echo "Detected JAVA_HOME: $JAVA_HOME_DETECTED"
  else
    echo "Could not detect JAVA_HOME from java command. If you have JDK in /Library/Java/JavaVirtualMachines/ or /opt/homebrew, try installing or setting JAVA_HOME manually."
  fi
else
  echo "No Java executable in PATH. Install a JDK 17+ first (e.g., via Homebrew 'brew install openjdk@17' or Oracle/Temurin installers)"
fi

# Detect Flutter path
which flutter &>/dev/null
if [ $? -eq 0 ]; then
  FLUTTER_BIN=$(which flutter)
  FLUTTER_ROOT_DETECTED=$(dirname "$(dirname "$FLUTTER_BIN")")
  echo "Detected Flutter: $FLUTTER_ROOT_DETECTED"
else
  echo "No flutter in PATH. Install or add to PATH. A typical location is ~/tools/flutter or /Users/<you>/Documents/<project>/flutter"
fi

# Print suggested export commands

cat <<EOF

Suggested environment variable exports (add to ~/.zshrc or ~/.zprofile):

# Java (replace with the detected path or your JDK 17 installation)
export JAVA_HOME="$JAVA_HOME_DETECTED"
export PATH="\$JAVA_HOME/bin:\$PATH"

# Flutter (replace with the detected path or desired local SDK path)
export PATH="$FLUTTER_ROOT_DETECTED/bin:\$PATH"
EOF
