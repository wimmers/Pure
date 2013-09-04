theory PureTrivial2
imports Main
begin

ML {*

fun trivial2 ct =
  Thm.implies_intr ct (Thm.assume ct)

*}

definition "tt \<equiv> (\<And>x. x \<longrightarrow> x)"

ML_val {* Thm.trivial (Thm.cterm_of @{theory} @{term tt})*}
ML_val {* trivial2 (Thm.cterm_of @{theory} @{term tt})*}

end
