# Experiments

Patches that were **tested in the sim but not applied to the core**. They live here so the evidence
behind a `TODO.md` claim can be reproduced in one command, without leaving speculative changes in
`rtl/`.

```sh
cd <repo root>
git apply vsim/experiments/<name>.patch
cd vsim && make && ./run_tests.sh
# to undo:
git apply -R vsim/experiments/<name>.patch
```

## Currently: none

`t6-t13-keyboard-irq.patch` used to live here. It was validated (Mobile Suit Gundam went from frozen
on its title screen to gameplay) and has since been **merged into `rtl/`**, so the patch was removed
rather than left to rot against a tree it no longer applies to. See `TODO.md` T6 and T13.

## When to add one

Use this for a change that is plausible but unproven — where the sim can measure the effect but no
source settles whether the behaviour is right. `TODO.md` T9 (`$fb` as a colour mask instead of a
plane-priority selector) is the obvious next candidate: implement Model A here, A/B Space Enemy, The
Pro Wrestling and Sekigahara against `shots-ref/`, and record the result in the TODO entry either
way. Do not merge that one on sim evidence alone — the manual and Takeda's document disagree about
what the register even does.
