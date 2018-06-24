if filereadable('metadata.rb') || filereadable('.kitchen.yml')
  augroup InspecFiletypes
    au! BufRead,BufNewFile *_test.rb,*/controls/*.rb set syntax=inspec
  augroup END
elseif filereadable('inspec.yml')
  augroup InspecFiletypes
    au! BufRead,BufNewFile controls/*.rb set syntax=inspec
  augroup END
endif
