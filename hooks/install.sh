#!/usr/bin/env bash
#
# Instala el hook de pre-commit (gate de contraste + higiene) en este repo.
# Enlaza .git/hooks/pre-commit → hooks/pre-commit (versionado), así los cambios
# al hook se aplican solos. Idempotente: puedes correrlo las veces que quieras.
#
set -euo pipefail
REPO="$(git rev-parse --show-toplevel)"
ln -sf ../../hooks/pre-commit "$REPO/.git/hooks/pre-commit"
chmod +x "$REPO/hooks/pre-commit"
echo "✓ Hook pre-commit instalado en $(basename "$REPO"). El gate corre antes de cada commit."
echo "  (Saltar puntualmente: git commit --no-verify)"
