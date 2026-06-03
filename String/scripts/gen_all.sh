#!/usr/bin/env bash
# Batch-translate every PROSE SyGuS SLIA benchmark into a Delis .sl file.
# Layout mirrors benchmark/LTL/, benchmark/CTL/, benchmark/Reg/: numbered
# 0001.sl … 0354.sl in the benchmark directory; the original SyGuS filename
# is embedded as (set-info :source ...) for traceability.
set -u

cd "$(dirname "$0")/../../.."   # repo root
SRC=benchmark/String/sygus
DST=benchmark/String
GEN=benchmark/String/scripts/gen.py

# Wipe any stale numbered outputs from a previous run, but keep sygus/,
# scripts/, README.md, etc.
rm -f "$DST"/[0-9][0-9][0-9][0-9].sl

MANIFEST="$SRC/MANIFEST.txt"

i=0
ok=0
fail=0
for f in $(ls "$SRC" | grep -E '^[0-9]{4}\.sl$' | sort); do
    i=$((i+1))
    # Look up the original SyGuS source name from the manifest, if present.
    # Falls back to the numeric filename when the manifest is missing.
    if [[ -f "$MANIFEST" ]]; then
        src_name=$(awk -v id="${f%.sl}" '$1==id {print $2; exit}' "$MANIFEST")
    fi
    src_name="${src_name:-$f}"
    out="$DST/$f"
    if python3 "$GEN" --input "$SRC/$f" --output "$out" --source "$src_name" >/dev/null 2>&1; then
        ok=$((ok+1))
    else
        fail=$((fail+1))
        echo "FAIL: $f"
    fi
done

echo "translated=$ok fail=$fail total=$i"
