runtime! syntax/ruby.vim
unlet! b:current_syntax

syntax keyword inspecGroupMethod control describe
highlight link inspecGroupMethod Type

syntax keyword inspecTest it its contained
highlight link inspecTest Type

syntax keyword inspecTestSetup let subject pending contained
highlight link inspecTestSetup Statement

syntax keyword inspecProfileDSL require_controls include_controls skip_control attribute
highlight link inspecProfileDSL Statement

syntax keyword inspecControlMeta title impact desc tag ref contained
highlight link inspecControlMeta Label

syntax keyword inspecTestKeywords should should_not is_expected expect contained
highlight link inspecTestKeywords Constant

" Many of these are straight from RSpec and apply just as well to InSpec
syntax keyword inspecMatchers to to_not not_to be change eq eql equal exist have have_at_least have_at_most have_exactly include match matcher raise_error raise_exception respond_to statisfy throw_symbol when wrap_expectation
syntax match inspecMatchers /\<\(be\|have\)_\w\+\>/
highlight link inspecMatchers Function

let b:current_syntax='inspec'
