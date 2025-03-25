-- called junk to keep me looking for reasons to pull stuff out of it


-- Shockingly, this merges tables
-- i forgot what stackoverflow answer i jacked this from lol
function MergeTables(t1, t2)
	for k, v in pairs(t2) do
		if (type(v) == "table") and (type(t1[k] or false) == "table") then
			MergeTables(t1[k], t2[k])
		else
			t1[k] = v
		end
	end
	return t1
end

-- NormalMapKey makes a normal mode mapping with all the shit you 
-- always put in, takes a desc, use keymap.set if you get weird
function NormalMapKey(mapping, func, desc)
	local base_opts = {
		noremap = true,
		silent = true
	}
	local opts = MergeTables({ desc = desc }, base_opts)
	vim.keymap.set('n', mapping, func, opts)
end

-- VisualMapKey makes a visual mode mapping with all the shit you 
-- always put in, takes a desc, use keymap.set if you get weird
function VisualMapKey(mapping, func, desc)
	local base_opts = {
		noremap = true,
		silent = true
	}
	local opts = MergeTables({ desc = desc }, base_opts)
	vim.keymap.set('v', mapping, func, opts)
end

-- InsertMapKey makes an insert mode mapping with all the shit you 
-- always put in, takes a desc, use keymap.set if you get weird
function InsertMapKey(mapping, func, desc)
	local base_opts = {
		noremap = true,
		silent = true
	}
	local opts = MergeTables({ desc = desc }, base_opts)
	vim.keymap.set('i', mapping, func, opts)
end
