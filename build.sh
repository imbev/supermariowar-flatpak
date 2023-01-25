#!/usr/bin/env sh

flatpak-builder \
  --force-clean \
  .build-dir \
  net.supersanctuary.supermariowar.yml && \

flatpak build-export repo .build-dir && \

flatpak build-bundle repo supermariowar.flatpak net.supersanctuary.supermariowar
