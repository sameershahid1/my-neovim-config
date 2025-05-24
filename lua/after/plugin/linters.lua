local M = {}

function M.ruff()
    vim.fn.jobstart({ "ruff", "check", vim.fn.expand("%") }, {
        stdout_buffered = true,
        on_stdout = function(_, data)
            if not data or vim.tbl_isempty(data) then return end
            vim.fn.setqflist({}, ' ', {
                title = "Ruff",
                lines = data,
                efm = "%f:%l:%c: %m",
            })
            vim.cmd("copen")
        end,
    })
end

return M
