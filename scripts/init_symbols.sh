#!/bin/bash

# Crear carpetas destino
mkdir -p /foss/designs/libs
mkdir -p /foss/designs/switch_matrix_gf180mcu_9t5v0

# Verificar existencia del repositorio
if [ -d "/foss/designs/Chipathon-2025-OnChipTeam" ]; then
  cd /foss/designs/Chipathon-2025-OnChipTeam || exit 1

  echo "Inicializando submódulos..."
  git submodule update --init --recursive

  # Copiar symbols
  if [ -d "external/symbols" ]; then
    echo "Copiando 'external/symbols' a '/foss/designs/libs/gf180mcu_fd_sc_mcu9t5v0_symbols'..."
    cp -r external/symbols /foss/designs/libs/gf180mcu_fd_sc_mcu9t5v0_symbols
  else
    echo "Error: No se encontró 'external/symbols'."
    exit 1
  fi

  # Copiar switch_matrix
  if [ -d "external/switch_matrix" ]; then
    echo "Copiando 'external/switch_matrix' a '/foss/designs/switch_matrix_gf180mcu_9t5v0/'..."
    cp -r external/switch_matrix/* /foss/designs/switch_matrix_gf180mcu_9t5v0/
  else
    echo "Error: No se encontró 'external/switch_matrix'."
    exit 1
  fi

  echo "✅ Archivos copiados correctamente."
else
  echo "❌ Error: El repositorio Chipathon-2025-OnChipTeam no existe en el directorio actual."
  exit 1
fi

