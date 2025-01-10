import Mathlib

open Real Set
open scoped BigOperators

-- https://app.projectnumina.ai/problems/1479dda3-5799-5e51-a5fb-18ed046e0a72
/- The Fibonacci numbers are defined recursively by the equation
\[ F_n = F_{n - 1} + F_{n - 2}\]for every integer $ n \ge 2$, with initial values $ F_0 = 0$ and $ F_1 = 1$.  Let $ G_n = F_{3n}$ be every third Fibonacci number.  There are constants $ a$ and $ b$ such that every integer $ n \ge 2$ satisfies
\[ G_n = a G_{n - 1} + b G_{n - 2}.\]Find $(a,b)$. -/
def fib (n : ℕ) : ℕ := match n with
| 0 => 0
| 1 => 1
| n + 2 => fib (n + 1) + fib n

def G (n : ℕ) := Nat.fib (3 * n)

theorem algebra_21722 :
  {((a : ℤ), (b : ℤ)) | ∀ n ≥ 2, G n = a * G (n - 1) + b * G (n - 2)} = {(4,1)} := by
  sorry


-- https://app.projectnumina.ai/problems/3e36b16b-aa45-5c44-ad52-2f1bba8d1ba2
/- One morning each member of Angela's family drank an 8-ounce mixture of coffee with milk. The amounts of coffee and milk varied from cup to cup, but were never zero. Angela drank a quarter of the total amount of milk and a sixth of the total amount of coffee. How many people are in the family? -/
theorem number_theory_23237 {n : ℕ} (hn : n > 0) (h : 8 * n = 2 * (n - 1) + 3 * (n - 1)) :
    n = 5 := by
  omega

-- https://app.projectnumina.ai/problems/c947d67d-54d3-5b90-bfbb-70e78cc3cac8
/- calculus_23480 Find the smallest positive integer solution to $\tan{19x^{\circ}}=\dfrac{\cos{96^{\circ}}+\sin{96^{\circ}}}{\cos{96^{\circ}}-\sin{96^{\circ}}}$. -/
theorem calculus_23480 :
  IsLeast {x : ℕ | 0 < x ∧ tan (19 * x * π / 180) = (cos (96 * π / 180) + sin (96 * π / 180)) / (cos (96 * π / 180) - sin (96 * π / 180))} 159 := by sorry

-- https://app.projectnumina.ai/problems/7aed2b61-328e-5403-b61b-3ab3ff640ce9
/- Suppose $a$ and $b$ are different prime numbers greater than 2. How many whole-number divisors are there for the integer $a(2a+b)-2a^{2}+ab$? -/
theorem number_theory_23088 (a b : ℕ) (ha : a.Prime) (hb : b.Prime) (hne : a ≠ b)
    (hgt : a > 2 ∧ b > 2) :
    (a * (2 * a + b) - 2 * a ^ 2 + a * b).divisors.card = 8 := by sorry
