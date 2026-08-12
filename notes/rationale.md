# Rationale

## Goal

Formalize basic cryptography in Lean 4, starting with the number-theoretic
constructions required by the KVAC project (keyed-verification anonymous
credentials).

## Why a code-based (concrete-security) framework, not an asymptotic one

The two mainstream ways of writing cryptographic definitions differ sharply in
how well they mechanize.

1. **Asymptotic definitions** (Katz and Lindell style). Security is stated with
   respect to a probabilistic polynomial-time adversary, and the break
   probability must be negligible in a security parameter n. Formalizing this
   requires modeling an entire family of adversaries and a notion of
   polynomial-time computation, then quantifying over them. That machinery is
   heavy and is the main obstacle to mechanization.

2. **Concrete (exact) security as code-based games** (Bellare and Rogaway
   style). The adversary is a single oracle-calling procedure, and security is a
   numeric bound on its advantage. These definitions transcribe almost directly
   into a functional language, which is why every mature formalization uses this
   style.

We therefore adopt the Bellare and Rogaway framework as the source text and keep
Katz and Lindell only for the prose that explains why each definition takes the
shape it does.

## Source text

Bellare and Rogaway, *Introduction to Modern Cryptography* (2005 lecture-note
edition), hosted on Bellare's UCSD page,
https://cseweb.ucsd.edu/~mihir/papers/br-book.pdf. A local copy lives in the
maintainer's Dropbox.

## Prior formalizations to borrow definitional patterns from

1. Petcher and Morrisett, *The Foundational Cryptography Framework* (FCF), Coq,
   POST 2015.
2. Basin, Lochbihler, and Sefidgar, *CryptHOL*, Isabelle/HOL, Journal of
   Cryptology 2020.
3. Abate et al., *SSProve*, Rocq, CSF 2021 and later.

The Lean ecosystem for cryptography is thinner than these, so the plan is to
reuse their code-based game patterns while working in Lean 4 over Mathlib.

## First milestone

The number-theoretic groundwork outlined in Bellare and Rogaway, covering the
algebraic and computational-number-theory facts that the later KVAC
constructions depend on. Mathlib already provides much of the underlying algebra,
so the first task is to map what Bellare and Rogaway assume onto what Mathlib
already proves, and list the gaps.
