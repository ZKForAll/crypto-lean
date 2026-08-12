# crypto-lean

A Lean 4 formalization of basic cryptography, developed under
[ZKForAll](https://github.com/ZKForAll).

The work follows the code-based (concrete-security) framework of Bellare and
Rogaway rather than an asymptotic one, because that style mechanizes cleanly. See
[notes/rationale.md](notes/rationale.md) for the reasoning and references.

The first milestone is the number-theoretic groundwork required by the KVAC
project (keyed-verification anonymous credentials).
