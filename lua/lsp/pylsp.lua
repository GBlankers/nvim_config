return {
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = {
						'E501', -- lines too long
						'E241', -- multiple spaces
						'E226', -- no space around arithmetics
					},
				}
			}
		}
	}
}
