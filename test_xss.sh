#!/bin/bash
echo "Looking for occurrences of unsafe interpolations..."
grep -n "\${t.desc" index.html
grep -n "\${t.cat" index.html
grep -n "\${r.name" index.html
grep -n "\${s.name" index.html
grep -n "\${c.name" index.html
grep -n "\${n}" index.html
