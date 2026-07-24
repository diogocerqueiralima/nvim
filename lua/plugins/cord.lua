return {

	"vyfor/cord.nvim",
	config = function()

		require("cord").setup {

			buttons = {

				{

					label = "View Repository",
					url = function(opts)
						return opts.repo_url
					end

				}

			}

		}

	end

}
