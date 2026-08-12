import Mathlib

/-!
# Number-theoretic groundwork

First milestone of crypto-lean. The aim is to assemble, on top of Mathlib, the
algebraic and computational-number-theory facts that the KVAC constructions
depend on, following the number-theory chapter of Bellare and Rogaway.

The strategy is to reuse Mathlib wherever it already proves what Bellare and
Rogaway assume, and to record the gaps here as work proceeds.
-/

namespace CryptoLean.NumberTheory

/-- A finite cyclic group of order `n` has an element of order `n`, namely a
generator. Placeholder anchor for the group-theoretic prerequisites; Mathlib
supplies the underlying results in `Mathlib.GroupTheory`. -/
example (G : Type*) [Group G] [Fintype G] [IsCyclic G] :
    ∃ g : G, ∀ x : G, x ∈ Subgroup.zpowers g := by
  obtain ⟨g, hg⟩ := IsCyclic.exists_generator (α := G)
  exact ⟨g, hg⟩

end CryptoLean.NumberTheory
